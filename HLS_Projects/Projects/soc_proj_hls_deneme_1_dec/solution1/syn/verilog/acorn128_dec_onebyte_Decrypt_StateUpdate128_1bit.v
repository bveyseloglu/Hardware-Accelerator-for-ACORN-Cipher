// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module acorn128_dec_onebyte_Decrypt_StateUpdate128_1bit (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        state_address0,
        state_ce0,
        state_we0,
        state_d0,
        state_q0,
        ciphertextbit,
        ca,
        cb
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 23'b1;
parameter    ap_ST_st2_fsm_1 = 23'b10;
parameter    ap_ST_st3_fsm_2 = 23'b100;
parameter    ap_ST_st4_fsm_3 = 23'b1000;
parameter    ap_ST_st5_fsm_4 = 23'b10000;
parameter    ap_ST_st6_fsm_5 = 23'b100000;
parameter    ap_ST_st7_fsm_6 = 23'b1000000;
parameter    ap_ST_st8_fsm_7 = 23'b10000000;
parameter    ap_ST_st9_fsm_8 = 23'b100000000;
parameter    ap_ST_st10_fsm_9 = 23'b1000000000;
parameter    ap_ST_st11_fsm_10 = 23'b10000000000;
parameter    ap_ST_st12_fsm_11 = 23'b100000000000;
parameter    ap_ST_st13_fsm_12 = 23'b1000000000000;
parameter    ap_ST_st14_fsm_13 = 23'b10000000000000;
parameter    ap_ST_st15_fsm_14 = 23'b100000000000000;
parameter    ap_ST_st16_fsm_15 = 23'b1000000000000000;
parameter    ap_ST_st17_fsm_16 = 23'b10000000000000000;
parameter    ap_ST_st18_fsm_17 = 23'b100000000000000000;
parameter    ap_ST_st19_fsm_18 = 23'b1000000000000000000;
parameter    ap_ST_st20_fsm_19 = 23'b10000000000000000000;
parameter    ap_ST_st21_fsm_20 = 23'b100000000000000000000;
parameter    ap_ST_st22_fsm_21 = 23'b1000000000000000000000;
parameter    ap_ST_st23_fsm_22 = 23'b10000000000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv32_E = 32'b1110;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_14 = 32'b10100;
parameter    ap_const_lv32_15 = 32'b10101;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv9_0 = 9'b000000000;
parameter    ap_const_lv32_16 = 32'b10110;
parameter    ap_const_lv64_EB = 64'b11101011;
parameter    ap_const_lv64_E6 = 64'b11100110;
parameter    ap_const_lv64_121 = 64'b100100001;
parameter    ap_const_lv64_C4 = 64'b11000100;
parameter    ap_const_lv64_C1 = 64'b11000001;
parameter    ap_const_lv64_A0 = 64'b10100000;
parameter    ap_const_lv64_9A = 64'b10011010;
parameter    ap_const_lv64_6F = 64'b1101111;
parameter    ap_const_lv64_6B = 64'b1101011;
parameter    ap_const_lv64_42 = 64'b1000010;
parameter    ap_const_lv64_3D = 64'b111101;
parameter    ap_const_lv64_17 = 64'b10111;
parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv64_C = 64'b1100;
parameter    ap_const_lv64_F4 = 64'b11110100;
parameter    ap_const_lv64_124 = 64'b100100100;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_11 = 32'b10001;
parameter    ap_const_lv32_12 = 32'b10010;
parameter    ap_const_lv32_13 = 32'b10011;
parameter    ap_const_lv8_1 = 8'b1;
parameter    ap_const_lv9_124 = 9'b100100100;
parameter    ap_const_lv9_1 = 9'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] state_address0;
output   state_ce0;
output   state_we0;
output  [7:0] state_d0;
input  [7:0] state_q0;
input  [0:0] ciphertextbit;
input  [0:0] ca;
input  [0:0] cb;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[8:0] state_address0;
reg state_ce0;
reg state_we0;
reg[7:0] state_d0;
(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm = 23'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_41;
reg   [7:0] reg_256;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_62;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_bdd_69;
reg    ap_sig_cseq_ST_st12_fsm_11;
reg    ap_sig_bdd_77;
reg    ap_sig_cseq_ST_st14_fsm_13;
reg    ap_sig_bdd_85;
reg   [7:0] reg_260;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_94;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_bdd_101;
reg   [7:0] reg_264;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_bdd_110;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_bdd_117;
reg    ap_sig_cseq_ST_st13_fsm_12;
reg    ap_sig_bdd_125;
reg   [7:0] state_load_reg_499;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_139;
wire   [8:0] state_addr_2_gep_fu_91_p3;
reg   [8:0] state_addr_2_reg_505;
wire   [8:0] state_addr_3_gep_fu_100_p3;
reg   [8:0] state_addr_3_reg_510;
wire   [0:0] tmp_24_fu_274_p1;
reg   [0:0] tmp_24_reg_520;
wire   [8:0] state_addr_5_gep_fu_118_p3;
reg   [8:0] state_addr_5_reg_525;
wire   [7:0] tmp_s_fu_283_p2;
reg   [7:0] tmp_s_reg_530;
wire   [7:0] x_assign_1_fu_289_p2;
reg   [7:0] x_assign_1_reg_535;
wire   [8:0] state_addr_7_gep_fu_136_p3;
reg   [8:0] state_addr_7_reg_547;
reg   [7:0] state_load_7_reg_557;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_bdd_167;
wire   [8:0] state_addr_9_gep_fu_154_p3;
reg   [8:0] state_addr_9_reg_563;
reg   [7:0] state_load_8_reg_568;
reg    ap_sig_cseq_ST_st10_fsm_9;
reg    ap_sig_bdd_177;
reg   [7:0] state_load_9_reg_579;
reg    ap_sig_cseq_ST_st11_fsm_10;
reg    ap_sig_bdd_187;
wire   [8:0] state_addr_11_gep_fu_172_p3;
reg   [8:0] state_addr_11_reg_585;
wire   [7:0] tmp3_fu_295_p2;
reg   [7:0] tmp3_reg_590;
wire   [7:0] tmp_3_fu_306_p2;
reg   [7:0] tmp_3_reg_595;
wire   [7:0] tmp_5_fu_316_p2;
reg   [7:0] tmp_5_reg_601;
wire   [7:0] tmp7_fu_335_p2;
reg   [7:0] tmp7_reg_612;
wire   [7:0] grp_fu_268_p2;
reg   [7:0] tmp6_reg_622;
wire   [7:0] z_assign_fu_341_p2;
reg   [7:0] z_assign_reg_632;
reg    ap_sig_cseq_ST_st15_fsm_14;
reg    ap_sig_bdd_214;
wire   [7:0] y_assign_fu_346_p2;
reg   [7:0] y_assign_reg_637;
wire   [7:0] tmp_i_i_fu_384_p2;
reg   [7:0] tmp_i_i_reg_642;
wire   [0:0] tmp_25_fu_390_p1;
reg   [0:0] tmp_25_reg_647;
wire   [7:0] tmp_1_i_i_fu_400_p2;
reg   [7:0] tmp_1_i_i_reg_657;
reg    ap_sig_cseq_ST_st16_fsm_15;
reg    ap_sig_bdd_231;
wire   [7:0] tmp_2_i_i_fu_406_p2;
reg   [7:0] tmp_2_i_i_reg_662;
wire   [7:0] ciphertextbit_cast_fu_412_p1;
reg   [7:0] ciphertextbit_cast_reg_667;
reg    ap_sig_cseq_ST_st21_fsm_20;
reg    ap_sig_bdd_242;
wire   [0:0] tmp_1_i_fu_416_p2;
reg   [0:0] tmp_1_i_reg_672;
wire   [0:0] tmp_2_i_fu_421_p2;
reg   [0:0] tmp_2_i_reg_677;
wire   [8:0] j_1_fu_432_p2;
reg   [8:0] j_1_reg_685;
reg    ap_sig_cseq_ST_st22_fsm_21;
reg    ap_sig_bdd_255;
wire   [0:0] exitcond_fu_426_p2;
reg   [8:0] j_reg_243;
reg    ap_sig_cseq_ST_st23_fsm_22;
reg    ap_sig_bdd_271;
wire   [63:0] tmp_6_fu_438_p1;
wire   [63:0] tmp_7_fu_489_p1;
reg    ap_sig_cseq_ST_st17_fsm_16;
reg    ap_sig_bdd_317;
reg    ap_sig_cseq_ST_st18_fsm_17;
reg    ap_sig_bdd_325;
reg    ap_sig_cseq_ST_st19_fsm_18;
reg    ap_sig_bdd_333;
reg    ap_sig_cseq_ST_st20_fsm_19;
reg    ap_sig_bdd_341;
wire   [7:0] tmp_4_fu_482_p2;
wire   [7:0] tmp1_fu_278_p2;
wire   [7:0] tmp4_fu_301_p2;
wire   [7:0] tmp5_fu_311_p2;
wire   [7:0] tmp_4_i_i_i_fu_325_p2;
wire   [7:0] tmp_i9_i_i_fu_321_p2;
wire   [7:0] tmp_5_i_i_i_fu_330_p2;
wire   [7:0] tmp_i_i_i_fu_351_p2;
wire   [7:0] tmp_1_i_i_i_fu_357_p2;
wire   [7:0] tmp_fu_368_p2;
wire   [7:0] tmp_2_i_i_i_fu_362_p2;
wire   [7:0] tmp8_fu_380_p2;
wire   [7:0] tmp9_fu_374_p2;
wire   [7:0] tmp_i_i_2_fu_394_p2;
wire   [0:0] tmp11_fu_447_p2;
wire   [7:0] tmp15_cast_fu_451_p1;
wire   [7:0] tmp10_fu_443_p2;
wire   [7:0] tmp14_fu_465_p2;
wire   [7:0] tmp15_fu_471_p2;
wire   [7:0] tmp13_fu_461_p2;
wire   [7:0] tmp16_fu_476_p2;
wire   [7:0] tmp12_fu_455_p2;
reg   [22:0] ap_NS_fsm;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st23_fsm_22)) begin
        j_reg_243 <= j_1_reg_685;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st21_fsm_20)) begin
        j_reg_243 <= ap_const_lv9_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st21_fsm_20)) begin
        ciphertextbit_cast_reg_667[0] <= ciphertextbit_cast_fu_412_p1[0];
        tmp_1_i_reg_672 <= tmp_1_i_fu_416_p2;
        tmp_2_i_reg_677 <= tmp_2_i_fu_421_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st22_fsm_21)) begin
        j_1_reg_685 <= j_1_fu_432_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) | (ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5) | (ap_const_logic_1 == ap_sig_cseq_ST_st12_fsm_11) | (ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13))) begin
        reg_256 <= state_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) | (ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6))) begin
        reg_260 <= state_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) | (ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7) | (ap_const_logic_1 == ap_sig_cseq_ST_st13_fsm_12))) begin
        reg_264 <= state_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        state_load_7_reg_557 <= state_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        state_load_8_reg_568 <= state_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        state_load_9_reg_579 <= state_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        state_load_reg_499 <= state_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st12_fsm_11)) begin
        tmp3_reg_590 <= tmp3_fu_295_p2;
        tmp7_reg_612 <= tmp7_fu_335_p2;
        tmp_3_reg_595 <= tmp_3_fu_306_p2;
        tmp_5_reg_601 <= tmp_5_fu_316_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        tmp6_reg_622 <= grp_fu_268_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st16_fsm_15)) begin
        tmp_1_i_i_reg_657 <= tmp_1_i_i_fu_400_p2;
        tmp_2_i_i_reg_662 <= tmp_2_i_i_fu_406_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        tmp_24_reg_520 <= tmp_24_fu_274_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st15_fsm_14)) begin
        tmp_25_reg_647 <= tmp_25_fu_390_p1;
        tmp_i_i_reg_642 <= tmp_i_i_fu_384_p2;
        y_assign_reg_637 <= y_assign_fu_346_p2;
        z_assign_reg_632 <= z_assign_fu_341_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        tmp_s_reg_530 <= tmp_s_fu_283_p2;
        x_assign_1_reg_535 <= x_assign_1_fu_289_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_cseq_ST_st22_fsm_21 or exitcond_fu_426_p2)
begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st22_fsm_21) & ~(exitcond_fu_426_p2 == ap_const_lv1_0)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_sig_cseq_ST_st22_fsm_21 or exitcond_fu_426_p2)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st22_fsm_21) & ~(exitcond_fu_426_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st10_fsm_9 assign process. ///
always @ (ap_sig_bdd_177)
begin
    if (ap_sig_bdd_177) begin
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st11_fsm_10 assign process. ///
always @ (ap_sig_bdd_187)
begin
    if (ap_sig_bdd_187) begin
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st12_fsm_11 assign process. ///
always @ (ap_sig_bdd_77)
begin
    if (ap_sig_bdd_77) begin
        ap_sig_cseq_ST_st12_fsm_11 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st12_fsm_11 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st13_fsm_12 assign process. ///
always @ (ap_sig_bdd_125)
begin
    if (ap_sig_bdd_125) begin
        ap_sig_cseq_ST_st13_fsm_12 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st13_fsm_12 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st14_fsm_13 assign process. ///
always @ (ap_sig_bdd_85)
begin
    if (ap_sig_bdd_85) begin
        ap_sig_cseq_ST_st14_fsm_13 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st14_fsm_13 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st15_fsm_14 assign process. ///
always @ (ap_sig_bdd_214)
begin
    if (ap_sig_bdd_214) begin
        ap_sig_cseq_ST_st15_fsm_14 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st15_fsm_14 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st16_fsm_15 assign process. ///
always @ (ap_sig_bdd_231)
begin
    if (ap_sig_bdd_231) begin
        ap_sig_cseq_ST_st16_fsm_15 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st16_fsm_15 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st17_fsm_16 assign process. ///
always @ (ap_sig_bdd_317)
begin
    if (ap_sig_bdd_317) begin
        ap_sig_cseq_ST_st17_fsm_16 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st17_fsm_16 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st18_fsm_17 assign process. ///
always @ (ap_sig_bdd_325)
begin
    if (ap_sig_bdd_325) begin
        ap_sig_cseq_ST_st18_fsm_17 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st18_fsm_17 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st19_fsm_18 assign process. ///
always @ (ap_sig_bdd_333)
begin
    if (ap_sig_bdd_333) begin
        ap_sig_cseq_ST_st19_fsm_18 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st19_fsm_18 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_41)
