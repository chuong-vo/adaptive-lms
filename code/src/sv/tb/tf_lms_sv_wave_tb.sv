`timescale 1ns/1ps

module tf_lms_sv_wave_tb;
    logic       clock    = 1'b0;
    logic       reset_n  = 1'b0;
    logic       adapt_en = 1'b0;
    logic [7:0] xin      = 8'h00;
    logic [7:0] dxin     = 8'h00;

    logic [7:0] yout;
    logic [7:0] err;

    tf_lms_sv dut (
        .xin      (xin),
        .dxin     (dxin),
        .clock    (clock),
        .reset    (reset_n),
        .err      (err),
        .yout     (yout),
        .adapt_en (adapt_en)
    );

    always #10ns clock = ~clock;

    function automatic logic [7:0] app_xin(input int cycle);
        if (cycle == 0) begin
            app_xin = 8'hF3;
        end else if (cycle == 1) begin
            app_xin = 8'h26;
        end else if ((cycle % 2) == 0) begin
            app_xin = 8'hA6;
        end else begin
            app_xin = 8'h5A;
        end
    endfunction

    function automatic logic [7:0] app_dxin(input int cycle);
        if ((cycle % 2) == 0) begin
            app_dxin = 8'h40;
        end else begin
            app_dxin = 8'hC0;
        end
    endfunction

    function automatic logic [7:0] next_lfsr(input logic [7:0] state);
        logic feedback;
        begin
            feedback = state[7] ^ state[5] ^ state[4] ^ state[3];
            next_lfsr = {state[6:0], feedback};
        end
    endfunction

    initial begin
        logic [7:0] prng_x;
        logic [7:0] prng_d;
        int cycle;

        prng_x = 8'hA5;
        prng_d = 8'h3C;

        repeat (4) begin
            @(posedge clock);
            #1ps;
            if ((yout !== 8'h00) || (err !== 8'h00)) begin
                $fatal(1, "Reset failed at %0t: yout=%h err=%h", $time, yout, err);
            end
        end

        reset_n = 1'b1;

        // Warm-up with adaptation disabled so the delay lines fill first.
        adapt_en = 1'b0;
        for (cycle = 0; cycle < 30; cycle++) begin
            @(negedge clock);
            xin     = app_xin(cycle);
            dxin    = app_dxin(cycle);
            adapt_en = 1'b0;
        end

        // Main adaptation run with a brief disable/enable pulse.
        adapt_en = 1'b1;
        for (cycle = 30; cycle < 230; cycle++) begin
            @(negedge clock);
            xin  = app_xin(cycle);
            dxin = app_dxin(cycle);

            if (cycle == 170) begin
                adapt_en = 1'b0;
            end else if (cycle == 182) begin
                adapt_en = 1'b1;
            end
        end

        // Pseudo-random phase to make waveform inspection less repetitive.
        adapt_en = 1'b1;
        for (cycle = 0; cycle < 128; cycle++) begin
            @(negedge clock);
            prng_x = next_lfsr(prng_x);
            prng_d = next_lfsr(prng_d);
            xin    = prng_x;
            dxin   = prng_d;

            if (cycle == 48) begin
                adapt_en = 1'b0;
            end else if (cycle == 64) begin
                adapt_en = 1'b1;
            end
        end

        repeat (10) @(posedge clock);
        $finish;
    end
endmodule
