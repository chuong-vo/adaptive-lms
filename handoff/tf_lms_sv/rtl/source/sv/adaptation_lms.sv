`timescale 1ns/1ps


module add16_sv (
    input  logic [15:0] d1_in,
    input  logic [15:0] d2_in,
    output logic [15:0] d_out
);
    assign d_out = d1_in + d2_in;
endmodule

module bin_to_7seg_sv (
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

module mul8_sv (
    input  logic [7:0]  d1_in,
    input  logic [7:0]  d2_in,
    output logic [15:0] d_out
);
    logic signed [15:0] product;

    always_comb begin
        product = $signed(d1_in) * $signed(d2_in);
    end

    assign d_out = $unsigned(product);
endmodule

module truncation_sv (
    input  logic [15:0] d_in,
    output logic [7:0]  d_out
);
    assign d_out = $unsigned($signed(d_in) >>> 6);
endmodule

module saturation_sv (
    input  logic [15:0] d_in,
    output logic [15:0] d_out
);
    localparam logic signed [15:0] SAT_POS = 16'sh1000;
    localparam logic signed [15:0] SAT_NEG = -16'sh1000;
    logic signed [15:0] d_in_s;

    always_comb begin
        d_in_s = $signed(d_in);
        if (d_in_s > SAT_POS) begin
            d_out = 16'h1000;
        end else if (d_in_s < SAT_NEG) begin
            d_out = 16'hF000;
        end else begin
            d_out = d_in;
        end
    end
endmodule

module shift_1d_16_sv (
    input  logic [15:0] xin,
    output logic [15:0] xout,
    input  logic        clock,
    input  logic        reset
);
    logic [15:0] shift_reg;

    always_ff @(posedge clock or negedge reset) begin
        if (!reset) begin
            shift_reg <= '0;
        end else begin
            shift_reg <= xin;
        end
    end

    assign xout = shift_reg;
endmodule

module shift_20d_sv (
    input  logic [7:0] xin,
    output logic [7:0] xout,
    input  logic       clock,
    input  logic       reset
);
    logic [159:0] shift_reg;

    always_ff @(posedge clock or negedge reset) begin
        if (!reset) begin
            shift_reg <= '0;
        end else begin
            shift_reg <= {xin, shift_reg[159:8]};
        end
    end

    assign xout = shift_reg[7:0];
endmodule

module shift_21d_sv (
    input  logic [7:0] xin,
    output logic [7:0] x_N_out,
    output logic [7:0] x_1_out,
    input  logic       clock,
    input  logic       reset
);
    logic [167:0] shift_reg;

    always_ff @(posedge clock or negedge reset) begin
        if (!reset) begin
            shift_reg <= '0;
        end else begin
            shift_reg <= {xin, shift_reg[167:8]};
        end
    end

    assign x_N_out = shift_reg[7:0];
    assign x_1_out = shift_reg[167:160];
endmodule

module u_scaling_sv (
    input  logic [15:0] d_in,
    output logic [15:0] d_out,
    input  logic        clock,
    input  logic        reset
);
    logic [15:0] d_out_reg;

    always_ff @(posedge clock or negedge reset) begin
        if (!reset) begin
            d_out_reg <= '0;
        end else begin
            d_out_reg <= $unsigned($signed(d_in) >>> 4);
        end
    end

    assign d_out = d_out_reg;
endmodule

module ch_filt_tap_sv (
    input  logic [7:0] din,
    output logic [7:0] dout,
    input  logic [7:0] c1_in,
    input  logic [7:0] c2_in,
    input  logic [7:0] add_in,
    output logic [7:0] add_out,
    input  logic       clock,
    input  logic       reset
);
    logic [7:0] dout_reg;
    logic [7:0] mul_res;

    always_ff @(posedge clock or negedge reset) begin
        if (!reset) begin
            dout_reg <= '0;
        end else begin
            dout_reg <= din;
        end
    end

    always_comb begin
        case (din)
            8'b11000000: mul_res = c1_in;
            default:     mul_res = c2_in;
        endcase
    end

    assign dout    = dout_reg;
    assign add_out = add_in + mul_res;
endmodule

module const_ch_filt_sv (
    input  logic       reset,
    input  logic       clock,
    input  logic [7:0] data_in,
    output logic [7:0] shifted_data_out,
    output logic [7:0] filtered_data_out
);
    logic [7:0] t_data_out1;
    logic [7:0] t_data_out2;
    logic [7:0] t_res_out1;
    logic [7:0] t_res_out2;

    ch_filt_tap_sv tap1 (
        .din     (data_in),
        .dout    (t_data_out1),
        .c1_in   (8'b11110011),
        .c2_in   (8'b00001101),
        .add_in  (8'b00000000),
        .add_out (t_res_out1),
        .clock   (clock),
        .reset   (reset)
    );

    ch_filt_tap_sv tap2 (
        .din     (t_data_out1),
        .dout    (t_data_out2),
        .c1_in   (8'b00011010),
        .c2_in   (8'b11100110),
        .add_in  (t_res_out1),
        .add_out (t_res_out2),
        .clock   (clock),
        .reset   (reset)
    );

    ch_filt_tap_sv tap3 (
        .din     (t_data_out2),
        .dout    (shifted_data_out),
        .c1_in   (8'b11001101),
        .c2_in   (8'b00110011),
        .add_in  (t_res_out2),
        .add_out (filtered_data_out),
        .clock   (clock),
        .reset   (reset)
    );
endmodule

module data_gen_sv (
    input  logic       clock,
    input  logic       reset,
    output logic [7:0] xout,
    output logic [7:0] dxout
);
    logic [7:0] data;

    always_ff @(posedge clock or negedge reset) begin
        if (!reset) begin
            data <= 8'b01000000;
        end else if (data == 8'b01000000) begin
            data <= 8'b11000000;
        end else begin
            data <= 8'b01000000;
        end
    end

    const_ch_filt_sv channel (
        .reset             (reset),
        .clock             (clock),
        .data_in           (data),
        .shifted_data_out  (dxout),
        .filtered_data_out (xout)
    );
endmodule

module clock_div_sv (
    input  logic reset,
    input  logic in_clk,
    output logic out1,
    output logic out2
);
    logic [19:0] ct;

    always_ff @(posedge in_clk or negedge reset) begin
        if (!reset) begin
            ct <= '0;
        end else begin
            ct <= ct + 20'd1;
        end
    end

    assign out1 = ct[5];
    assign out2 = ct[19];
endmodule

module unit_calc_sv (
    input  logic [7:0] x_in,
    input  logic [7:0] x_N_in,
    input  logic [7:0] ue_in,
    input  logic [7:0] y_in,
    output logic [7:0] x_out,
    output logic [7:0] x_N_out,
    output logic [7:0] ue_out,
    output logic [7:0] y_out,
    input  logic       clock,
    input  logic       reset
);
    logic [31:0] shiftx;
    logic [31:0] shiftxn;
    logic [23:0] shiftue;
    logic [15:0] shifty;

    logic [7:0]  coeff8;
    logic [15:0] coeff16;
    logic [15:0] xnin_ue;
    logic [15:0] xnin_ue_scaled;
    logic [15:0] new_coeff_true;
    logic [15:0] delayed_new_coeff_true;
    logic [15:0] y_out16;
    logic [7:0]  y_out8;

    always_ff @(posedge clock or negedge reset) begin
        if (!reset) begin
            shiftx  <= '0;
            shiftxn <= '0;
            shiftue <= '0;
            shifty  <= '0;
        end else begin
            shiftx  <= {x_in,   shiftx[31:8]};
            shiftxn <= {x_N_in, shiftxn[31:8]};
            shiftue <= {ue_in,  shiftue[23:8]};
            shifty  <= {y_in,   shifty[15:8]};
        end
    end

    assign x_out   = shiftx[7:0];
    assign x_N_out = shiftxn[7:0];
    assign ue_out  = shiftue[7:0];
    assign y_out   = y_out8 + shifty[7:0];

    mul8_sv mul_xnin_ue (
        .d1_in (x_N_in),
        .d2_in (ue_in),
        .d_out (xnin_ue)
    );

    u_scaling_sv u1 (
        .d_in  (xnin_ue),
        .d_out (xnin_ue_scaled),
        .clock (clock),
        .reset (reset)
    );

    add16_sv add1 (
        .d1_in (xnin_ue_scaled),
        .d2_in (coeff16),
        .d_out (new_coeff_true)
    );

    shift_1d_16_sv delay_2 (
        .xin   (new_coeff_true),
        .xout  (delayed_new_coeff_true),
        .clock (clock),
        .reset (reset)
    );

    saturation_sv sat_1 (
        .d_in  (delayed_new_coeff_true),
        .d_out (coeff16)
    );

    truncation_sv trunc_1 (
        .d_in  (coeff16),
        .d_out (coeff8)
    );

    mul8_sv mul_coeff_x_in (
        .d1_in (coeff8),
        .d2_in (shiftx[31:24]),
        .d_out (y_out16)
    );

    truncation_sv trunc_2 (
        .d_in  (y_out16),
        .d_out (y_out8)
    );
endmodule

module core_filt_sv (
    input  logic [7:0] x_in,
    input  logic [7:0] x_N_in,
    input  logic [7:0] ue_in,
    input  logic       clock,
    input  logic       reset,
    output logic [7:0] y_out
);
    logic [7:0] x_out_t1;
    logic [7:0] x_out_t2;
    logic [7:0] x_out_t3;
    logic [7:0] x_out_t4;

    logic [7:0] x_N_out_t1;
    logic [7:0] x_N_out_t2;
    logic [7:0] x_N_out_t3;
    logic [7:0] x_N_out_t4;

    logic [7:0] ue_out_t1;
    logic [7:0] ue_out_t2;
    logic [7:0] ue_out_t3;
    logic [7:0] ue_out_t4;

    logic [7:0] y_out_t1;
    logic [7:0] y_out_t2;
    logic [7:0] y_out_t3;
    logic [7:0] y_out_t4;
    logic [7:0] y_seed_t0;

    assign y_seed_t0 = x_in ^ x_in;

    unit_calc_sv tap1 (
        .x_in    (x_in),
        .x_N_in  (x_N_in),
        .ue_in   (ue_in),
        .y_in    (y_seed_t0),
        .x_out   (x_out_t1),
        .x_N_out (x_N_out_t1),
        .ue_out  (ue_out_t1),
        .y_out   (y_out_t1),
        .clock   (clock),
        .reset   (reset)
    );

    unit_calc_sv tap2 (
        .x_in    (x_out_t1),
        .x_N_in  (x_N_out_t1),
        .ue_in   (ue_out_t1),
        .y_in    (y_out_t1),
        .x_out   (x_out_t2),
        .x_N_out (x_N_out_t2),
        .ue_out  (ue_out_t2),
        .y_out   (y_out_t2),
        .clock   (clock),
        .reset   (reset)
    );

    unit_calc_sv tap3 (
        .x_in    (x_out_t2),
        .x_N_in  (x_N_out_t2),
        .ue_in   (ue_out_t2),
        .y_in    (y_out_t2),
        .x_out   (x_out_t3),
        .x_N_out (x_N_out_t3),
        .ue_out  (ue_out_t3),
        .y_out   (y_out_t3),
        .clock   (clock),
        .reset   (reset)
    );

    unit_calc_sv tap4 (
        .x_in    (x_out_t3),
        .x_N_in  (x_N_out_t3),
        .ue_in   (ue_out_t3),
        .y_in    (y_out_t3),
        .x_out   (x_out_t4),
        .x_N_out (x_N_out_t4),
        .ue_out  (ue_out_t4),
        .y_out   (y_out_t4),
        .clock   (clock),
        .reset   (reset)
    );

    unit_calc_sv tap5 (
        .x_in    (x_out_t4),
        .x_N_in  (x_N_out_t4),
        .ue_in   (ue_out_t4),
        .y_in    (y_out_t4),
        .x_out   (),
        .x_N_out (),
        .ue_out  (),
        .y_out   (y_out),
        .clock   (clock),
        .reset   (reset)
    );
endmodule

module tf_lms_sv (
    input  logic [7:0] xin,
    input  logic [7:0] dxin,
    input  logic       clock,
    input  logic       reset,
    output logic [7:0] err,
    output logic [7:0] yout,
    input  logic       adapt_en
);
    logic [7:0] e;
    logic [7:0] e_t;
    logic [7:0] y_o;
    logic [7:0] x_1;
    logic [7:0] x_N;

    always_comb begin
        if (!reset) begin
            e = '0;
        end else if (adapt_en) begin
            e = y_o - e_t;
        end else begin
            e = '0;
        end
    end

    assign err  = e;
    assign yout = reset ? y_o : '0;

    shift_20d_sv shift_1 (
        .xin   (dxin),
        .xout  (e_t),
        .clock (clock),
        .reset (reset)
    );

    shift_21d_sv shift_2 (
        .xin     (xin),
        .x_N_out (x_N),
        .x_1_out (x_1),
        .clock   (clock),
        .reset   (reset)
    );

    core_filt_sv cflt (
        .x_in   (x_1),
        .x_N_in (x_N),
        .ue_in  (e),
        .clock  (clock),
        .reset  (reset),
        .y_out  (y_o)
    );
endmodule
