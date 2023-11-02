// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Nov  2 19:59:04 2023
// Host        : Yongjing-Victus running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.sim/sim_1/impl/func/xsim/sim_block_spawn_func_impl.v
// Design      : main
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Oled_Display
   (JC_OBUF,
    spi_busy,
    CLK_6p25M_BUFG,
    p_1_in);
  output [4:0]JC_OBUF;
  output spi_busy;
  input CLK_6p25M_BUFG;
  input p_1_in;

  wire CLK_6p25M_BUFG;
  wire \FSM_onehot_state[13]_i_1_n_0 ;
  wire \FSM_onehot_state[13]_i_2_n_0 ;
  wire \FSM_onehot_state[13]_i_3_n_0 ;
  wire \FSM_onehot_state[13]_i_4_n_0 ;
  wire \FSM_onehot_state[13]_i_5_n_0 ;
  wire \FSM_onehot_state[15]_i_1_n_0 ;
  wire \FSM_onehot_state[15]_i_2_n_0 ;
  wire \FSM_onehot_state[15]_i_3_n_0 ;
  wire \FSM_onehot_state[15]_i_4_n_0 ;
  wire \FSM_onehot_state[15]_i_5_n_0 ;
  wire \FSM_onehot_state[31]_i_3_n_0 ;
  wire \FSM_onehot_state[31]_i_4_n_0 ;
  wire \FSM_onehot_state[31]_i_5_n_0 ;
  wire \FSM_onehot_state[31]_i_6_n_0 ;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_2_n_0 ;
  wire \FSM_onehot_state[9]_i_3_n_0 ;
  wire \FSM_onehot_state[9]_i_4_n_0 ;
  wire \FSM_onehot_state[9]_i_5_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[11] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[12] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[14] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[15] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[16] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[17] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[18] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[19] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[20] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[21] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[22] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[23] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[24] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[25] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[26] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[27] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[28] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[29] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[30] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[31] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[7] ;
  wire [4:0]JC_OBUF;
  wire \JC_OBUF[6]_inst_i_2_n_0 ;
  wire [16:1]data0;
  wire [11:6]delay;
  wire \delay[0]_i_1_n_0 ;
  wire \delay[0]_i_4_n_0 ;
  wire \delay[0]_i_5_n_0 ;
  wire \delay[0]_i_6_n_0 ;
  wire \delay[0]_i_7_n_0 ;
  wire \delay[0]_i_9_n_0 ;
  wire \delay[12]_i_2_n_0 ;
  wire \delay[12]_i_3_n_0 ;
  wire \delay[12]_i_4_n_0 ;
  wire \delay[12]_i_5_n_0 ;
  wire \delay[12]_i_6_n_0 ;
  wire \delay[12]_i_7_n_0 ;
  wire \delay[16]_i_2_n_0 ;
  wire \delay[16]_i_3_n_0 ;
  wire \delay[16]_i_4_n_0 ;
  wire \delay[16]_i_5_n_0 ;
  wire \delay[4]_i_2_n_0 ;
  wire \delay[4]_i_3_n_0 ;
  wire \delay[4]_i_4_n_0 ;
  wire \delay[4]_i_5_n_0 ;
  wire \delay[8]_i_2_n_0 ;
  wire \delay[8]_i_3_n_0 ;
  wire \delay[8]_i_4_n_0 ;
  wire \delay[8]_i_5_n_0 ;
  wire [19:0]delay_reg;
  wire \delay_reg[0]_i_2_n_0 ;
  wire \delay_reg[0]_i_2_n_4 ;
  wire \delay_reg[0]_i_2_n_5 ;
  wire \delay_reg[0]_i_2_n_6 ;
  wire \delay_reg[0]_i_2_n_7 ;
  wire \delay_reg[12]_i_1_n_0 ;
  wire \delay_reg[12]_i_1_n_4 ;
  wire \delay_reg[12]_i_1_n_5 ;
  wire \delay_reg[12]_i_1_n_6 ;
  wire \delay_reg[12]_i_1_n_7 ;
  wire \delay_reg[16]_i_1_n_4 ;
  wire \delay_reg[16]_i_1_n_5 ;
  wire \delay_reg[16]_i_1_n_6 ;
  wire \delay_reg[16]_i_1_n_7 ;
  wire \delay_reg[4]_i_1_n_0 ;
  wire \delay_reg[4]_i_1_n_4 ;
  wire \delay_reg[4]_i_1_n_5 ;
  wire \delay_reg[4]_i_1_n_6 ;
  wire \delay_reg[4]_i_1_n_7 ;
  wire \delay_reg[8]_i_1_n_0 ;
  wire \delay_reg[8]_i_1_n_4 ;
  wire \delay_reg[8]_i_1_n_5 ;
  wire \delay_reg[8]_i_1_n_6 ;
  wire \delay_reg[8]_i_1_n_7 ;
  wire \frame_counter[0]_i_1_n_0 ;
  wire \frame_counter[16]_i_1_n_0 ;
  wire \frame_counter[16]_i_3_n_0 ;
  wire \frame_counter[16]_i_4_n_0 ;
  wire \frame_counter_reg[12]_i_1_n_0 ;
  wire \frame_counter_reg[4]_i_1_n_0 ;
  wire \frame_counter_reg[8]_i_1_n_0 ;
  wire \frame_counter_reg_n_0_[0] ;
  wire \frame_counter_reg_n_0_[1] ;
  wire \frame_counter_reg_n_0_[2] ;
  wire \frame_counter_reg_n_0_[3] ;
  wire [4:0]fsm_next_state;
  wire [12:0]p_0_in;
  wire [5:0]p_0_in__0;
  wire p_0_in__1;
  wire p_1_in;
  wire p_1_in_0;
  (* RTL_KEEP = "yes" *) wire p_2_in;
  (* RTL_KEEP = "yes" *) wire p_3_in;
  (* RTL_KEEP = "yes" *) wire p_4_in;
  wire spi_busy;
  wire [39:24]spi_word;
  wire \spi_word[0]_i_1_n_0 ;
  wire \spi_word[10]_i_1_n_0 ;
  wire \spi_word[11]_i_1_n_0 ;
  wire \spi_word[12]_i_1_n_0 ;
  wire \spi_word[13]_i_1_n_0 ;
  wire \spi_word[14]_i_1_n_0 ;
  wire \spi_word[14]_i_4_n_0 ;
  wire \spi_word[14]_i_5_n_0 ;
  wire \spi_word[14]_i_6_n_0 ;
  wire \spi_word[15]_i_1_n_0 ;
  wire \spi_word[16]_i_1_n_0 ;
  wire \spi_word[17]_i_1_n_0 ;
  wire \spi_word[18]_i_1_n_0 ;
  wire \spi_word[19]_i_1_n_0 ;
  wire \spi_word[1]_i_1_n_0 ;
  wire \spi_word[20]_i_1_n_0 ;
  wire \spi_word[20]_i_3_n_0 ;
  wire \spi_word[20]_i_4_n_0 ;
  wire \spi_word[21]_i_1_n_0 ;
  wire \spi_word[22]_i_1_n_0 ;
  wire \spi_word[22]_i_2_n_0 ;
  wire \spi_word[22]_i_3_n_0 ;
  wire \spi_word[23]_i_1_n_0 ;
  wire \spi_word[24]_i_1_n_0 ;
  wire \spi_word[25]_i_1_n_0 ;
  wire \spi_word[25]_i_2_n_0 ;
  wire \spi_word[25]_i_3_n_0 ;
  wire \spi_word[26]_i_1_n_0 ;
  wire \spi_word[27]_i_1_n_0 ;
  wire \spi_word[28]_i_1_n_0 ;
  wire \spi_word[29]_i_1_n_0 ;
  wire \spi_word[2]_i_1_n_0 ;
  wire \spi_word[30]_i_1_n_0 ;
  wire \spi_word[30]_i_2_n_0 ;
  wire \spi_word[31]_i_1_n_0 ;
  wire \spi_word[31]_i_2_n_0 ;
  wire \spi_word[31]_i_3_n_0 ;
  wire \spi_word[31]_i_4_n_0 ;
  wire \spi_word[31]_i_5_n_0 ;
  wire \spi_word[31]_i_6_n_0 ;
  wire \spi_word[31]_i_7_n_0 ;
  wire \spi_word[32]_i_1_n_0 ;
  wire \spi_word[33]_i_1_n_0 ;
  wire \spi_word[34]_i_1_n_0 ;
  wire \spi_word[35]_i_1_n_0 ;
  wire \spi_word[36]_i_1_n_0 ;
  wire \spi_word[37]_i_1_n_0 ;
  wire \spi_word[38]_i_1_n_0 ;
  wire \spi_word[38]_i_2_n_0 ;
  wire \spi_word[38]_i_3_n_0 ;
  wire \spi_word[38]_i_4_n_0 ;
  wire \spi_word[38]_i_5_n_0 ;
  wire \spi_word[38]_i_6_n_0 ;
  wire \spi_word[38]_i_7_n_0 ;
  wire \spi_word[38]_i_8_n_0 ;
  wire \spi_word[39]_i_10_n_0 ;
  wire \spi_word[39]_i_11_n_0 ;
  wire \spi_word[39]_i_12_n_0 ;
  wire \spi_word[39]_i_1_n_0 ;
  wire \spi_word[39]_i_2_n_0 ;
  wire \spi_word[39]_i_7_n_0 ;
  wire \spi_word[39]_i_8_n_0 ;
  wire \spi_word[39]_i_9_n_0 ;
  wire \spi_word[3]_i_1_n_0 ;
  wire \spi_word[4]_i_1_n_0 ;
  wire \spi_word[5]_i_1_n_0 ;
  wire \spi_word[6]_i_1_n_0 ;
  wire \spi_word[7]_i_1_n_0 ;
  wire \spi_word[8]_i_1_n_0 ;
  wire \spi_word[9]_i_1_n_0 ;
  wire \spi_word_bit_count[3]_i_2_n_0 ;
  wire \spi_word_bit_count[4]_i_2_n_0 ;
  wire \spi_word_bit_count[5]_i_2_n_0 ;
  wire \spi_word_bit_count[5]_i_3_n_0 ;
  wire [5:0]spi_word_bit_count_reg__0;
  wire \spi_word_reg_n_0_[0] ;
  wire \spi_word_reg_n_0_[10] ;
  wire \spi_word_reg_n_0_[11] ;
  wire \spi_word_reg_n_0_[12] ;
  wire \spi_word_reg_n_0_[13] ;
  wire \spi_word_reg_n_0_[14] ;
  wire \spi_word_reg_n_0_[15] ;
  wire \spi_word_reg_n_0_[16] ;
  wire \spi_word_reg_n_0_[17] ;
  wire \spi_word_reg_n_0_[18] ;
  wire \spi_word_reg_n_0_[19] ;
  wire \spi_word_reg_n_0_[1] ;
  wire \spi_word_reg_n_0_[20] ;
  wire \spi_word_reg_n_0_[21] ;
  wire \spi_word_reg_n_0_[22] ;
  wire \spi_word_reg_n_0_[23] ;
  wire \spi_word_reg_n_0_[24] ;
  wire \spi_word_reg_n_0_[25] ;
  wire \spi_word_reg_n_0_[26] ;
  wire \spi_word_reg_n_0_[27] ;
  wire \spi_word_reg_n_0_[28] ;
  wire \spi_word_reg_n_0_[29] ;
  wire \spi_word_reg_n_0_[2] ;
  wire \spi_word_reg_n_0_[30] ;
  wire \spi_word_reg_n_0_[31] ;
  wire \spi_word_reg_n_0_[32] ;
  wire \spi_word_reg_n_0_[33] ;
  wire \spi_word_reg_n_0_[34] ;
  wire \spi_word_reg_n_0_[35] ;
  wire \spi_word_reg_n_0_[36] ;
  wire \spi_word_reg_n_0_[37] ;
  wire \spi_word_reg_n_0_[38] ;
  wire \spi_word_reg_n_0_[39] ;
  wire \spi_word_reg_n_0_[3] ;
  wire \spi_word_reg_n_0_[4] ;
  wire \spi_word_reg_n_0_[5] ;
  wire \spi_word_reg_n_0_[6] ;
  wire \spi_word_reg_n_0_[7] ;
  wire \spi_word_reg_n_0_[8] ;
  wire \spi_word_reg_n_0_[9] ;
  wire state;
  wire [2:0]\NLW_delay_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_delay_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_frame_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_frame_counter_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_frame_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_frame_counter_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFB00FB00FB00)) 
    \FSM_onehot_state[13]_i_1 
       (.I0(\FSM_onehot_state[13]_i_2_n_0 ),
        .I1(\FSM_onehot_state[13]_i_3_n_0 ),
        .I2(\FSM_onehot_state[13]_i_4_n_0 ),
        .I3(JC_OBUF[2]),
        .I4(\FSM_onehot_state[13]_i_5_n_0 ),
        .I5(p_4_in),
        .O(\FSM_onehot_state[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_state[13]_i_2 
       (.I0(p_0_in[4]),
        .I1(p_0_in[0]),
        .I2(JC_OBUF[2]),
        .I3(p_0_in[7]),
        .I4(p_0_in[11]),
        .O(\FSM_onehot_state[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[13]_i_3 
       (.I0(p_0_in[9]),
        .I1(p_0_in[10]),
        .O(\FSM_onehot_state[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \FSM_onehot_state[13]_i_4 
       (.I0(\FSM_onehot_state[15]_i_5_n_0 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[8]),
        .I3(p_0_in[12]),
        .O(\FSM_onehot_state[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \FSM_onehot_state[13]_i_5 
       (.I0(\frame_counter_reg_n_0_[2] ),
        .I1(\frame_counter_reg_n_0_[1] ),
        .I2(\frame_counter_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[9]_i_3_n_0 ),
        .I4(\FSM_onehot_state[9]_i_4_n_0 ),
        .I5(\FSM_onehot_state[9]_i_5_n_0 ),
        .O(\FSM_onehot_state[13]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[19] ),
        .I1(\FSM_onehot_state[15]_i_2_n_0 ),
        .O(\FSM_onehot_state[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \FSM_onehot_state[15]_i_2 
       (.I0(p_0_in[7]),
        .I1(p_0_in[4]),
        .I2(p_0_in[0]),
        .I3(\FSM_onehot_state[15]_i_3_n_0 ),
        .I4(\FSM_onehot_state[15]_i_4_n_0 ),
        .I5(\FSM_onehot_state[15]_i_5_n_0 ),
        .O(\FSM_onehot_state[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_onehot_state[15]_i_3 
       (.I0(p_0_in[11]),
        .I1(JC_OBUF[2]),
        .I2(p_0_in[10]),
        .I3(p_0_in[9]),
        .O(\FSM_onehot_state[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_onehot_state[15]_i_4 
       (.I0(p_0_in[12]),
        .I1(p_0_in[8]),
        .I2(p_0_in[1]),
        .O(\FSM_onehot_state[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[15]_i_5 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[6]),
        .I3(p_0_in[5]),
        .O(\FSM_onehot_state[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[31]_i_1 
       (.I0(p_1_in_0),
        .I1(spi_word_bit_count_reg__0[4]),
        .I2(spi_word_bit_count_reg__0[3]),
        .I3(spi_word_bit_count_reg__0[2]),
        .I4(spi_word_bit_count_reg__0[1]),
        .I5(spi_word_bit_count_reg__0[5]),
        .O(state));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \FSM_onehot_state[31]_i_2 
       (.I0(delay_reg[18]),
        .I1(delay_reg[19]),
        .I2(\FSM_onehot_state[31]_i_3_n_0 ),
        .I3(\FSM_onehot_state[31]_i_4_n_0 ),
        .I4(\FSM_onehot_state[31]_i_5_n_0 ),
        .I5(\FSM_onehot_state[31]_i_6_n_0 ),
        .O(p_1_in_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state[31]_i_3 
       (.I0(delay_reg[1]),
        .I1(delay_reg[0]),
        .I2(delay_reg[3]),
        .I3(delay_reg[2]),
        .O(\FSM_onehot_state[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[31]_i_4 
       (.I0(delay_reg[4]),
        .I1(delay_reg[5]),
        .I2(delay_reg[6]),
        .I3(delay_reg[7]),
        .I4(delay_reg[9]),
        .I5(delay_reg[8]),
        .O(\FSM_onehot_state[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[31]_i_5 
       (.I0(delay_reg[17]),
        .I1(delay_reg[11]),
        .I2(delay_reg[16]),
        .I3(delay_reg[15]),
        .O(\FSM_onehot_state[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[31]_i_6 
       (.I0(delay_reg[14]),
        .I1(delay_reg[13]),
        .I2(delay_reg[10]),
        .I3(delay_reg[12]),
        .O(\FSM_onehot_state[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFF0000)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(\FSM_onehot_state[9]_i_2_n_0 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .I2(\FSM_onehot_state[9]_i_4_n_0 ),
        .I3(\FSM_onehot_state[9]_i_5_n_0 ),
        .I4(p_4_in),
        .I5(p_3_in),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_state[9]_i_2 
       (.I0(\frame_counter_reg_n_0_[2] ),
        .I1(\frame_counter_reg_n_0_[1] ),
        .I2(\frame_counter_reg_n_0_[0] ),
        .O(\FSM_onehot_state[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state[9]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\frame_counter_reg_n_0_[3] ),
        .O(\FSM_onehot_state[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state[9]_i_4 
       (.I0(p_0_in[6]),
        .I1(p_0_in[5]),
        .I2(p_0_in[4]),
        .I3(p_0_in[3]),
        .O(\FSM_onehot_state[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[9]_i_5 
       (.I0(p_0_in[7]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .I3(p_0_in[10]),
        .I4(p_0_in[12]),
        .I5(p_0_in[11]),
        .O(\FSM_onehot_state[9]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[29] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[10] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[15] ),
        .Q(p_2_in),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[11] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[20] ),
        .Q(\FSM_onehot_state_reg_n_0_[11] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[12] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[11] ),
        .Q(\FSM_onehot_state_reg_n_0_[12] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[13] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state[13]_i_1_n_0 ),
        .Q(JC_OBUF[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[14] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[12] ),
        .Q(\FSM_onehot_state_reg_n_0_[14] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[15] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state[15]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[15] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[16] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[24] ),
        .Q(\FSM_onehot_state_reg_n_0_[16] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[17] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[16] ),
        .Q(\FSM_onehot_state_reg_n_0_[17] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[18] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[17] ),
        .Q(\FSM_onehot_state_reg_n_0_[18] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[19] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[28] ),
        .Q(\FSM_onehot_state_reg_n_0_[19] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[20] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[23] ),
        .Q(\FSM_onehot_state_reg_n_0_[20] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[21] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[21] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[22] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[21] ),
        .Q(\FSM_onehot_state_reg_n_0_[22] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[23] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[23] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[24] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[25] ),
        .Q(\FSM_onehot_state_reg_n_0_[24] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[25] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[30] ),
        .Q(\FSM_onehot_state_reg_n_0_[25] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[26] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[14] ),
        .Q(\FSM_onehot_state_reg_n_0_[26] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[27] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[26] ),
        .Q(\FSM_onehot_state_reg_n_0_[27] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[28] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[28] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[29] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[18] ),
        .Q(\FSM_onehot_state_reg_n_0_[29] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[30] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[22] ),
        .Q(\FSM_onehot_state_reg_n_0_[30] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[31] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[27] ),
        .Q(\FSM_onehot_state_reg_n_0_[31] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[4] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[5] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[6] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[7] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[31] ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[8] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(p_2_in),
        .Q(p_3_in),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DisablePowerSave:00000000000000000000000000000100,SetContrastC:00000000000000000000000000000001,DisableScrolling:00000000000000000000000000000010,SetMultiplexRatio:00000000000000000000000000100000,SetNormalDisplay:00000000000000000000000010000000,SetRowAddress:00000000000000000000000100000000,SetColAddress:00000000000000000000010000000000,ReleaseReset:00000000000000000000100000000000,WaitNextFrame:00000000000000000000001000000000,EnableDriver:00000000000000000001000000000000,SetVCOMH:00000000000000010000000000000000,SendPixel:00000000000000000010000000000000,SetMasterCurrent:00000000000000100000000000000000,Reset:00000000000100000000000000000000,DisplayOn:00000000000010000000000000000000,SetDisplayClock:00000000001000000000000000000000,PrepareNextFrame:00000000000000001000000000000000,PowerUp:00000000100000000000000000000000,SetPrechargeLevel:00000001000000000000000000000000,SetPhaseAdjust:00000000000000000000000000001000,SetSecondPrechargeC:00000010000000000000000000000000,SetRemapDisplayFormat:00000100000000000000000000000000,VccEn:00010000000000000000000000000000,DisplayOff:00000000000000000100000000000000,SetContrastB:00100000000000000000000000000000,SetSecondPrechargeA:00000000010000000000000000000000,ClearScreen:00000000000000000000000000010000,SetContrastA:00000000000001000000000000000000,SetSecondPrechargeB:01000000000000000000000000000000,SetStartLine:00001000000000000000000000000000,SetMasterConfiguration:00000000000000000000000001000000,SetOffset:10000000000000000000000000000000" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDE_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[9] 
       (.C(CLK_6p25M_BUFG),
        .CE(state),
        .D(\FSM_onehot_state[9]_i_1_n_0 ),
        .Q(p_4_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \JC_OBUF[0]_inst_i_1 
       (.I0(spi_word_bit_count_reg__0[2]),
        .I1(spi_word_bit_count_reg__0[1]),
        .I2(spi_word_bit_count_reg__0[0]),
        .I3(spi_word_bit_count_reg__0[5]),
        .I4(spi_word_bit_count_reg__0[3]),
        .I5(spi_word_bit_count_reg__0[4]),
        .O(JC_OBUF[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \JC_OBUF[1]_inst_i_1 
       (.I0(\spi_word_reg_n_0_[39] ),
        .I1(spi_busy),
        .O(JC_OBUF[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \JC_OBUF[1]_inst_i_2 
       (.I0(spi_word_bit_count_reg__0[4]),
        .I1(spi_word_bit_count_reg__0[3]),
        .I2(spi_word_bit_count_reg__0[5]),
        .I3(spi_word_bit_count_reg__0[0]),
        .I4(spi_word_bit_count_reg__0[1]),
        .I5(spi_word_bit_count_reg__0[2]),
        .O(spi_busy));
  LUT1 #(
    .INIT(2'h1)) 
    \JC_OBUF[5]_inst_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[20] ),
        .O(JC_OBUF[1]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \JC_OBUF[6]_inst_i_1 
       (.I0(\JC_OBUF[6]_inst_i_2_n_0 ),
        .I1(JC_OBUF[2]),
        .I2(p_4_in),
        .I3(p_3_in),
        .I4(\FSM_onehot_state_reg_n_0_[19] ),
        .O(JC_OBUF[0]));
  LUT3 #(
    .INIT(8'hFE)) 
    \JC_OBUF[6]_inst_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[28] ),
        .I1(p_2_in),
        .I2(\FSM_onehot_state_reg_n_0_[15] ),
        .O(\JC_OBUF[6]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \delay[0]_i_1 
       (.I0(spi_word_bit_count_reg__0[4]),
        .I1(spi_word_bit_count_reg__0[3]),
        .I2(spi_word_bit_count_reg__0[2]),
        .I3(spi_word_bit_count_reg__0[1]),
        .I4(spi_word_bit_count_reg__0[5]),
        .O(\delay[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \delay[0]_i_4 
       (.I0(delay[11]),
        .I1(delay_reg[3]),
        .I2(p_1_in_0),
        .O(\delay[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF01000100)) 
    \delay[0]_i_5 
       (.I0(fsm_next_state[3]),
        .I1(fsm_next_state[4]),
        .I2(fsm_next_state[2]),
        .I3(fsm_next_state[0]),
        .I4(delay_reg[2]),
        .I5(p_1_in_0),
        .O(\delay[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF01000100)) 
    \delay[0]_i_6 
       (.I0(fsm_next_state[3]),
        .I1(fsm_next_state[4]),
        .I2(fsm_next_state[2]),
        .I3(fsm_next_state[0]),
        .I4(delay_reg[1]),
        .I5(p_1_in_0),
        .O(\delay[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0DDD0DDD)) 
    \delay[0]_i_7 
       (.I0(\spi_word[22]_i_3_n_0 ),
        .I1(fsm_next_state[1]),
        .I2(fsm_next_state[0]),
        .I3(\delay[0]_i_9_n_0 ),
        .I4(delay_reg[0]),
        .I5(p_1_in_0),
        .O(\delay[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h40104011)) 
    \delay[0]_i_8 
       (.I0(fsm_next_state[3]),
        .I1(fsm_next_state[4]),
        .I2(fsm_next_state[0]),
        .I3(fsm_next_state[2]),
        .I4(fsm_next_state[1]),
        .O(delay[11]));
  LUT3 #(
    .INIT(8'h09)) 
    \delay[0]_i_9 
       (.I0(fsm_next_state[4]),
        .I1(fsm_next_state[2]),
        .I2(fsm_next_state[3]),
        .O(\delay[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \delay[12]_i_2 
       (.I0(delay[6]),
        .I1(delay_reg[15]),
        .I2(p_1_in_0),
        .O(\delay[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0F44)) 
    \delay[12]_i_3 
       (.I0(fsm_next_state[3]),
        .I1(\delay[12]_i_6_n_0 ),
        .I2(delay_reg[14]),
        .I3(p_1_in_0),
        .O(\delay[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0FFFFF4400)) 
    \delay[12]_i_4 
       (.I0(fsm_next_state[1]),
        .I1(fsm_next_state[0]),
        .I2(delay_reg[13]),
        .I3(\spi_word_bit_count[5]_i_2_n_0 ),
        .I4(\delay[12]_i_7_n_0 ),
        .I5(p_1_in_0),
        .O(\delay[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \delay[12]_i_5 
       (.I0(delay_reg[12]),
        .I1(p_1_in_0),
        .O(\delay[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2051)) 
    \delay[12]_i_6 
       (.I0(fsm_next_state[2]),
        .I1(fsm_next_state[1]),
        .I2(fsm_next_state[0]),
        .I3(fsm_next_state[4]),
        .O(\delay[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \delay[12]_i_7 
       (.I0(fsm_next_state[0]),
        .I1(fsm_next_state[1]),
        .I2(fsm_next_state[4]),
        .I3(fsm_next_state[3]),
        .I4(fsm_next_state[2]),
        .O(\delay[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0F44)) 
    \delay[16]_i_2 
       (.I0(\spi_word[31]_i_3_n_0 ),
        .I1(\spi_word_bit_count[5]_i_2_n_0 ),
        .I2(delay_reg[19]),
        .I3(p_1_in_0),
        .O(\delay[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \delay[16]_i_3 
       (.I0(delay_reg[18]),
        .I1(p_1_in_0),
        .O(\delay[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \delay[16]_i_4 
       (.I0(delay_reg[17]),
        .I1(p_1_in_0),
        .O(\delay[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \delay[16]_i_5 
       (.I0(delay[6]),
        .I1(delay_reg[16]),
        .I2(p_1_in_0),
        .O(\delay[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \delay[4]_i_2 
       (.I0(delay_reg[7]),
        .I1(p_1_in_0),
        .O(\delay[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \delay[4]_i_3 
       (.I0(delay[6]),
        .I1(delay_reg[6]),
        .I2(p_1_in_0),
        .O(\delay[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \delay[4]_i_4 
       (.I0(delay[8]),
        .I1(delay_reg[5]),
        .I2(p_1_in_0),
        .O(\delay[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF01000100)) 
    \delay[4]_i_5 
       (.I0(fsm_next_state[3]),
        .I1(fsm_next_state[4]),
        .I2(fsm_next_state[2]),
        .I3(fsm_next_state[0]),
        .I4(delay_reg[4]),
        .I5(p_1_in_0),
        .O(\delay[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h20200001)) 
    \delay[4]_i_6 
       (.I0(fsm_next_state[2]),
        .I1(fsm_next_state[3]),
        .I2(fsm_next_state[4]),
        .I3(fsm_next_state[1]),
        .I4(fsm_next_state[0]),
        .O(delay[6]));
  LUT5 #(
    .INIT(32'h40050000)) 
    \delay[4]_i_7 
       (.I0(fsm_next_state[3]),
        .I1(fsm_next_state[1]),
        .I2(fsm_next_state[2]),
        .I3(fsm_next_state[4]),
        .I4(fsm_next_state[0]),
        .O(delay[8]));
  LUT3 #(
    .INIT(8'h3A)) 
    \delay[8]_i_2 
       (.I0(delay[11]),
        .I1(delay_reg[11]),
        .I2(p_1_in_0),
        .O(\delay[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \delay[8]_i_3 
       (.I0(delay_reg[10]),
        .I1(p_1_in_0),
        .O(\delay[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \delay[8]_i_4 
       (.I0(delay_reg[9]),
        .I1(p_1_in_0),
        .O(\delay[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \delay[8]_i_5 
       (.I0(delay[8]),
        .I1(delay_reg[8]),
        .I2(p_1_in_0),
        .O(\delay[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[0] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[0]_i_2_n_7 ),
        .Q(delay_reg[0]),
        .R(1'b0));
  CARRY4 \delay_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\delay_reg[0]_i_2_n_0 ,\NLW_delay_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({p_1_in_0,p_1_in_0,p_1_in_0,p_1_in_0}),
        .O({\delay_reg[0]_i_2_n_4 ,\delay_reg[0]_i_2_n_5 ,\delay_reg[0]_i_2_n_6 ,\delay_reg[0]_i_2_n_7 }),
        .S({\delay[0]_i_4_n_0 ,\delay[0]_i_5_n_0 ,\delay[0]_i_6_n_0 ,\delay[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[10] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[8]_i_1_n_5 ),
        .Q(delay_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[11] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[8]_i_1_n_4 ),
        .Q(delay_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[12] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[12]_i_1_n_7 ),
        .Q(delay_reg[12]),
        .R(1'b0));
  CARRY4 \delay_reg[12]_i_1 
       (.CI(\delay_reg[8]_i_1_n_0 ),
        .CO({\delay_reg[12]_i_1_n_0 ,\NLW_delay_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({p_1_in_0,p_1_in_0,p_1_in_0,p_1_in_0}),
        .O({\delay_reg[12]_i_1_n_4 ,\delay_reg[12]_i_1_n_5 ,\delay_reg[12]_i_1_n_6 ,\delay_reg[12]_i_1_n_7 }),
        .S({\delay[12]_i_2_n_0 ,\delay[12]_i_3_n_0 ,\delay[12]_i_4_n_0 ,\delay[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[13] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[12]_i_1_n_6 ),
        .Q(delay_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[14] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[12]_i_1_n_5 ),
        .Q(delay_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[15] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[12]_i_1_n_4 ),
        .Q(delay_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[16] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[16]_i_1_n_7 ),
        .Q(delay_reg[16]),
        .R(1'b0));
  CARRY4 \delay_reg[16]_i_1 
       (.CI(\delay_reg[12]_i_1_n_0 ),
        .CO(\NLW_delay_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in_0,p_1_in_0,p_1_in_0}),
        .O({\delay_reg[16]_i_1_n_4 ,\delay_reg[16]_i_1_n_5 ,\delay_reg[16]_i_1_n_6 ,\delay_reg[16]_i_1_n_7 }),
        .S({\delay[16]_i_2_n_0 ,\delay[16]_i_3_n_0 ,\delay[16]_i_4_n_0 ,\delay[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[17] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[16]_i_1_n_6 ),
        .Q(delay_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[18] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[16]_i_1_n_5 ),
        .Q(delay_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[19] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[16]_i_1_n_4 ),
        .Q(delay_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[1] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[0]_i_2_n_6 ),
        .Q(delay_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[2] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[0]_i_2_n_5 ),
        .Q(delay_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[3] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[0]_i_2_n_4 ),
        .Q(delay_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[4] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[4]_i_1_n_7 ),
        .Q(delay_reg[4]),
        .R(1'b0));
  CARRY4 \delay_reg[4]_i_1 
       (.CI(\delay_reg[0]_i_2_n_0 ),
        .CO({\delay_reg[4]_i_1_n_0 ,\NLW_delay_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({p_1_in_0,p_1_in_0,p_1_in_0,p_1_in_0}),
        .O({\delay_reg[4]_i_1_n_4 ,\delay_reg[4]_i_1_n_5 ,\delay_reg[4]_i_1_n_6 ,\delay_reg[4]_i_1_n_7 }),
        .S({\delay[4]_i_2_n_0 ,\delay[4]_i_3_n_0 ,\delay[4]_i_4_n_0 ,\delay[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[5] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[4]_i_1_n_6 ),
        .Q(delay_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[6] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[4]_i_1_n_5 ),
        .Q(delay_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[7] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[4]_i_1_n_4 ),
        .Q(delay_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[8] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[8]_i_1_n_7 ),
        .Q(delay_reg[8]),
        .R(1'b0));
  CARRY4 \delay_reg[8]_i_1 
       (.CI(\delay_reg[4]_i_1_n_0 ),
        .CO({\delay_reg[8]_i_1_n_0 ,\NLW_delay_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({p_1_in_0,p_1_in_0,p_1_in_0,p_1_in_0}),
        .O({\delay_reg[8]_i_1_n_4 ,\delay_reg[8]_i_1_n_5 ,\delay_reg[8]_i_1_n_6 ,\delay_reg[8]_i_1_n_7 }),
        .S({\delay[8]_i_2_n_0 ,\delay[8]_i_3_n_0 ,\delay[8]_i_4_n_0 ,\delay[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \delay_reg[9] 
       (.C(p_1_in),
        .CE(\delay[0]_i_1_n_0 ),
        .D(\delay_reg[8]_i_1_n_6 ),
        .Q(delay_reg[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_counter[0]_i_1 
       (.I0(\frame_counter_reg_n_0_[0] ),
        .O(\frame_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \frame_counter[16]_i_1 
       (.I0(\frame_counter[16]_i_3_n_0 ),
        .I1(p_0_in[4]),
        .I2(\FSM_onehot_state[13]_i_4_n_0 ),
        .I3(\frame_counter_reg_n_0_[1] ),
        .I4(p_0_in[7]),
        .O(\frame_counter[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \frame_counter[16]_i_3 
       (.I0(\frame_counter[16]_i_4_n_0 ),
        .I1(p_0_in[10]),
        .I2(\frame_counter_reg_n_0_[2] ),
        .I3(p_0_in[9]),
        .I4(\frame_counter_reg_n_0_[0] ),
        .I5(p_0_in[11]),
        .O(\frame_counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \frame_counter[16]_i_4 
       (.I0(\frame_counter_reg_n_0_[3] ),
        .I1(p_0_in[0]),
        .O(\frame_counter[16]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[0] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\frame_counter[0]_i_1_n_0 ),
        .Q(\frame_counter_reg_n_0_[0] ),
        .R(\frame_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[10] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[10]),
        .Q(p_0_in[6]),
        .R(\frame_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[11] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[11]),
        .Q(p_0_in[7]),
        .R(\frame_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[12] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[12]),
        .Q(p_0_in[8]),
        .R(\frame_counter[16]_i_1_n_0 ));
  CARRY4 \frame_counter_reg[12]_i_1 
       (.CI(\frame_counter_reg[8]_i_1_n_0 ),
        .CO({\frame_counter_reg[12]_i_1_n_0 ,\NLW_frame_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(p_0_in[8:5]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[13] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[13]),
        .Q(p_0_in[9]),
        .R(\frame_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[14] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[14]),
        .Q(p_0_in[10]),
        .R(\frame_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[15] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[15]),
        .Q(p_0_in[11]),
        .R(\frame_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[16] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[16]),
        .Q(p_0_in[12]),
        .R(\frame_counter[16]_i_1_n_0 ));
  CARRY4 \frame_counter_reg[16]_i_2 
       (.CI(\frame_counter_reg[12]_i_1_n_0 ),
        .CO(\NLW_frame_counter_reg[16]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(p_0_in[12:9]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[1] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(\frame_counter_reg_n_0_[1] ),
        .R(\frame_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[2] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(\frame_counter_reg_n_0_[2] ),
        .R(\frame_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[3] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(\frame_counter_reg_n_0_[3] ),
        .R(\frame_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[4] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(p_0_in[0]),
        .R(\frame_counter[16]_i_1_n_0 ));
  CARRY4 \frame_counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\frame_counter_reg[4]_i_1_n_0 ,\NLW_frame_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\frame_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({p_0_in[0],\frame_counter_reg_n_0_[3] ,\frame_counter_reg_n_0_[2] ,\frame_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[5] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(p_0_in[1]),
        .R(\frame_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[6] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(p_0_in[2]),
        .R(\frame_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[7] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(p_0_in[3]),
        .R(\frame_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[8] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[8]),
        .Q(p_0_in[4]),
        .R(\frame_counter[16]_i_1_n_0 ));
  CARRY4 \frame_counter_reg[8]_i_1 
       (.CI(\frame_counter_reg[4]_i_1_n_0 ),
        .CO({\frame_counter_reg[8]_i_1_n_0 ,\NLW_frame_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(p_0_in[4:1]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \frame_counter_reg[9] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(p_0_in[5]),
        .R(\frame_counter[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \spi_word[0]_i_1 
       (.I0(p_0_in__1),
        .I1(\spi_word[25]_i_2_n_0 ),
        .I2(fsm_next_state[2]),
        .I3(fsm_next_state[3]),
        .I4(\spi_word[22]_i_2_n_0 ),
        .I5(p_1_in_0),
        .O(\spi_word[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \spi_word[10]_i_1 
       (.I0(\spi_word_reg_n_0_[9] ),
        .I1(p_0_in__1),
        .I2(\spi_word[25]_i_2_n_0 ),
        .I3(fsm_next_state[2]),
        .I4(fsm_next_state[3]),
        .I5(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \spi_word[11]_i_1 
       (.I0(\spi_word_reg_n_0_[10] ),
        .I1(p_0_in__1),
        .I2(\spi_word[25]_i_2_n_0 ),
        .I3(fsm_next_state[2]),
        .I4(fsm_next_state[3]),
        .I5(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \spi_word[12]_i_1 
       (.I0(\spi_word_reg_n_0_[11] ),
        .I1(p_0_in__1),
        .I2(\spi_word[25]_i_2_n_0 ),
        .I3(fsm_next_state[2]),
        .I4(fsm_next_state[3]),
        .I5(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \spi_word[13]_i_1 
       (.I0(spi_word_bit_count_reg__0[4]),
        .I1(spi_word_bit_count_reg__0[3]),
        .I2(spi_word_bit_count_reg__0[2]),
        .I3(spi_word_bit_count_reg__0[1]),
        .I4(spi_word_bit_count_reg__0[5]),
        .I5(\spi_word_reg_n_0_[12] ),
        .O(\spi_word[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \spi_word[14]_i_1 
       (.I0(\spi_word_reg_n_0_[13] ),
        .I1(p_0_in__1),
        .I2(\spi_word[25]_i_2_n_0 ),
        .I3(fsm_next_state[2]),
        .I4(fsm_next_state[3]),
        .I5(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spi_word[14]_i_2 
       (.I0(\spi_word[38]_i_6_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[15]_i_2_n_0 ),
        .I3(\spi_word[38]_i_7_n_0 ),
        .O(fsm_next_state[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spi_word[14]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[21] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\spi_word[14]_i_4_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[22] ),
        .I4(\spi_word[14]_i_5_n_0 ),
        .I5(\spi_word[14]_i_6_n_0 ),
        .O(fsm_next_state[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \spi_word[14]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[29] ),
        .I1(\FSM_onehot_state_reg_n_0_[25] ),
        .O(\spi_word[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \spi_word[14]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[30] ),
        .I2(\FSM_onehot_state_reg_n_0_[31] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\spi_word[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spi_word[14]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[16] ),
        .I3(\FSM_onehot_state_reg_n_0_[17] ),
        .I4(\FSM_onehot_state_reg_n_0_[24] ),
        .I5(\FSM_onehot_state_reg_n_0_[18] ),
        .O(\spi_word[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \spi_word[15]_i_1 
       (.I0(spi_word_bit_count_reg__0[4]),
        .I1(spi_word_bit_count_reg__0[3]),
        .I2(spi_word_bit_count_reg__0[2]),
        .I3(spi_word_bit_count_reg__0[1]),
        .I4(spi_word_bit_count_reg__0[5]),
        .I5(\spi_word_reg_n_0_[14] ),
        .O(\spi_word[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \spi_word[16]_i_1 
       (.I0(\spi_word_reg_n_0_[15] ),
        .I1(p_0_in__1),
        .I2(\spi_word[22]_i_3_n_0 ),
        .I3(fsm_next_state[1]),
        .I4(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \spi_word[17]_i_1 
       (.I0(\spi_word_reg_n_0_[16] ),
        .I1(p_0_in__1),
        .I2(\spi_word[22]_i_3_n_0 ),
        .I3(fsm_next_state[1]),
        .I4(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \spi_word[18]_i_1 
       (.I0(\spi_word_reg_n_0_[17] ),
        .I1(p_0_in__1),
        .I2(\spi_word[22]_i_3_n_0 ),
        .I3(fsm_next_state[1]),
        .I4(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \spi_word[19]_i_1 
       (.I0(\spi_word_reg_n_0_[18] ),
        .I1(p_0_in__1),
        .I2(\spi_word[22]_i_3_n_0 ),
        .I3(fsm_next_state[1]),
        .I4(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \spi_word[1]_i_1 
       (.I0(\spi_word_reg_n_0_[0] ),
        .I1(p_0_in__1),
        .I2(\spi_word[25]_i_2_n_0 ),
        .I3(fsm_next_state[2]),
        .I4(fsm_next_state[3]),
        .I5(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \spi_word[20]_i_1 
       (.I0(\spi_word_reg_n_0_[19] ),
        .I1(p_0_in__1),
        .I2(\spi_word[22]_i_3_n_0 ),
        .I3(fsm_next_state[1]),
        .I4(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spi_word[20]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state[15]_i_2_n_0 ),
        .I2(\spi_word[20]_i_3_n_0 ),
        .I3(\spi_word[20]_i_4_n_0 ),
        .O(fsm_next_state[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spi_word[20]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[14] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(\spi_word[39]_i_9_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[19] ),
        .I5(\FSM_onehot_state_reg_n_0_[18] ),
        .O(\spi_word[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \spi_word[20]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\FSM_onehot_state_reg_n_0_[20] ),
        .I3(\JC_OBUF[6]_inst_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\spi_word[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA0C00)) 
    \spi_word[21]_i_1 
       (.I0(\spi_word_reg_n_0_[20] ),
        .I1(\spi_word[22]_i_3_n_0 ),
        .I2(\spi_word[31]_i_3_n_0 ),
        .I3(\spi_word[22]_i_2_n_0 ),
        .I4(p_0_in__1),
        .O(\spi_word[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0ACA0)) 
    \spi_word[22]_i_1 
       (.I0(\spi_word_reg_n_0_[21] ),
        .I1(\spi_word[22]_i_2_n_0 ),
        .I2(p_0_in__1),
        .I3(\spi_word[22]_i_3_n_0 ),
        .I4(\spi_word[31]_i_7_n_0 ),
        .O(\spi_word[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \spi_word[22]_i_2 
       (.I0(\spi_word[38]_i_4_n_0 ),
        .I1(\spi_word[38]_i_3_n_0 ),
        .O(\spi_word[22]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \spi_word[22]_i_3 
       (.I0(fsm_next_state[2]),
        .I1(fsm_next_state[3]),
        .O(\spi_word[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \spi_word[23]_i_1 
       (.I0(spi_word_bit_count_reg__0[4]),
        .I1(spi_word_bit_count_reg__0[3]),
        .I2(spi_word_bit_count_reg__0[2]),
        .I3(spi_word_bit_count_reg__0[1]),
        .I4(spi_word_bit_count_reg__0[5]),
        .I5(\spi_word_reg_n_0_[22] ),
        .O(\spi_word[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_word[24]_i_1 
       (.I0(\spi_word_reg_n_0_[23] ),
        .I1(p_0_in__1),
        .I2(spi_word[24]),
        .O(\spi_word[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00888A10)) 
    \spi_word[24]_i_2 
       (.I0(fsm_next_state[3]),
        .I1(fsm_next_state[2]),
        .I2(fsm_next_state[4]),
        .I3(fsm_next_state[1]),
        .I4(fsm_next_state[0]),
        .O(spi_word[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F00200)) 
    \spi_word[25]_i_1 
       (.I0(\spi_word[38]_i_3_n_0 ),
        .I1(\spi_word[38]_i_4_n_0 ),
        .I2(p_0_in__1),
        .I3(\spi_word[25]_i_2_n_0 ),
        .I4(\spi_word_reg_n_0_[24] ),
        .I5(\spi_word[25]_i_3_n_0 ),
        .O(\spi_word[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \spi_word[25]_i_2 
       (.I0(fsm_next_state[0]),
        .I1(fsm_next_state[1]),
        .O(\spi_word[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0410040004010100)) 
    \spi_word[25]_i_3 
       (.I0(p_0_in__1),
        .I1(fsm_next_state[3]),
        .I2(fsm_next_state[2]),
        .I3(fsm_next_state[4]),
        .I4(fsm_next_state[1]),
        .I5(fsm_next_state[0]),
        .O(\spi_word[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_word[26]_i_1 
       (.I0(\spi_word_reg_n_0_[25] ),
        .I1(p_0_in__1),
        .I2(spi_word[26]),
        .O(\spi_word[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4B01C400)) 
    \spi_word[26]_i_2 
       (.I0(fsm_next_state[1]),
        .I1(fsm_next_state[0]),
        .I2(fsm_next_state[2]),
        .I3(fsm_next_state[3]),
        .I4(fsm_next_state[4]),
        .O(spi_word[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_word[27]_i_1 
       (.I0(\spi_word_reg_n_0_[26] ),
        .I1(p_0_in__1),
        .I2(spi_word[27]),
        .O(\spi_word[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4C01A900)) 
    \spi_word[27]_i_2 
       (.I0(fsm_next_state[2]),
        .I1(fsm_next_state[0]),
        .I2(fsm_next_state[1]),
        .I3(fsm_next_state[3]),
        .I4(fsm_next_state[4]),
        .O(spi_word[27]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_word[28]_i_1 
       (.I0(\spi_word_reg_n_0_[27] ),
        .I1(p_0_in__1),
        .I2(spi_word[28]),
        .O(\spi_word[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEC015990)) 
    \spi_word[28]_i_2 
       (.I0(fsm_next_state[2]),
        .I1(fsm_next_state[0]),
        .I2(fsm_next_state[1]),
        .I3(fsm_next_state[3]),
        .I4(fsm_next_state[4]),
        .O(spi_word[28]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_word[29]_i_1 
       (.I0(\spi_word_reg_n_0_[28] ),
        .I1(p_0_in__1),
        .I2(spi_word[29]),
        .O(\spi_word[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1C04CC0C)) 
    \spi_word[29]_i_2 
       (.I0(fsm_next_state[4]),
        .I1(fsm_next_state[3]),
        .I2(fsm_next_state[2]),
        .I3(fsm_next_state[0]),
        .I4(fsm_next_state[1]),
        .O(spi_word[29]));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \spi_word[2]_i_1 
       (.I0(\spi_word_reg_n_0_[1] ),
        .I1(p_0_in__1),
        .I2(\spi_word[25]_i_2_n_0 ),
        .I3(fsm_next_state[2]),
        .I4(fsm_next_state[3]),
        .I5(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF1F00100)) 
    \spi_word[30]_i_1 
       (.I0(\spi_word[38]_i_4_n_0 ),
        .I1(\spi_word[38]_i_3_n_0 ),
        .I2(p_0_in__1),
        .I3(\spi_word[31]_i_7_n_0 ),
        .I4(\spi_word_reg_n_0_[29] ),
        .I5(\spi_word[30]_i_2_n_0 ),
        .O(\spi_word[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4004000040001000)) 
    \spi_word[30]_i_2 
       (.I0(p_0_in__1),
        .I1(fsm_next_state[2]),
        .I2(fsm_next_state[3]),
        .I3(fsm_next_state[4]),
        .I4(fsm_next_state[0]),
        .I5(fsm_next_state[1]),
        .O(\spi_word[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2F2F2FFF2F2F2)) 
    \spi_word[31]_i_1 
       (.I0(\spi_word[31]_i_2_n_0 ),
        .I1(\spi_word[31]_i_3_n_0 ),
        .I2(\spi_word[31]_i_4_n_0 ),
        .I3(\spi_word[31]_i_5_n_0 ),
        .I4(\spi_word[31]_i_6_n_0 ),
        .I5(\spi_word[31]_i_7_n_0 ),
        .O(\spi_word[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spi_word[31]_i_2 
       (.I0(\spi_word[38]_i_4_n_0 ),
        .I1(spi_word_bit_count_reg__0[4]),
        .I2(spi_word_bit_count_reg__0[3]),
        .I3(spi_word_bit_count_reg__0[2]),
        .I4(spi_word_bit_count_reg__0[1]),
        .I5(spi_word_bit_count_reg__0[5]),
        .O(\spi_word[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \spi_word[31]_i_3 
       (.I0(fsm_next_state[0]),
        .I1(fsm_next_state[1]),
        .O(\spi_word[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \spi_word[31]_i_4 
       (.I0(\spi_word_reg_n_0_[30] ),
        .I1(spi_word_bit_count_reg__0[4]),
        .I2(spi_word_bit_count_reg__0[3]),
        .I3(spi_word_bit_count_reg__0[2]),
        .I4(spi_word_bit_count_reg__0[1]),
        .I5(spi_word_bit_count_reg__0[5]),
        .O(\spi_word[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \spi_word[31]_i_5 
       (.I0(\spi_word[38]_i_3_n_0 ),
        .I1(\spi_word[38]_i_4_n_0 ),
        .I2(p_0_in__1),
        .O(\spi_word[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \spi_word[31]_i_6 
       (.I0(\spi_word[38]_i_7_n_0 ),
        .I1(\FSM_onehot_state[15]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\spi_word[38]_i_6_n_0 ),
        .I4(fsm_next_state[3]),
        .O(\spi_word[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \spi_word[31]_i_7 
       (.I0(fsm_next_state[0]),
        .I1(fsm_next_state[1]),
        .O(\spi_word[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_word[32]_i_1 
       (.I0(\spi_word_reg_n_0_[31] ),
        .I1(p_0_in__1),
        .I2(spi_word[32]),
        .O(\spi_word[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h698A68F4)) 
    \spi_word[32]_i_2 
       (.I0(fsm_next_state[4]),
        .I1(fsm_next_state[3]),
        .I2(fsm_next_state[1]),
        .I3(fsm_next_state[0]),
        .I4(fsm_next_state[2]),
        .O(spi_word[32]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_word[33]_i_1 
       (.I0(\spi_word_reg_n_0_[32] ),
        .I1(p_0_in__1),
        .I2(spi_word[33]),
        .O(\spi_word[33]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCE800D30)) 
    \spi_word[33]_i_2 
       (.I0(fsm_next_state[1]),
        .I1(fsm_next_state[0]),
        .I2(fsm_next_state[2]),
        .I3(fsm_next_state[3]),
        .I4(fsm_next_state[4]),
        .O(spi_word[33]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_word[34]_i_1 
       (.I0(\spi_word_reg_n_0_[33] ),
        .I1(p_0_in__1),
        .I2(spi_word[34]),
        .O(\spi_word[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1D9C9044)) 
    \spi_word[34]_i_2 
       (.I0(fsm_next_state[0]),
        .I1(fsm_next_state[1]),
        .I2(fsm_next_state[2]),
        .I3(fsm_next_state[3]),
        .I4(fsm_next_state[4]),
        .O(spi_word[34]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_word[35]_i_1 
       (.I0(\spi_word_reg_n_0_[34] ),
        .I1(p_0_in__1),
        .I2(spi_word[35]),
        .O(\spi_word[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h614081CC)) 
    \spi_word[35]_i_2 
       (.I0(fsm_next_state[4]),
        .I1(fsm_next_state[3]),
        .I2(fsm_next_state[0]),
        .I3(fsm_next_state[1]),
        .I4(fsm_next_state[2]),
        .O(spi_word[35]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_word[36]_i_1 
       (.I0(\spi_word_reg_n_0_[35] ),
        .I1(p_0_in__1),
        .I2(spi_word[36]),
        .O(\spi_word[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0040E870)) 
    \spi_word[36]_i_2 
       (.I0(fsm_next_state[4]),
        .I1(fsm_next_state[3]),
        .I2(fsm_next_state[1]),
        .I3(fsm_next_state[0]),
        .I4(fsm_next_state[2]),
        .O(spi_word[36]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_word[37]_i_1 
       (.I0(\spi_word_reg_n_0_[36] ),
        .I1(p_0_in__1),
        .I2(spi_word[37]),
        .O(\spi_word[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7E2C0FCC)) 
    \spi_word[37]_i_2 
       (.I0(fsm_next_state[3]),
        .I1(fsm_next_state[2]),
        .I2(fsm_next_state[4]),
        .I3(fsm_next_state[1]),
        .I4(fsm_next_state[0]),
        .O(spi_word[37]));
  LUT6 #(
    .INIT(64'hFFFFE0200000E020)) 
    \spi_word[38]_i_1 
       (.I0(\spi_word[38]_i_2_n_0 ),
        .I1(\spi_word[38]_i_3_n_0 ),
        .I2(\spi_word[38]_i_4_n_0 ),
        .I3(\spi_word[38]_i_5_n_0 ),
        .I4(p_0_in__1),
        .I5(\spi_word_reg_n_0_[37] ),
        .O(\spi_word[38]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \spi_word[38]_i_2 
       (.I0(fsm_next_state[0]),
        .I1(fsm_next_state[1]),
        .I2(fsm_next_state[2]),
        .O(\spi_word[38]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \spi_word[38]_i_3 
       (.I0(fsm_next_state[3]),
        .I1(\spi_word[38]_i_6_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state[15]_i_2_n_0 ),
        .I4(\spi_word[38]_i_7_n_0 ),
        .I5(fsm_next_state[4]),
        .O(\spi_word[38]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \spi_word[38]_i_4 
       (.I0(fsm_next_state[4]),
        .I1(fsm_next_state[3]),
        .O(\spi_word[38]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \spi_word[38]_i_5 
       (.I0(fsm_next_state[3]),
        .I1(fsm_next_state[2]),
        .I2(fsm_next_state[1]),
        .I3(fsm_next_state[0]),
        .O(\spi_word[38]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spi_word[38]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[28] ),
        .I3(\FSM_onehot_state_reg_n_0_[29] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\spi_word[38]_i_8_n_0 ),
        .O(\spi_word[38]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spi_word[38]_i_7 
       (.I0(\FSM_onehot_state_reg_n_0_[31] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state_reg_n_0_[26] ),
        .I3(\FSM_onehot_state_reg_n_0_[27] ),
        .O(\spi_word[38]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spi_word[38]_i_8 
       (.I0(\FSM_onehot_state_reg_n_0_[19] ),
        .I1(\FSM_onehot_state_reg_n_0_[18] ),
        .I2(\FSM_onehot_state_reg_n_0_[12] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[14] ),
        .I5(\FSM_onehot_state_reg_n_0_[17] ),
        .O(\spi_word[38]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \spi_word[39]_i_1 
       (.I0(p_1_in_0),
        .I1(spi_word_bit_count_reg__0[4]),
        .I2(spi_word_bit_count_reg__0[3]),
        .I3(spi_word_bit_count_reg__0[2]),
        .I4(spi_word_bit_count_reg__0[1]),
        .I5(spi_word_bit_count_reg__0[5]),
        .O(\spi_word[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spi_word[39]_i_10 
       (.I0(p_3_in),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[28] ),
        .I3(p_2_in),
        .I4(\FSM_onehot_state_reg_n_0_[15] ),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\spi_word[39]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spi_word[39]_i_11 
       (.I0(\FSM_onehot_state_reg_n_0_[20] ),
        .I1(\FSM_onehot_state_reg_n_0_[18] ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[14] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(\spi_word[39]_i_12_n_0 ),
        .O(\spi_word[39]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spi_word[39]_i_12 
       (.I0(\FSM_onehot_state_reg_n_0_[21] ),
        .I1(\FSM_onehot_state_reg_n_0_[23] ),
        .I2(p_2_in),
        .I3(\FSM_onehot_state_reg_n_0_[28] ),
        .I4(\FSM_onehot_state_reg_n_0_[29] ),
        .I5(\FSM_onehot_state_reg_n_0_[25] ),
        .O(\spi_word[39]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_word[39]_i_2 
       (.I0(\spi_word_reg_n_0_[38] ),
        .I1(p_0_in__1),
        .I2(spi_word[39]),
        .O(\spi_word[39]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \spi_word[39]_i_3 
       (.I0(spi_word_bit_count_reg__0[5]),
        .I1(spi_word_bit_count_reg__0[1]),
        .I2(spi_word_bit_count_reg__0[2]),
        .I3(spi_word_bit_count_reg__0[3]),
        .I4(spi_word_bit_count_reg__0[4]),
        .O(p_0_in__1));
  LUT5 #(
    .INIT(32'hEEAEAF2E)) 
    \spi_word[39]_i_4 
       (.I0(fsm_next_state[3]),
        .I1(fsm_next_state[2]),
        .I2(fsm_next_state[4]),
        .I3(fsm_next_state[1]),
        .I4(fsm_next_state[0]),
        .O(spi_word[39]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spi_word[39]_i_5 
       (.I0(\spi_word[39]_i_7_n_0 ),
        .I1(\spi_word[39]_i_8_n_0 ),
        .I2(p_4_in),
        .I3(\spi_word[39]_i_9_n_0 ),
        .I4(\spi_word[14]_i_4_n_0 ),
        .I5(\spi_word[39]_i_10_n_0 ),
        .O(fsm_next_state[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spi_word[39]_i_6 
       (.I0(\spi_word[39]_i_11_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state[9]_i_1_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[26] ),
        .I4(\FSM_onehot_state_reg_n_0_[24] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(fsm_next_state[0]));
  LUT3 #(
    .INIT(8'hFE)) 
    \spi_word[39]_i_7 
       (.I0(\FSM_onehot_state_reg_n_0_[30] ),
        .I1(JC_OBUF[2]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\spi_word[39]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \spi_word[39]_i_8 
       (.I0(\FSM_onehot_state_reg_n_0_[19] ),
        .I1(\FSM_onehot_state_reg_n_0_[18] ),
        .O(\spi_word[39]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \spi_word[39]_i_9 
       (.I0(\FSM_onehot_state_reg_n_0_[16] ),
        .I1(\FSM_onehot_state_reg_n_0_[17] ),
        .I2(\FSM_onehot_state_reg_n_0_[24] ),
        .O(\spi_word[39]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \spi_word[3]_i_1 
       (.I0(\spi_word_reg_n_0_[2] ),
        .I1(p_0_in__1),
        .I2(\spi_word[25]_i_2_n_0 ),
        .I3(fsm_next_state[2]),
        .I4(fsm_next_state[3]),
        .I5(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \spi_word[4]_i_1 
       (.I0(\spi_word_reg_n_0_[3] ),
        .I1(p_0_in__1),
        .I2(\spi_word[25]_i_2_n_0 ),
        .I3(fsm_next_state[2]),
        .I4(fsm_next_state[3]),
        .I5(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \spi_word[5]_i_1 
       (.I0(\spi_word_reg_n_0_[4] ),
        .I1(p_0_in__1),
        .I2(\spi_word[25]_i_2_n_0 ),
        .I3(fsm_next_state[2]),
        .I4(fsm_next_state[3]),
        .I5(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \spi_word[6]_i_1 
       (.I0(spi_word_bit_count_reg__0[4]),
        .I1(spi_word_bit_count_reg__0[3]),
        .I2(spi_word_bit_count_reg__0[2]),
        .I3(spi_word_bit_count_reg__0[1]),
        .I4(spi_word_bit_count_reg__0[5]),
        .I5(\spi_word_reg_n_0_[5] ),
        .O(\spi_word[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \spi_word[7]_i_1 
       (.I0(spi_word_bit_count_reg__0[4]),
        .I1(spi_word_bit_count_reg__0[3]),
        .I2(spi_word_bit_count_reg__0[2]),
        .I3(spi_word_bit_count_reg__0[1]),
        .I4(spi_word_bit_count_reg__0[5]),
        .I5(\spi_word_reg_n_0_[6] ),
        .O(\spi_word[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \spi_word[8]_i_1 
       (.I0(\spi_word_reg_n_0_[7] ),
        .I1(p_0_in__1),
        .I2(\spi_word[25]_i_2_n_0 ),
        .I3(fsm_next_state[2]),
        .I4(fsm_next_state[3]),
        .I5(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \spi_word[9]_i_1 
       (.I0(\spi_word_reg_n_0_[8] ),
        .I1(p_0_in__1),
        .I2(\spi_word[25]_i_2_n_0 ),
        .I3(fsm_next_state[2]),
        .I4(fsm_next_state[3]),
        .I5(\spi_word[22]_i_2_n_0 ),
        .O(\spi_word[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \spi_word_bit_count[0]_i_1 
       (.I0(spi_word_bit_count_reg__0[4]),
        .I1(spi_word_bit_count_reg__0[3]),
        .I2(spi_word_bit_count_reg__0[2]),
        .I3(spi_word_bit_count_reg__0[1]),
        .I4(spi_word_bit_count_reg__0[5]),
        .I5(spi_word_bit_count_reg__0[0]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'h9999999999999998)) 
    \spi_word_bit_count[1]_i_1 
       (.I0(spi_word_bit_count_reg__0[0]),
        .I1(spi_word_bit_count_reg__0[1]),
        .I2(spi_word_bit_count_reg__0[5]),
        .I3(spi_word_bit_count_reg__0[2]),
        .I4(spi_word_bit_count_reg__0[3]),
        .I5(spi_word_bit_count_reg__0[4]),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'hF0F0F0F0C3C3C3C2)) 
    \spi_word_bit_count[2]_i_1 
       (.I0(spi_word_bit_count_reg__0[5]),
        .I1(spi_word_bit_count_reg__0[1]),
        .I2(spi_word_bit_count_reg__0[2]),
        .I3(spi_word_bit_count_reg__0[3]),
        .I4(spi_word_bit_count_reg__0[4]),
        .I5(spi_word_bit_count_reg__0[0]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'hE2E2E2E2E2E2E22E)) 
    \spi_word_bit_count[3]_i_1 
       (.I0(\spi_word_bit_count[3]_i_2_n_0 ),
        .I1(p_0_in__1),
        .I2(spi_word_bit_count_reg__0[3]),
        .I3(spi_word_bit_count_reg__0[2]),
        .I4(spi_word_bit_count_reg__0[1]),
        .I5(spi_word_bit_count_reg__0[0]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'h0404B440)) 
    \spi_word_bit_count[3]_i_2 
       (.I0(fsm_next_state[0]),
        .I1(fsm_next_state[2]),
        .I2(fsm_next_state[1]),
        .I3(fsm_next_state[4]),
        .I4(fsm_next_state[3]),
        .O(\spi_word_bit_count[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCA3A)) 
    \spi_word_bit_count[4]_i_1 
       (.I0(\spi_word_bit_count[4]_i_2_n_0 ),
        .I1(\spi_word_bit_count[5]_i_3_n_0 ),
        .I2(p_0_in__1),
        .I3(spi_word_bit_count_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT5 #(
    .INIT(32'hCE8FFC9E)) 
    \spi_word_bit_count[4]_i_2 
       (.I0(fsm_next_state[1]),
        .I1(fsm_next_state[3]),
        .I2(fsm_next_state[2]),
        .I3(fsm_next_state[0]),
        .I4(fsm_next_state[4]),
        .O(\spi_word_bit_count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF04444000F4444)) 
    \spi_word_bit_count[5]_i_1 
       (.I0(\spi_word[25]_i_2_n_0 ),
        .I1(\spi_word_bit_count[5]_i_2_n_0 ),
        .I2(\spi_word_bit_count[5]_i_3_n_0 ),
        .I3(spi_word_bit_count_reg__0[4]),
        .I4(p_0_in__1),
        .I5(spi_word_bit_count_reg__0[5]),
        .O(p_0_in__0[5]));
  LUT3 #(
    .INIT(8'h40)) 
    \spi_word_bit_count[5]_i_2 
       (.I0(fsm_next_state[3]),
        .I1(fsm_next_state[2]),
        .I2(fsm_next_state[4]),
        .O(\spi_word_bit_count[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spi_word_bit_count[5]_i_3 
       (.I0(spi_word_bit_count_reg__0[3]),
        .I1(spi_word_bit_count_reg__0[2]),
        .I2(spi_word_bit_count_reg__0[1]),
        .I3(spi_word_bit_count_reg__0[0]),
        .O(\spi_word_bit_count[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_bit_count_reg[0] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(spi_word_bit_count_reg__0[0]),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_bit_count_reg[1] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(spi_word_bit_count_reg__0[1]),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_bit_count_reg[2] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(spi_word_bit_count_reg__0[2]),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_bit_count_reg[3] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(spi_word_bit_count_reg__0[3]),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_bit_count_reg[4] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(spi_word_bit_count_reg__0[4]),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_bit_count_reg[5] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(spi_word_bit_count_reg__0[5]),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[0] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[0]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[10] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[10]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[10] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[11] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[11]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[11] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[12] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[12]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[12] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[13] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[13]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[13] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[14] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[14]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[14] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[15] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[15]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[15] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[16] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[16]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[16] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[17] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[17]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[17] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[18] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[18]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[18] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[19] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[19]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[19] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[1] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[1]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[1] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[20] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[20]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[20] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[21] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[21]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[21] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[22] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[22]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[22] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[23] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[23]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[23] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[24] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[24]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[24] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[25] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[25]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[25] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[26] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[26]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[26] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[27] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[27]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[27] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[28] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[28]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[28] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[29] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[29]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[29] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[2] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[2]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[2] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[30] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[30]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[30] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[31] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[31]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[31] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[32] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[32]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[32] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[33] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[33]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[33] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[34] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[34]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[34] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[35] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[35]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[35] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[36] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[36]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[36] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[37] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[37]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[37] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[38] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[38]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[38] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[39] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[39]_i_2_n_0 ),
        .Q(\spi_word_reg_n_0_[39] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[3] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[3]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[3] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[4] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[4]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[4] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[5] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[5]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[5] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[6] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[6]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[6] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[7] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[7]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[7] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[8] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[8]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[8] ),
        .R(\spi_word[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_word_reg[9] 
       (.C(CLK_6p25M_BUFG),
        .CE(1'b1),
        .D(\spi_word[9]_i_1_n_0 ),
        .Q(\spi_word_reg_n_0_[9] ),
        .R(\spi_word[39]_i_1_n_0 ));
endmodule

module flexi_clock_D
   (JC_OBUF,
    CLK_6p25M,
    spi_busy,
    CLOCK);
  output [0:0]JC_OBUF;
  output CLK_6p25M;
  input spi_busy;
  input CLOCK;

  wire CLK_6p25M;
  wire CLOCK;
  wire \COUNT[0]_i_2_n_0 ;
  wire [31:0]COUNT_reg;
  wire \COUNT_reg[0]_i_1_n_0 ;
  wire \COUNT_reg[0]_i_1_n_4 ;
  wire \COUNT_reg[0]_i_1_n_5 ;
  wire \COUNT_reg[0]_i_1_n_6 ;
  wire \COUNT_reg[0]_i_1_n_7 ;
  wire \COUNT_reg[12]_i_1_n_0 ;
  wire \COUNT_reg[12]_i_1_n_4 ;
  wire \COUNT_reg[12]_i_1_n_5 ;
  wire \COUNT_reg[12]_i_1_n_6 ;
  wire \COUNT_reg[12]_i_1_n_7 ;
  wire \COUNT_reg[16]_i_1_n_0 ;
  wire \COUNT_reg[16]_i_1_n_4 ;
  wire \COUNT_reg[16]_i_1_n_5 ;
  wire \COUNT_reg[16]_i_1_n_6 ;
  wire \COUNT_reg[16]_i_1_n_7 ;
  wire \COUNT_reg[20]_i_1_n_0 ;
  wire \COUNT_reg[20]_i_1_n_4 ;
  wire \COUNT_reg[20]_i_1_n_5 ;
  wire \COUNT_reg[20]_i_1_n_6 ;
  wire \COUNT_reg[20]_i_1_n_7 ;
  wire \COUNT_reg[24]_i_1_n_0 ;
  wire \COUNT_reg[24]_i_1_n_4 ;
  wire \COUNT_reg[24]_i_1_n_5 ;
  wire \COUNT_reg[24]_i_1_n_6 ;
  wire \COUNT_reg[24]_i_1_n_7 ;
  wire \COUNT_reg[28]_i_1_n_4 ;
  wire \COUNT_reg[28]_i_1_n_5 ;
  wire \COUNT_reg[28]_i_1_n_6 ;
  wire \COUNT_reg[28]_i_1_n_7 ;
  wire \COUNT_reg[4]_i_1_n_0 ;
  wire \COUNT_reg[4]_i_1_n_4 ;
  wire \COUNT_reg[4]_i_1_n_5 ;
  wire \COUNT_reg[4]_i_1_n_6 ;
  wire \COUNT_reg[4]_i_1_n_7 ;
  wire \COUNT_reg[8]_i_1_n_0 ;
  wire \COUNT_reg[8]_i_1_n_4 ;
  wire \COUNT_reg[8]_i_1_n_5 ;
  wire \COUNT_reg[8]_i_1_n_6 ;
  wire \COUNT_reg[8]_i_1_n_7 ;
  wire [0:0]JC_OBUF;
  wire NEW_CLK0_carry__0_i_1_n_0;
  wire NEW_CLK0_carry__0_i_2_n_0;
  wire NEW_CLK0_carry__0_i_3_n_0;
  wire NEW_CLK0_carry__0_i_4_n_0;
  wire NEW_CLK0_carry__0_n_0;
  wire NEW_CLK0_carry__1_i_1_n_0;
  wire NEW_CLK0_carry__1_i_2_n_0;
  wire NEW_CLK0_carry__1_i_3_n_0;
  wire NEW_CLK0_carry_i_1_n_0;
  wire NEW_CLK0_carry_i_2_n_0;
  wire NEW_CLK0_carry_i_3_n_0;
  wire NEW_CLK0_carry_i_4_n_0;
  wire NEW_CLK0_carry_n_0;
  wire NEW_CLK_i_1_n_0;
  wire clear;
  wire spi_busy;
  wire [2:0]\NLW_COUNT_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_COUNT_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_COUNT_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_COUNT_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_COUNT_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_COUNT_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_COUNT_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_COUNT_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_NEW_CLK0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_NEW_CLK0_carry_O_UNCONNECTED;
  wire [2:0]NLW_NEW_CLK0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_NEW_CLK0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_NEW_CLK0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_NEW_CLK0_carry__1_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \COUNT[0]_i_2 
       (.I0(COUNT_reg[0]),
        .O(\COUNT[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[0] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[0]_i_1_n_7 ),
        .Q(COUNT_reg[0]),
        .R(clear));
  CARRY4 \COUNT_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\COUNT_reg[0]_i_1_n_0 ,\NLW_COUNT_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\COUNT_reg[0]_i_1_n_4 ,\COUNT_reg[0]_i_1_n_5 ,\COUNT_reg[0]_i_1_n_6 ,\COUNT_reg[0]_i_1_n_7 }),
        .S({COUNT_reg[3:1],\COUNT[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[10] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[8]_i_1_n_5 ),
        .Q(COUNT_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[11] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[8]_i_1_n_4 ),
        .Q(COUNT_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[12] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[12]_i_1_n_7 ),
        .Q(COUNT_reg[12]),
        .R(clear));
  CARRY4 \COUNT_reg[12]_i_1 
       (.CI(\COUNT_reg[8]_i_1_n_0 ),
        .CO({\COUNT_reg[12]_i_1_n_0 ,\NLW_COUNT_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\COUNT_reg[12]_i_1_n_4 ,\COUNT_reg[12]_i_1_n_5 ,\COUNT_reg[12]_i_1_n_6 ,\COUNT_reg[12]_i_1_n_7 }),
        .S(COUNT_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[13] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[12]_i_1_n_6 ),
        .Q(COUNT_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[14] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[12]_i_1_n_5 ),
        .Q(COUNT_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[15] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[12]_i_1_n_4 ),
        .Q(COUNT_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[16] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[16]_i_1_n_7 ),
        .Q(COUNT_reg[16]),
        .R(clear));
  CARRY4 \COUNT_reg[16]_i_1 
       (.CI(\COUNT_reg[12]_i_1_n_0 ),
        .CO({\COUNT_reg[16]_i_1_n_0 ,\NLW_COUNT_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\COUNT_reg[16]_i_1_n_4 ,\COUNT_reg[16]_i_1_n_5 ,\COUNT_reg[16]_i_1_n_6 ,\COUNT_reg[16]_i_1_n_7 }),
        .S(COUNT_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[17] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[16]_i_1_n_6 ),
        .Q(COUNT_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[18] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[16]_i_1_n_5 ),
        .Q(COUNT_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[19] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[16]_i_1_n_4 ),
        .Q(COUNT_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[0]_i_1_n_6 ),
        .Q(COUNT_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[20] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[20]_i_1_n_7 ),
        .Q(COUNT_reg[20]),
        .R(clear));
  CARRY4 \COUNT_reg[20]_i_1 
       (.CI(\COUNT_reg[16]_i_1_n_0 ),
        .CO({\COUNT_reg[20]_i_1_n_0 ,\NLW_COUNT_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\COUNT_reg[20]_i_1_n_4 ,\COUNT_reg[20]_i_1_n_5 ,\COUNT_reg[20]_i_1_n_6 ,\COUNT_reg[20]_i_1_n_7 }),
        .S(COUNT_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[21] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[20]_i_1_n_6 ),
        .Q(COUNT_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[22] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[20]_i_1_n_5 ),
        .Q(COUNT_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[23] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[20]_i_1_n_4 ),
        .Q(COUNT_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[24] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[24]_i_1_n_7 ),
        .Q(COUNT_reg[24]),
        .R(clear));
  CARRY4 \COUNT_reg[24]_i_1 
       (.CI(\COUNT_reg[20]_i_1_n_0 ),
        .CO({\COUNT_reg[24]_i_1_n_0 ,\NLW_COUNT_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\COUNT_reg[24]_i_1_n_4 ,\COUNT_reg[24]_i_1_n_5 ,\COUNT_reg[24]_i_1_n_6 ,\COUNT_reg[24]_i_1_n_7 }),
        .S(COUNT_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[25] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[24]_i_1_n_6 ),
        .Q(COUNT_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[26] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[24]_i_1_n_5 ),
        .Q(COUNT_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[27] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[24]_i_1_n_4 ),
        .Q(COUNT_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[28] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[28]_i_1_n_7 ),
        .Q(COUNT_reg[28]),
        .R(clear));
  CARRY4 \COUNT_reg[28]_i_1 
       (.CI(\COUNT_reg[24]_i_1_n_0 ),
        .CO(\NLW_COUNT_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\COUNT_reg[28]_i_1_n_4 ,\COUNT_reg[28]_i_1_n_5 ,\COUNT_reg[28]_i_1_n_6 ,\COUNT_reg[28]_i_1_n_7 }),
        .S(COUNT_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[29] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[28]_i_1_n_6 ),
        .Q(COUNT_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[0]_i_1_n_5 ),
        .Q(COUNT_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[30] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[28]_i_1_n_5 ),
        .Q(COUNT_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[31] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[28]_i_1_n_4 ),
        .Q(COUNT_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[3] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[0]_i_1_n_4 ),
        .Q(COUNT_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[4] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[4]_i_1_n_7 ),
        .Q(COUNT_reg[4]),
        .R(clear));
  CARRY4 \COUNT_reg[4]_i_1 
       (.CI(\COUNT_reg[0]_i_1_n_0 ),
        .CO({\COUNT_reg[4]_i_1_n_0 ,\NLW_COUNT_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\COUNT_reg[4]_i_1_n_4 ,\COUNT_reg[4]_i_1_n_5 ,\COUNT_reg[4]_i_1_n_6 ,\COUNT_reg[4]_i_1_n_7 }),
        .S(COUNT_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[5] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[4]_i_1_n_6 ),
        .Q(COUNT_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[6] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[4]_i_1_n_5 ),
        .Q(COUNT_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[7] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[4]_i_1_n_4 ),
        .Q(COUNT_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[8] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[8]_i_1_n_7 ),
        .Q(COUNT_reg[8]),
        .R(clear));
  CARRY4 \COUNT_reg[8]_i_1 
       (.CI(\COUNT_reg[4]_i_1_n_0 ),
        .CO({\COUNT_reg[8]_i_1_n_0 ,\NLW_COUNT_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\COUNT_reg[8]_i_1_n_4 ,\COUNT_reg[8]_i_1_n_5 ,\COUNT_reg[8]_i_1_n_6 ,\COUNT_reg[8]_i_1_n_7 }),
        .S(COUNT_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[9] 
       (.C(CLOCK),
        .CE(1'b1),
        .D(\COUNT_reg[8]_i_1_n_6 ),
        .Q(COUNT_reg[9]),
        .R(clear));
  LUT2 #(
    .INIT(4'hB)) 
    \JC_OBUF[3]_inst_i_1 
       (.I0(CLK_6p25M),
        .I1(spi_busy),
        .O(JC_OBUF));
  CARRY4 NEW_CLK0_carry
       (.CI(1'b0),
        .CO({NEW_CLK0_carry_n_0,NLW_NEW_CLK0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_NEW_CLK0_carry_O_UNCONNECTED[3:0]),
        .S({NEW_CLK0_carry_i_1_n_0,NEW_CLK0_carry_i_2_n_0,NEW_CLK0_carry_i_3_n_0,NEW_CLK0_carry_i_4_n_0}));
  CARRY4 NEW_CLK0_carry__0
       (.CI(NEW_CLK0_carry_n_0),
        .CO({NEW_CLK0_carry__0_n_0,NLW_NEW_CLK0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_NEW_CLK0_carry__0_O_UNCONNECTED[3:0]),
        .S({NEW_CLK0_carry__0_i_1_n_0,NEW_CLK0_carry__0_i_2_n_0,NEW_CLK0_carry__0_i_3_n_0,NEW_CLK0_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    NEW_CLK0_carry__0_i_1
       (.I0(COUNT_reg[23]),
        .I1(COUNT_reg[22]),
        .I2(COUNT_reg[21]),
        .O(NEW_CLK0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    NEW_CLK0_carry__0_i_2
       (.I0(COUNT_reg[20]),
        .I1(COUNT_reg[19]),
        .I2(COUNT_reg[18]),
        .O(NEW_CLK0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    NEW_CLK0_carry__0_i_3
       (.I0(COUNT_reg[17]),
        .I1(COUNT_reg[16]),
        .I2(COUNT_reg[15]),
        .O(NEW_CLK0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    NEW_CLK0_carry__0_i_4
       (.I0(COUNT_reg[14]),
        .I1(COUNT_reg[13]),
        .I2(COUNT_reg[12]),
        .O(NEW_CLK0_carry__0_i_4_n_0));
  CARRY4 NEW_CLK0_carry__1
       (.CI(NEW_CLK0_carry__0_n_0),
        .CO({NLW_NEW_CLK0_carry__1_CO_UNCONNECTED[3],clear,NLW_NEW_CLK0_carry__1_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_NEW_CLK0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,NEW_CLK0_carry__1_i_1_n_0,NEW_CLK0_carry__1_i_2_n_0,NEW_CLK0_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    NEW_CLK0_carry__1_i_1
       (.I0(COUNT_reg[30]),
        .I1(COUNT_reg[31]),
        .O(NEW_CLK0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    NEW_CLK0_carry__1_i_2
       (.I0(COUNT_reg[29]),
        .I1(COUNT_reg[28]),
        .I2(COUNT_reg[27]),
        .O(NEW_CLK0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    NEW_CLK0_carry__1_i_3
       (.I0(COUNT_reg[26]),
        .I1(COUNT_reg[25]),
        .I2(COUNT_reg[24]),
        .O(NEW_CLK0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    NEW_CLK0_carry_i_1
       (.I0(COUNT_reg[11]),
        .I1(COUNT_reg[10]),
        .I2(COUNT_reg[9]),
        .O(NEW_CLK0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    NEW_CLK0_carry_i_2
       (.I0(COUNT_reg[8]),
        .I1(COUNT_reg[7]),
        .I2(COUNT_reg[6]),
        .O(NEW_CLK0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    NEW_CLK0_carry_i_3
       (.I0(COUNT_reg[5]),
        .I1(COUNT_reg[4]),
        .I2(COUNT_reg[3]),
        .O(NEW_CLK0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    NEW_CLK0_carry_i_4
       (.I0(COUNT_reg[0]),
        .I1(COUNT_reg[2]),
        .I2(COUNT_reg[1]),
        .O(NEW_CLK0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    NEW_CLK_i_1
       (.I0(clear),
        .I1(CLK_6p25M),
        .O(NEW_CLK_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    NEW_CLK_reg
       (.C(CLOCK),
        .CE(1'b1),
        .D(NEW_CLK_i_1_n_0),
        .Q(CLK_6p25M),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "4fd3a185" *) 
(* NotValidForBitStream *)
module main
   (CLOCK,
    JC);
  input CLOCK;
  output [0:7]JC;

  wire CLK_6p25M;
  wire CLK_6p25M_BUFG;
  wire CLOCK;
  wire CLOCK_IBUF;
  wire CLOCK_IBUF_BUFG;
  wire [0:7]JC;
  wire [0:6]JC_OBUF;
  wire spi_busy;

  BUFG CLK_6p25M_BUFG_inst
       (.I(CLK_6p25M),
        .O(CLK_6p25M_BUFG));
  BUFG CLOCK_IBUF_BUFG_inst
       (.I(CLOCK_IBUF),
        .O(CLOCK_IBUF_BUFG));
  IBUF CLOCK_IBUF_inst
       (.I(CLOCK),
        .O(CLOCK_IBUF));
  OBUF \JC_OBUF[0]_inst 
       (.I(JC_OBUF[0]),
        .O(JC[0]));
  OBUF \JC_OBUF[1]_inst 
       (.I(JC_OBUF[1]),
        .O(JC[1]));
  OBUFT \JC_OBUF[2]_inst 
       (.I(1'b0),
        .O(JC[2]),
        .T(1'b1));
  OBUF \JC_OBUF[3]_inst 
       (.I(JC_OBUF[3]),
        .O(JC[3]));
  OBUF \JC_OBUF[4]_inst 
       (.I(JC_OBUF[4]),
        .O(JC[4]));
  OBUF \JC_OBUF[5]_inst 
       (.I(JC_OBUF[5]),
        .O(JC[5]));
  OBUF \JC_OBUF[6]_inst 
       (.I(JC_OBUF[6]),
        .O(JC[6]));
  OBUF \JC_OBUF[7]_inst 
       (.I(1'b1),
        .O(JC[7]));
  flexi_clock_D clock0
       (.CLK_6p25M(CLK_6p25M),
        .CLOCK(CLOCK_IBUF_BUFG),
        .JC_OBUF(JC_OBUF[3]),
        .spi_busy(spi_busy));
  Oled_Display oled_0
       (.CLK_6p25M_BUFG(CLK_6p25M_BUFG),
        .JC_OBUF({JC_OBUF[0],JC_OBUF[1],JC_OBUF[4],JC_OBUF[5],JC_OBUF[6]}),
        .p_1_in(CLK_6p25M_BUFG),
        .spi_busy(spi_busy));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