begin
    if (ap_sig_bdd_41) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st20_fsm_19 assign process. ///
always @ (ap_sig_bdd_341)
begin
    if (ap_sig_bdd_341) begin
        ap_sig_cseq_ST_st20_fsm_19 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st20_fsm_19 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st21_fsm_20 assign process. ///
always @ (ap_sig_bdd_242)
begin
    if (ap_sig_bdd_242) begin
        ap_sig_cseq_ST_st21_fsm_20 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st21_fsm_20 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st22_fsm_21 assign process. ///
always @ (ap_sig_bdd_255)
begin
    if (ap_sig_bdd_255) begin
        ap_sig_cseq_ST_st22_fsm_21 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st22_fsm_21 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st23_fsm_22 assign process. ///
always @ (ap_sig_bdd_271)
begin
    if (ap_sig_bdd_271) begin
        ap_sig_cseq_ST_st23_fsm_22 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st23_fsm_22 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_139)
begin
    if (ap_sig_bdd_139) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st3_fsm_2 assign process. ///
always @ (ap_sig_bdd_62)
begin
    if (ap_sig_bdd_62) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st4_fsm_3 assign process. ///
always @ (ap_sig_bdd_94)
begin
    if (ap_sig_bdd_94) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st5_fsm_4 assign process. ///
