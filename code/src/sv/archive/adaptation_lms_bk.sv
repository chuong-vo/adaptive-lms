module add16 (
    input  logic [15:0] d1_in,
    input  logic [15:0] d2_in,
    output logic [15:0] d_out
);
    assign d_out = d1_in + d2_in;
endmodule

module bin_to_7seg (
    input  logic [3:0] din,
    output logic [7:0] dis_out
);
    always_comb begin
        case (din)
            4'b0000: dis_out = 8'b00000010;
            4'b0001: dis_out = 8'b10011110;
            4'b0010: dis_out = 8'b00100100;
            4'b0011: dis_out = 8'b00001100;
            4'b0100: dis_out = 8'b10011000;
            4'b0101: dis_out = 8'b01001000;
            4'b0110: dis_out = 8'b01000000;
            4'b0111: dis_out = 8'b00011110;
            4'b1000: dis_out = 8'b00000000;
            4'b1001: dis_out = 8'b00011000;
            4'b1010: dis_out = 8'b00010000;
            4'b1011: dis_out = 8'b11000000;
            4'b1100: dis_out = 8'b01100010;
            4'b1101: dis_out = 8'b10000100;
            4'b1110: dis_out = 8'b01100000;
            default: dis_out = 8'b01110000;
        endcase
    end
endmodule

module ch_filt_tap (
    input  logic [7:0] din,
    output logic [7:0] dout,
    input  logic [7:0] c1_in,
    input  logic [7:0] c2_in,
    input  logic [7:0] add_in,
    output logic [7:0] add_out,
    input  logic       clock
);
    logic [7:0] mul_res;
    always_ff @(posedge clock) begin
        dout <= din;
    end
    assign mul_res = (din == 8'b11000000) ? c1_in : c2_in;
    assign add_out = add_in + mul_res;
endmodule

module clock_div (
    input  logic reset,
    input  logic in_clk,
    output logic out1,
    output logic out2
);
    logic [19:0] ct;
    always_ff @(posedge in_clk or negedge reset) begin
        if (!reset)
            ct <= 20'b0;
        else
            ct <= ct + 1'b1;
    end
    assign out1 = ct[5];
    assign out2 = ct[19];
endmodule

module const_ch_filt (
    input  logic clock,
    input  logic [7:0] data_in,
    output logic [7:0] shifted_data_out,
    output logic [7:0] filtered_data_out
);
    logic [7:0] t_data_out1, t_data_out2;
    logic [7:0] t_res_out1, t_res_out2;

    ch_filt_tap tap1 (.din(data_in), .dout(t_data_out1), .c1_in(8'b11110011), .c2_in(8'b00001101), .add_in(8'h00), .add_out(t_res_out1), .clock(clock));
    ch_filt_tap tap2 (.din(t_data_out1), .dout(t_data_out2), .c1_in(8'b00011010), .c2_in(8'b11100110), .add_in(t_res_out1), .add_out(t_res_out2), .clock(clock));
    ch_filt_tap tap3 (.din(t_data_out2), .dout(shifted_data_out), .c1_in(8'b11001101), .c2_in(8'b00110011), .add_in(t_res_out2), .add_out(filtered_data_out), .clock(clock));
endmodule

module unit_calc (
    input  logic [7:0] x_in,
    input  logic [7:0] x_N_in,
    input  logic [7:0] ue_in,
    input  logic [7:0] y_in,
    output logic [7:0] x_out,
    output logic [7:0] x_N_out,
    output logic [7:0] ue_out,
    output logic [7:0] y_out,
    input  logic       clock
);
    logic [7:0] mul_res;
    always_ff @(posedge clock) begin
        x_out   <= x_in;
        x_N_out <= x_N_in;
        ue_out  <= ue_in;
    end
    assign mul_res = (x_N_in == 8'b11000000) ? (x_in == 8'b11000000 ? ~ue_in + 1'b1 : ue_in) : 8'b0;
    assign y_out = y_in + mul_res;
endmodule

module core_filt (
    input  logic [7:0] x_in,
    input  logic [7:0] x_N_in,
    input  logic [7:0] ue_in,
    input  logic       clock,
    output logic [7:0] y_out
);
    logic [7:0] x_o [1:4], xN_o [1:4], ue_o [1:4], y_o [1:4];

    unit_calc tap1 (.x_in(x_in),     .x_N_in(x_N_in),    .ue_in(ue_in),    .y_in(8'h00), .x_out(x_o[1]), .x_N_out(xN_o[1]), .ue_out(ue_o[1]), .y_out(y_o[1]), .clock(clock));
    unit_calc tap2 (.x_in(x_o[1]),  .x_N_in(xN_o[1]),   .ue_in(ue_o[1]),  .y_in(y_o[1]), .x_out(x_o[2]), .x_N_out(xN_o[2]), .ue_out(ue_o[2]), .y_out(y_o[2]), .clock(clock));
    unit_calc tap3 (.x_in(x_o[2]),  .x_N_in(xN_o[2]),   .ue_in(ue_o[2]),  .y_in(y_o[2]), .x_out(x_o[3]), .x_N_out(xN_o[3]), .ue_out(ue_o[3]), .y_out(y_o[3]), .clock(clock));
    unit_calc tap4 (.x_in(x_o[3]),  .x_N_in(xN_o[3]),   .ue_in(ue_o[3]),  .y_in(y_o[3]), .x_out(x_o[4]), .x_N_out(xN_o[4]), .ue_out(ue_o[4]), .y_out(y_o[4]), .clock(clock));
    unit_calc tap5 (.x_in(x_o[4]),  .x_N_in(xN_o[4]),   .ue_in(ue_o[4]),  .y_in(y_o[4]), .x_out(),       .x_N_out(),        .ue_out(),        .y_out(y_out),  .clock(clock));
endmodule

module data_gen (
    input  logic clock,
    input  logic reset,
    output logic [7:0] xout,
    output logic [7:0] dxout
);
    logic [7:0] data;
    always_ff @(posedge clock or negedge reset) begin
        if (!reset) data <= 8'b01000000;
        else        data <= (data == 8'b01000000) ? 8'b11000000 : 8'b01000000;
    end
    const_ch_filt channel (.clock(clock), .data_in(data), .shifted_data_out(dxout), .filtered_data_out(xout));
endmodule

module u_scaling (
    input  logic [15:0] d_in,
    output logic [15:0] d_out
);
    assign d_out = {{4{d_in[15]}}, d_in[15:4]};
endmodule

module ROC (output logic O);
    parameter WIDTH = 100000;
    initial begin
        O = 1'b1;
        #(WIDTH * 1ps);
        O = 1'b0;
    end
endmodule

module TOC (output logic O);
    initial begin
        O = 1'b1;
        #0;
        O = 1'b0;
    end
endmodule

`timescale 1ps/1ps

module top_tb;

    logic clk;
    logic rst_n;
    logic [7:0] x_out;
    logic [7:0] dx_out;

    initial begin
        clk = 0;
        forever #1ps clk = ~clk;
    end

    initial begin
        rst_n = 0;          
        #20ps;              
        @ (negedge clk);
        rst_n = 1;          
        
        #1000ps;
        $display("Simulation Finished!");
        $finish;
    end

    data_gen dut (
        .clock (clk),
        .reset (rst_n),
        .xout  (x_out),
        .dxout (dx_out)
    );

    initial begin
        $dumpfile("simulation.vcd");
        $dumpvars(0, top_tb);
        
        $monitor("Time: %0t | Reset: %b | DX_OUT: %h | X_OUT: %h", 
                 $time, rst_n, dx_out, x_out);
    end

endmodule