`timescale 1ns/1ps

module compare_adaptation_lms_tb;
    logic clock    = 1'b0;
    logic reset_n  = 1'b0;
    logic adapt_en = 1'b0;
    logic [7:0] xin  = 8'h00;
    logic [7:0] dxin = 8'h00;

    logic [7:0] xout_vhdl;
    logic [7:0] dxout_vhdl;
    logic [7:0] xout_sv;
    logic [7:0] dxout_sv;

    logic [7:0] yout_vhdl;
    logic [7:0] err_vhdl;
    logic [7:0] yout_sv;
    logic [7:0] err_sv;

    int mismatch_count = 0;

    data_gen data_gen_vhdl (
        .clock (clock),
        .reset (reset_n),
        .xout  (xout_vhdl),
        .dxout (dxout_vhdl)
    );

    data_gen_sv data_gen_sv_i (
        .clock (clock),
        .reset (reset_n),
        .xout  (xout_sv),
        .dxout (dxout_sv)
    );

    tf_lms dut_vhdl (
        .xin      (xin),
        .dxin     (dxin),
        .clock    (clock),
        .err      (err_vhdl),
        .yout     (yout_vhdl),
        .adapt_en (adapt_en)
    );

    tf_lms_sv dut_sv (
        .xin      (xin),
        .dxin     (dxin),
        .clock    (clock),
        .reset    (reset_n),
        .err      (err_sv),
        .yout     (yout_sv),
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

    task automatic check8(
        input string      tag,
        input logic [7:0] expected,
        input logic [7:0] actual
    );
        if (expected !== actual) begin
            mismatch_count++;
            $display(
                "%s mismatch at %0t: vhdl=%h sv=%h",
                tag,
                $time,
                expected,
                actual
            );
        end
    endtask

    task automatic check_data_gen(input string phase);
        begin
            check8({phase, ".xout"}, xout_vhdl, xout_sv);
            check8({phase, ".dxout"}, dxout_vhdl, dxout_sv);
        end
    endtask

    task automatic check_tf_lms(input string phase);
        begin
            check8({phase, ".yout"}, yout_vhdl, yout_sv);
            check8({phase, ".err"},  err_vhdl,  err_sv);
        end
    endtask

    initial begin
        logic [7:0] prng_x;
        logic [7:0] prng_d;
        int cycle;

        prng_x = 8'hA5;
        prng_d = 8'h3C;

        repeat (4) begin
            @(posedge clock);
            #1ps;
            check_data_gen("data_gen.reset_low");
            check_tf_lms("tf_lms.reset_low");
        end

        reset_n = 1'b1;
        repeat (20) begin
            @(posedge clock);
            #1ps;
            check_data_gen("data_gen.reset_high");
        end

        reset_n = 1'b0;
        repeat (3) begin
            @(posedge clock);
            #1ps;
            check_data_gen("data_gen.reset_pulse");
            check_tf_lms("tf_lms.reset_pulse");
        end

        reset_n = 1'b1;
        repeat (12) begin
            @(posedge clock);
            #1ps;
            check_data_gen("data_gen.after_pulse");
            check_tf_lms("tf_lms.after_pulse");
        end

        adapt_en = 1'b0;
        for (cycle = 0; cycle < 30; cycle++) begin
            @(negedge clock);
            xin     = app_xin(cycle);
            dxin    = app_dxin(cycle);
            adapt_en = 1'b0;

            @(posedge clock);
            #1ps;
            check_tf_lms("tf_lms.app_warmup");
        end

        adapt_en = 1'b1;
        for (cycle = 30; cycle < 230; cycle++) begin
            @(negedge clock);
            xin  = app_xin(cycle);
            dxin = app_dxin(cycle);
            if (cycle == 175) begin
                adapt_en = 1'b0;
            end else if (cycle == 180) begin
                adapt_en = 1'b1;
            end

            @(posedge clock);
            #1ps;
            check_tf_lms("tf_lms.app_run");
        end

        adapt_en = 1'b1;
        for (cycle = 0; cycle < 256; cycle++) begin
            @(negedge clock);
            prng_x = next_lfsr(prng_x);
            prng_d = next_lfsr(prng_d);
            xin    = prng_x;
            dxin   = prng_d;

            if (cycle == 80) begin
                adapt_en = 1'b0;
            end else if (cycle == 96) begin
                adapt_en = 1'b1;
            end

            @(posedge clock);
            #1ps;
            check_tf_lms("tf_lms.prng");
        end

        if (mismatch_count == 0) begin
            $display("PASS: VHDL and SystemVerilog models matched on all checks.");
            $finish;
        end

        $fatal(1, "FAIL: %0d mismatches found.", mismatch_count);
    end
endmodule