always @ (ap_sig_bdd_110)
begin
    if (ap_sig_bdd_110) begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st6_fsm_5 assign process. ///
always @ (ap_sig_bdd_69)
begin
    if (ap_sig_bdd_69) begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st7_fsm_6 assign process. ///
always @ (ap_sig_bdd_101)
begin
    if (ap_sig_bdd_101) begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st8_fsm_7 assign process. ///
always @ (ap_sig_bdd_117)
begin
    if (ap_sig_bdd_117) begin
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st9_fsm_8 assign process. ///
always @ (ap_sig_bdd_167)
begin
    if (ap_sig_bdd_167) begin
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_0;
    end
end

/// state_address0 assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_cseq_ST_st3_fsm_2 or ap_sig_cseq_ST_st6_fsm_5 or ap_sig_cseq_ST_st12_fsm_11 or ap_sig_cseq_ST_st14_fsm_13 or ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st7_fsm_6 or ap_sig_cseq_ST_st5_fsm_4 or ap_sig_cseq_ST_st8_fsm_7 or ap_sig_cseq_ST_st13_fsm_12 or ap_sig_cseq_ST_st2_fsm_1 or state_addr_2_reg_505 or state_addr_3_reg_510 or state_addr_5_reg_525 or state_addr_7_reg_547 or ap_sig_cseq_ST_st9_fsm_8 or state_addr_9_reg_563 or ap_sig_cseq_ST_st10_fsm_9 or ap_sig_cseq_ST_st11_fsm_10 or state_addr_11_reg_585 or ap_sig_cseq_ST_st15_fsm_14 or ap_sig_cseq_ST_st16_fsm_15 or ap_sig_cseq_ST_st21_fsm_20 or ap_sig_cseq_ST_st22_fsm_21 or exitcond_fu_426_p2 or ap_sig_cseq_ST_st23_fsm_22 or tmp_6_fu_438_p1 or tmp_7_fu_489_p1 or ap_sig_cseq_ST_st17_fsm_16 or ap_sig_cseq_ST_st18_fsm_17 or ap_sig_cseq_ST_st19_fsm_18 or ap_sig_cseq_ST_st20_fsm_19)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st23_fsm_22)) begin
        state_address0 = tmp_7_fu_489_p1;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st22_fsm_21) & ~(exitcond_fu_426_p2 == ap_const_lv1_0))) begin
        state_address0 = ap_const_lv64_124;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st21_fsm_20)) begin
        state_address0 = state_addr_11_reg_585;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st20_fsm_19)) begin
        state_address0 = state_addr_9_reg_563;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st19_fsm_18)) begin
        state_address0 = state_addr_7_reg_547;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st18_fsm_17)) begin
        state_address0 = state_addr_5_reg_525;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        state_address0 = state_addr_2_reg_505;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st16_fsm_15)) begin
        state_address0 = state_addr_3_reg_510;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st22_fsm_21) & (exitcond_fu_426_p2 == ap_const_lv1_0))) begin
        state_address0 = tmp_6_fu_438_p1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st15_fsm_14)) begin
        state_address0 = ap_const_lv64_F4;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        state_address0 = ap_const_lv64_C;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st13_fsm_12)) begin
        state_address0 = ap_const_lv64_0;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st12_fsm_11)) begin
        state_address0 = ap_const_lv64_17;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        state_address0 = ap_const_lv64_3D;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        state_address0 = ap_const_lv64_42;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        state_address0 = ap_const_lv64_6B;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        state_address0 = ap_const_lv64_6F;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        state_address0 = ap_const_lv64_9A;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        state_address0 = ap_const_lv64_A0;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        state_address0 = ap_const_lv64_C1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        state_address0 = ap_const_lv64_C4;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        state_address0 = ap_const_lv64_121;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        state_address0 = ap_const_lv64_E6;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) begin
        state_address0 = ap_const_lv64_EB;
    end else begin
        state_address0 = 'bx;
    end
end

/// state_ce0 assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_cseq_ST_st3_fsm_2 or ap_sig_cseq_ST_st6_fsm_5 or ap_sig_cseq_ST_st12_fsm_11 or ap_sig_cseq_ST_st14_fsm_13 or ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st7_fsm_6 or ap_sig_cseq_ST_st5_fsm_4 or ap_sig_cseq_ST_st8_fsm_7 or ap_sig_cseq_ST_st13_fsm_12 or ap_sig_cseq_ST_st2_fsm_1 or ap_sig_cseq_ST_st9_fsm_8 or ap_sig_cseq_ST_st10_fsm_9 or ap_sig_cseq_ST_st11_fsm_10 or ap_sig_cseq_ST_st15_fsm_14 or ap_sig_cseq_ST_st16_fsm_15 or ap_sig_cseq_ST_st21_fsm_20 or ap_sig_cseq_ST_st22_fsm_21 or exitcond_fu_426_p2 or ap_sig_cseq_ST_st23_fsm_22 or ap_sig_cseq_ST_st17_fsm_16 or ap_sig_cseq_ST_st18_fsm_17 or ap_sig_cseq_ST_st19_fsm_18 or ap_sig_cseq_ST_st20_fsm_19)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) | (ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5) | (ap_const_logic_1 == ap_sig_cseq_ST_st12_fsm_11) | (ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13) | (ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) | (ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6) | (ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) | (ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7) | (ap_const_logic_1 == ap_sig_cseq_ST_st13_fsm_12) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0)) | (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) | (ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8) | (ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9) | (ap_const_logic_1 == ap_sig_cseq_ST_st11_fsm_10) | (ap_const_logic_1 == ap_sig_cseq_ST_st15_fsm_14) | (ap_const_logic_1 == ap_sig_cseq_ST_st16_fsm_15) | (ap_const_logic_1 == ap_sig_cseq_ST_st21_fsm_20) | ((ap_const_logic_1 == ap_sig_cseq_ST_st22_fsm_21) & (exitcond_fu_426_p2 == ap_const_lv1_0)) | (ap_const_logic_1 == ap_sig_cseq_ST_st23_fsm_22) | ((ap_const_logic_1 == ap_sig_cseq_ST_st22_fsm_21) & ~(exitcond_fu_426_p2 == ap_const_lv1_0)) | (ap_const_logic_1 == ap_sig_cseq_ST_st17_fsm_16) | (ap_const_logic_1 == ap_sig_cseq_ST_st18_fsm_17) | (ap_const_logic_1 == ap_sig_cseq_ST_st19_fsm_18) | (ap_const_logic_1 == ap_sig_cseq_ST_st20_fsm_19))) begin
        state_ce0 = ap_const_logic_1;
    end else begin
        state_ce0 = ap_const_logic_0;
    end
end

/// state_d0 assign process. ///
always @ (state_q0 or tmp_s_reg_530 or x_assign_1_reg_535 or tmp_3_reg_595 or tmp_5_reg_601 or z_assign_reg_632 or y_assign_reg_637 or ap_sig_cseq_ST_st16_fsm_15 or ap_sig_cseq_ST_st21_fsm_20 or ap_sig_cseq_ST_st22_fsm_21 or exitcond_fu_426_p2 or ap_sig_cseq_ST_st23_fsm_22 or ap_sig_cseq_ST_st17_fsm_16 or ap_sig_cseq_ST_st18_fsm_17 or ap_sig_cseq_ST_st19_fsm_18 or ap_sig_cseq_ST_st20_fsm_19 or tmp_4_fu_482_p2)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st23_fsm_22)) begin
        state_d0 = state_q0;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st22_fsm_21) & ~(exitcond_fu_426_p2 == ap_const_lv1_0))) begin
        state_d0 = tmp_4_fu_482_p2;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st21_fsm_20)) begin
        state_d0 = y_assign_reg_637;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st20_fsm_19)) begin
        state_d0 = tmp_5_reg_601;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st19_fsm_18)) begin
        state_d0 = tmp_3_reg_595;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st18_fsm_17)) begin
        state_d0 = z_assign_reg_632;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        state_d0 = x_assign_1_reg_535;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st16_fsm_15)) begin
        state_d0 = tmp_s_reg_530;
    end else begin
        state_d0 = 'bx;
    end
end

/// state_we0 assign process. ///
always @ (ap_sig_cseq_ST_st16_fsm_15 or ap_sig_cseq_ST_st21_fsm_20 or ap_sig_cseq_ST_st22_fsm_21 or exitcond_fu_426_p2 or ap_sig_cseq_ST_st23_fsm_22 or ap_sig_cseq_ST_st17_fsm_16 or ap_sig_cseq_ST_st18_fsm_17 or ap_sig_cseq_ST_st19_fsm_18 or ap_sig_cseq_ST_st20_fsm_19)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st16_fsm_15) | (ap_const_logic_1 == ap_sig_cseq_ST_st21_fsm_20) | (ap_const_logic_1 == ap_sig_cseq_ST_st23_fsm_22) | ((ap_const_logic_1 == ap_sig_cseq_ST_st22_fsm_21) & ~(exitcond_fu_426_p2 == ap_const_lv1_0)) | (ap_const_logic_1 == ap_sig_cseq_ST_st17_fsm_16) | (ap_const_logic_1 == ap_sig_cseq_ST_st18_fsm_17) | (ap_const_logic_1 == ap_sig_cseq_ST_st19_fsm_18) | (ap_const_logic_1 == ap_sig_cseq_ST_st20_fsm_19))) begin
        state_we0 = ap_const_logic_1;
    end else begin
        state_we0 = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or exitcond_fu_426_p2)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st3_fsm_2 : 
        begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        ap_ST_st4_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : 
        begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : 
        begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st7_fsm_6 : 
        begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        ap_ST_st8_fsm_7 : 
        begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : 
        begin
            ap_NS_fsm = ap_ST_st10_fsm_9;
        end
        ap_ST_st10_fsm_9 : 
        begin
            ap_NS_fsm = ap_ST_st11_fsm_10;
        end
        ap_ST_st11_fsm_10 : 
        begin
            ap_NS_fsm = ap_ST_st12_fsm_11;
        end
        ap_ST_st12_fsm_11 : 
        begin
            ap_NS_fsm = ap_ST_st13_fsm_12;
        end
        ap_ST_st13_fsm_12 : 
        begin
            ap_NS_fsm = ap_ST_st14_fsm_13;
        end
        ap_ST_st14_fsm_13 : 
        begin
            ap_NS_fsm = ap_ST_st15_fsm_14;
        end
        ap_ST_st15_fsm_14 : 
        begin
            ap_NS_fsm = ap_ST_st16_fsm_15;
        end
        ap_ST_st16_fsm_15 : 
        begin
            ap_NS_fsm = ap_ST_st17_fsm_16;
        end
        ap_ST_st17_fsm_16 : 
        begin
            ap_NS_fsm = ap_ST_st18_fsm_17;
        end
        ap_ST_st18_fsm_17 : 
        begin
            ap_NS_fsm = ap_ST_st19_fsm_18;
        end
        ap_ST_st19_fsm_18 : 
        begin
            ap_NS_fsm = ap_ST_st20_fsm_19;
        end
        ap_ST_st20_fsm_19 : 
        begin
            ap_NS_fsm = ap_ST_st21_fsm_20;
        end
        ap_ST_st21_fsm_20 : 
        begin
            ap_NS_fsm = ap_ST_st22_fsm_21;
        end
        ap_ST_st22_fsm_21 : 
        begin
            if (~(exitcond_fu_426_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st23_fsm_22;
            end
        end
        ap_ST_st23_fsm_22 : 
        begin
            ap_NS_fsm = ap_ST_st22_fsm_21;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_101 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_101 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_6]);
end

/// ap_sig_bdd_110 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_110 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end

/// ap_sig_bdd_117 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_117 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_7]);
end

/// ap_sig_bdd_125 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_125 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_C]);
end

/// ap_sig_bdd_139 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_139 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_167 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_167 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_8]);
end

/// ap_sig_bdd_177 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_177 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_9]);
end

/// ap_sig_bdd_187 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_187 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_A]);
end

/// ap_sig_bdd_214 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_214 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_E]);
end

/// ap_sig_bdd_231 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_231 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_F]);
end

/// ap_sig_bdd_242 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_242 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_14]);
end

/// ap_sig_bdd_255 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_255 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_15]);
end

/// ap_sig_bdd_271 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_271 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_16]);
end

/// ap_sig_bdd_317 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_317 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_10]);
end

/// ap_sig_bdd_325 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_325 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_11]);
end

/// ap_sig_bdd_333 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_333 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_12]);
end

/// ap_sig_bdd_341 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_341 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_13]);
end

/// ap_sig_bdd_41 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_41 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_62 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_62 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_69 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_69 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_5]);
end

/// ap_sig_bdd_77 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_77 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_B]);
end

/// ap_sig_bdd_85 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_85 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_D]);
end

/// ap_sig_bdd_94 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_94 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end
assign ciphertextbit_cast_fu_412_p1 = ciphertextbit;
assign exitcond_fu_426_p2 = (j_reg_243 == ap_const_lv9_124? 1'b1: 1'b0);
assign grp_fu_268_p2 = (reg_256 ^ state_q0);
assign j_1_fu_432_p2 = (j_reg_243 + ap_const_lv9_1);
assign state_addr_11_gep_fu_172_p3 = ap_const_lv64_3D;
assign state_addr_2_gep_fu_91_p3 = ap_const_lv64_E6;
assign state_addr_3_gep_fu_100_p3 = ap_const_lv64_121;
assign state_addr_5_gep_fu_118_p3 = ap_const_lv64_C1;
assign state_addr_7_gep_fu_136_p3 = ap_const_lv64_9A;
assign state_addr_9_gep_fu_154_p3 = ap_const_lv64_6B;
assign tmp10_fu_443_p2 = (tmp_i_i_reg_642 ^ ciphertextbit_cast_reg_667);
assign tmp11_fu_447_p2 = (tmp_2_i_reg_677 ^ tmp_1_i_reg_672);
assign tmp12_fu_455_p2 = (tmp15_cast_fu_451_p1 ^ tmp10_fu_443_p2);
assign tmp13_fu_461_p2 = (tmp_2_i_i_reg_662 ^ tmp_1_i_i_reg_657);
assign tmp14_fu_465_p2 = (reg_256 ^ ap_const_lv8_1);
assign tmp15_cast_fu_451_p1 = tmp11_fu_447_p2;
assign tmp15_fu_471_p2 = (tmp14_fu_465_p2 ^ tmp_5_reg_601);
assign tmp16_fu_476_p2 = (tmp15_fu_471_p2 ^ tmp13_fu_461_p2);
assign tmp1_fu_278_p2 = (state_load_reg_499 ^ reg_260);
assign tmp3_fu_295_p2 = (reg_256 ^ reg_264);
assign tmp4_fu_301_p2 = (reg_264 ^ state_load_8_reg_568);
assign tmp5_fu_311_p2 = (state_load_8_reg_568 ^ state_q0);
assign tmp7_fu_335_p2 = (tmp_i9_i_i_fu_321_p2 ^ tmp_5_i_i_i_fu_330_p2);
assign tmp8_fu_380_p2 = (tmp7_reg_612 ^ tmp_3_reg_595);
assign tmp9_fu_374_p2 = (tmp_fu_368_p2 ^ tmp_2_i_i_i_fu_362_p2);
assign tmp_1_i_fu_416_p2 = (tmp_24_reg_520 & ca);
assign tmp_1_i_i_fu_400_p2 = (tmp_i_i_2_fu_394_p2 & state_q0);
assign tmp_1_i_i_i_fu_357_p2 = (tmp_i_i_i_fu_351_p2 & state_load_reg_499);
assign tmp_24_fu_274_p1 = state_q0[0:0];
assign tmp_25_fu_390_p1 = tmp_i_i_fu_384_p2[0:0];
assign tmp_2_i_fu_421_p2 = (tmp_25_reg_647 & cb);
assign tmp_2_i_i_fu_406_p2 = (reg_260 & reg_264);
assign tmp_2_i_i_i_fu_362_p2 = (z_assign_fu_341_p2 & y_assign_fu_346_p2);
assign tmp_3_fu_306_p2 = (tmp4_fu_301_p2 ^ state_load_7_reg_557);
assign tmp_4_fu_482_p2 = (tmp16_fu_476_p2 ^ tmp12_fu_455_p2);
assign tmp_4_i_i_i_fu_325_p2 = (x_assign_1_reg_535 ^ ap_const_lv8_1);
assign tmp_5_fu_316_p2 = (tmp5_fu_311_p2 ^ state_load_9_reg_579);
assign tmp_5_i_i_i_fu_330_p2 = (tmp_4_i_i_i_fu_325_p2 & state_load_9_reg_579);
assign tmp_6_fu_438_p1 = j_1_fu_432_p2;
assign tmp_7_fu_489_p1 = j_reg_243;
assign tmp_fu_368_p2 = (tmp_1_i_i_i_fu_357_p2 ^ state_q0);
assign tmp_i9_i_i_fu_321_p2 = (state_load_7_reg_557 & x_assign_1_reg_535);
assign tmp_i_i_2_fu_394_p2 = (reg_260 ^ reg_264);
assign tmp_i_i_fu_384_p2 = (tmp8_fu_380_p2 ^ tmp9_fu_374_p2);
assign tmp_i_i_i_fu_351_p2 = (z_assign_fu_341_p2 ^ y_assign_fu_346_p2);
assign tmp_s_fu_283_p2 = (tmp1_fu_278_p2 ^ reg_256);
assign x_assign_1_fu_289_p2 = (grp_fu_268_p2 ^ reg_264);
assign y_assign_fu_346_p2 = (tmp6_reg_622 ^ reg_264);
assign z_assign_fu_341_p2 = (tmp3_reg_590 ^ reg_260);
always @ (posedge ap_clk)
begin
    state_addr_2_reg_505[8:0] <= 9'b011100110;
    state_addr_3_reg_510[8:0] <= 9'b100100001;
    state_addr_5_reg_525[8:0] <= 9'b011000001;
    state_addr_7_reg_547[8:0] <= 9'b010011010;
    state_addr_9_reg_563[8:0] <= 9'b001101011;
    state_addr_11_reg_585[8:0] <= 9'b000111101;
    ciphertextbit_cast_reg_667[7:1] <= 7'b0000000;
end



endmodule //acorn128_dec_onebyte_Decrypt_StateUpdate128_1bit

