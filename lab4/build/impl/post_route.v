// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Oct  4 09:22:26 2022
// Host        : c111-5.eecs.berkeley.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force post_route.v
// Design      : z1top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module button_parser
   (\genblk1[3].pulse_signal_reg[3] ,
    \genblk1[2].pulse_signal_reg[2] ,
    \genblk1[2].pulse_signal_reg[2]_0 ,
    \genblk1[3].pulse_signal_reg[3]_0 ,
    DI,
    \genblk1[0].pulse_signal_reg[0] ,
    \genblk1[0].pulse_signal_reg[0]_0 ,
    E,
    \genblk1[0].pulse_signal_reg[0]_1 ,
    \genblk1[1].pulse_signal_reg[1] ,
    \genblk1[0].pulse_signal_reg[0]_2 ,
    S,
    \out_signal_reg[0] ,
    \genblk1[3].pulse_signal_reg[3]_1 ,
    \mode_reg[0] ,
    \genblk1[1].pulse_signal_reg[1]_0 ,
    CLK,
    LEDS_OBUF,
    Q,
    next_sample,
    d_in0_carry__1,
    mode,
    sq_wave_leds,
    D);
  output [2:0]\genblk1[3].pulse_signal_reg[3] ;
  output \genblk1[2].pulse_signal_reg[2] ;
  output \genblk1[2].pulse_signal_reg[2]_0 ;
  output \genblk1[3].pulse_signal_reg[3]_0 ;
  output [0:0]DI;
  output [0:0]\genblk1[0].pulse_signal_reg[0] ;
  output \genblk1[0].pulse_signal_reg[0]_0 ;
  output [0:0]E;
  output \genblk1[0].pulse_signal_reg[0]_1 ;
  output \genblk1[1].pulse_signal_reg[1] ;
  output \genblk1[0].pulse_signal_reg[0]_2 ;
  output [2:0]S;
  output [1:0]\out_signal_reg[0] ;
  output \genblk1[3].pulse_signal_reg[3]_1 ;
  output \mode_reg[0] ;
  output [0:0]\genblk1[1].pulse_signal_reg[1]_0 ;
  input CLK;
  input [1:0]LEDS_OBUF;
  input [0:0]Q;
  input next_sample;
  input [6:0]d_in0_carry__1;
  input mode;
  input [0:0]sq_wave_leds;
  input [3:0]D;

  wire CLK;
  wire [3:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [1:0]LEDS_OBUF;
  wire [0:0]Q;
  wire [2:0]S;
  wire button_synchronizer_n_1;
  wire button_synchronizer_n_2;
  wire button_synchronizer_n_3;
  wire clear;
  wire [6:0]d_in0_carry__1;
  wire [3:0]debounced_signals;
  wire [3:0]delayed_signal;
  wire \genblk1[0].pulse_signal_reg0 ;
  wire [0:0]\genblk1[0].pulse_signal_reg[0] ;
  wire \genblk1[0].pulse_signal_reg[0]_0 ;
  wire \genblk1[0].pulse_signal_reg[0]_1 ;
  wire \genblk1[0].pulse_signal_reg[0]_2 ;
  wire \genblk1[1].pulse_signal_reg0 ;
  wire \genblk1[1].pulse_signal_reg[1] ;
  wire [0:0]\genblk1[1].pulse_signal_reg[1]_0 ;
  wire \genblk1[2].pulse_signal_reg0 ;
  wire \genblk1[2].pulse_signal_reg[2] ;
  wire \genblk1[2].pulse_signal_reg[2]_0 ;
  wire \genblk1[3].pulse_signal_reg0 ;
  wire [2:0]\genblk1[3].pulse_signal_reg[3] ;
  wire \genblk1[3].pulse_signal_reg[3]_0 ;
  wire \genblk1[3].pulse_signal_reg[3]_1 ;
  wire mode;
  wire \mode_reg[0] ;
  wire next_sample;
  wire [1:0]\out_signal_reg[0] ;
  wire [0:0]sq_wave_leds;

  debouncer button_debouncer
       (.CLK(CLK),
        .Q(debounced_signals),
        .SR(clear),
        .\genblk1[0].pulse_signal_reg0 (\genblk1[0].pulse_signal_reg0 ),
        .\genblk1[1].pulse_signal_reg0 (\genblk1[1].pulse_signal_reg0 ),
        .\genblk1[2].pulse_signal_reg0 (\genblk1[2].pulse_signal_reg0 ),
        .\genblk1[3].pulse_signal_reg0 (\genblk1[3].pulse_signal_reg0 ),
        .\genblk1[3].pulse_signal_reg[3] (delayed_signal),
        .\saturating_counter_reg[1][0]_0 (button_synchronizer_n_1),
        .\saturating_counter_reg[2][0]_0 (button_synchronizer_n_2),
        .\saturating_counter_reg[3][0]_0 (button_synchronizer_n_3));
  edge_detector button_edge_detector
       (.CLK(CLK),
        .D(debounced_signals),
        .DI(DI),
        .E(E),
        .LEDS_OBUF(LEDS_OBUF),
        .Q(Q),
        .S(S),
        .d_in0_carry__1(d_in0_carry__1),
        .\genblk1[0].delayed_signal_reg[3]_0 (delayed_signal),
        .\genblk1[0].pulse_signal_reg0 (\genblk1[0].pulse_signal_reg0 ),
        .\genblk1[0].pulse_signal_reg[0]_0 (\genblk1[3].pulse_signal_reg[3] [0]),
        .\genblk1[0].pulse_signal_reg[0]_1 (\genblk1[0].pulse_signal_reg[0] ),
        .\genblk1[0].pulse_signal_reg[0]_2 (\genblk1[0].pulse_signal_reg[0]_0 ),
        .\genblk1[0].pulse_signal_reg[0]_3 (\genblk1[0].pulse_signal_reg[0]_1 ),
        .\genblk1[0].pulse_signal_reg[0]_4 (\genblk1[0].pulse_signal_reg[0]_2 ),
        .\genblk1[1].pulse_signal_reg0 (\genblk1[1].pulse_signal_reg0 ),
        .\genblk1[1].pulse_signal_reg[1]_0 (\genblk1[3].pulse_signal_reg[3] [1]),
        .\genblk1[1].pulse_signal_reg[1]_1 (\genblk1[1].pulse_signal_reg[1] ),
        .\genblk1[1].pulse_signal_reg[1]_2 (\genblk1[1].pulse_signal_reg[1]_0 ),
        .\genblk1[2].pulse_signal_reg0 (\genblk1[2].pulse_signal_reg0 ),
        .\genblk1[2].pulse_signal_reg[2]_0 (\genblk1[2].pulse_signal_reg[2] ),
        .\genblk1[2].pulse_signal_reg[2]_1 (\genblk1[2].pulse_signal_reg[2]_0 ),
        .\genblk1[3].pulse_signal_reg0 (\genblk1[3].pulse_signal_reg0 ),
        .\genblk1[3].pulse_signal_reg[3]_0 (\genblk1[3].pulse_signal_reg[3] [2]),
        .\genblk1[3].pulse_signal_reg[3]_1 (\genblk1[3].pulse_signal_reg[3]_0 ),
        .\genblk1[3].pulse_signal_reg[3]_2 (\genblk1[3].pulse_signal_reg[3]_1 ),
        .mode(mode),
        .\mode_reg[0] (\mode_reg[0] ),
        .next_sample(next_sample),
        .\out_signal_reg[0] (\out_signal_reg[0] ),
        .sq_wave_leds(sq_wave_leds));
  synchronizer button_synchronizer
       (.CLK(CLK),
        .D(D),
        .SR(clear),
        .\out_signal_reg[1]_0 (button_synchronizer_n_1),
        .\out_signal_reg[2]_0 (button_synchronizer_n_2),
        .\out_signal_reg[3]_0 (button_synchronizer_n_3));
endmodule

module dac
   (next_sample,
    Q,
    AUD_PWM_OBUF,
    S,
    DI,
    CLK,
    AUD_PWM,
    DOADO,
    \pwm1_inferred__0/i__carry_0 ,
    code_value,
    \counter_reg[0]_0 );
  output next_sample;
  output [1:0]Q;
  output AUD_PWM_OBUF;
  input [0:0]S;
  input [0:0]DI;
  input CLK;
  input AUD_PWM;
  input [9:0]DOADO;
  input [0:0]\pwm1_inferred__0/i__carry_0 ;
  input [1:0]code_value;
  input [0:0]\counter_reg[0]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire AUD_PWM;
  wire AUD_PWM_OBUF;
  wire CLK;
  wire [0:0]DI;
  wire [9:0]DOADO;
  wire [1:0]Q;
  wire [0:0]S;
  wire [1:0]code_value;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[7]_i_2_n_0 ;
  wire \counter[9]_i_2_n_0 ;
  wire [7:0]counter_reg;
  wire [0:0]\counter_reg[0]_0 ;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire next_sample;
  wire next_sample_i_1_n_0;
  wire next_sample_i_2_n_0;
  wire next_sample_i_3_n_0;
  wire [9:1]p_0_in__3;
  wire pwm1_carry_i_2_n_0;
  wire pwm1_carry_i_3_n_0;
  wire pwm1_carry_i_4_n_0;
  wire pwm1_carry_i_5_n_0;
  wire pwm1_carry_i_6_n_0;
  wire pwm1_carry_i_7_n_0;
  wire pwm1_carry_n_0;
  wire [0:0]\pwm1_inferred__0/i__carry_0 ;
  wire \pwm1_inferred__0/i__carry__0_n_3 ;
  wire \pwm1_inferred__0/i__carry_n_0 ;
  wire [3:0]NLW_pwm1_carry_CO_UNCONNECTED;
  wire [3:0]\NLW_pwm1_inferred__0/i__carry_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h32)) 
    AUD_PWM_OBUF_inst_i_1
       (.I0(pwm1_carry_n_0),
        .I1(AUD_PWM),
        .I2(\pwm1_inferred__0/i__carry__0_n_3 ),
        .O(AUD_PWM_OBUF));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .O(p_0_in__3[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .I3(counter_reg[3]),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_1 
       (.I0(counter_reg[4]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[2]),
        .I4(counter_reg[3]),
        .O(p_0_in__3[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter[5]_i_1 
       (.I0(counter_reg[3]),
        .I1(counter_reg[4]),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .I4(counter_reg[2]),
        .I5(counter_reg[5]),
        .O(p_0_in__3[5]));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \counter[6]_i_1 
       (.I0(counter_reg[5]),
        .I1(\counter[7]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(counter_reg[6]),
        .O(p_0_in__3[6]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \counter[7]_i_1 
       (.I0(counter_reg[7]),
        .I1(counter_reg[3]),
        .I2(counter_reg[4]),
        .I3(\counter[7]_i_2_n_0 ),
        .I4(counter_reg[5]),
        .I5(counter_reg[6]),
        .O(p_0_in__3[7]));
  LUT3 #(
    .INIT(8'h7F)) 
    \counter[7]_i_2 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .O(\counter[7]_i_2_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[8]_i_1 
       (.I0(Q[0]),
        .I1(\counter[9]_i_2_n_0 ),
        .I2(counter_reg[7]),
        .O(p_0_in__3[8]));
  (* \PinAttr:I2:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[9]_i_1 
       (.I0(Q[1]),
        .I1(\counter[9]_i_2_n_0 ),
        .I2(counter_reg[7]),
        .I3(Q[0]),
        .O(p_0_in__3[9]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \counter[9]_i_2 
       (.I0(counter_reg[6]),
        .I1(counter_reg[5]),
        .I2(\counter[7]_i_2_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .O(\counter[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(counter_reg[0]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__3[1]),
        .Q(counter_reg[1]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__3[2]),
        .Q(counter_reg[2]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__3[3]),
        .Q(counter_reg[3]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__3[4]),
        .Q(counter_reg[4]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__3[5]),
        .Q(counter_reg[5]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__3[6]),
        .Q(counter_reg[6]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__3[7]),
        .Q(counter_reg[7]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__3[8]),
        .Q(Q[0]),
        .R(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__3[9]),
        .Q(Q[1]),
        .R(\counter_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00009A95)) 
    i__carry__0_i_2
       (.I0(Q[0]),
        .I1(DOADO[8]),
        .I2(\pwm1_inferred__0/i__carry_0 ),
        .I3(code_value[0]),
        .I4(i__carry__0_i_4_n_0),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    i__carry__0_i_4
       (.I0(Q[1]),
        .I1(code_value[1]),
        .I2(\pwm1_inferred__0/i__carry_0 ),
        .I3(DOADO[9]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h2F023F3F2F020000)) 
    i__carry_i_1
       (.I0(DOADO[6]),
        .I1(counter_reg[6]),
        .I2(counter_reg[7]),
        .I3(DOADO[7]),
        .I4(\pwm1_inferred__0/i__carry_0 ),
        .I5(code_value[0]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h2F023F3F2F020000)) 
    i__carry_i_2
       (.I0(DOADO[4]),
        .I1(counter_reg[4]),
        .I2(counter_reg[5]),
        .I3(DOADO[5]),
        .I4(\pwm1_inferred__0/i__carry_0 ),
        .I5(code_value[1]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h2F023F3F2F020000)) 
    i__carry_i_3
       (.I0(DOADO[2]),
        .I1(counter_reg[2]),
        .I2(counter_reg[3]),
        .I3(DOADO[3]),
        .I4(\pwm1_inferred__0/i__carry_0 ),
        .I5(code_value[0]),
        .O(i__carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h2F0F020F)) 
    i__carry_i_4
       (.I0(DOADO[0]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(\pwm1_inferred__0/i__carry_0 ),
        .I4(DOADO[1]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hA85808080101A151)) 
    i__carry_i_5
       (.I0(counter_reg[7]),
        .I1(code_value[0]),
        .I2(\pwm1_inferred__0/i__carry_0 ),
        .I3(DOADO[7]),
        .I4(DOADO[6]),
        .I5(counter_reg[6]),
        .O(i__carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hE20C22000011C01D)) 
    i__carry_i_6
       (.I0(code_value[1]),
        .I1(\pwm1_inferred__0/i__carry_0 ),
        .I2(DOADO[5]),
        .I3(counter_reg[5]),
        .I4(DOADO[4]),
        .I5(counter_reg[4]),
        .O(i__carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h90AA900009000955)) 
    i__carry_i_7
       (.I0(counter_reg[2]),
        .I1(DOADO[2]),
        .I2(DOADO[3]),
        .I3(\pwm1_inferred__0/i__carry_0 ),
        .I4(code_value[0]),
        .I5(counter_reg[3]),
        .O(i__carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h840030B4)) 
    i__carry_i_8
       (.I0(DOADO[1]),
        .I1(\pwm1_inferred__0/i__carry_0 ),
        .I2(counter_reg[1]),
        .I3(DOADO[0]),
        .I4(counter_reg[0]),
        .O(i__carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFF080008000800)) 
    next_sample_i_1
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(next_sample_i_2_n_0),
        .I4(next_sample),
        .I5(\counter_reg[0]_0 ),
        .O(next_sample_i_1_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    next_sample_i_2
       (.I0(counter_reg[7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\counter_reg[0]_0 ),
        .I4(next_sample_i_3_n_0),
        .O(next_sample_i_2_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    next_sample_i_3
       (.I0(counter_reg[6]),
        .I1(counter_reg[5]),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .O(next_sample_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    next_sample_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(next_sample_i_1_n_0),
        .Q(next_sample),
        .R(\<const0> ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pwm1_carry
       (.CI(\<const0> ),
        .CO({pwm1_carry_n_0,NLW_pwm1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({S,pwm1_carry_i_2_n_0,pwm1_carry_i_3_n_0,pwm1_carry_i_4_n_0}));
  LUT5 #(
    .INIT(32'h9A950000)) 
    pwm1_carry_i_2
       (.I0(Q[0]),
        .I1(DOADO[8]),
        .I2(\pwm1_inferred__0/i__carry_0 ),
        .I3(code_value[0]),
        .I4(pwm1_carry_i_5_n_0),
        .O(pwm1_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    pwm1_carry_i_3
       (.I0(pwm1_carry_i_6_n_0),
        .I1(DOADO[3]),
        .I2(\pwm1_inferred__0/i__carry_0 ),
        .I3(code_value[0]),
        .I4(counter_reg[3]),
        .O(pwm1_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h9A950000)) 
    pwm1_carry_i_4
       (.I0(counter_reg[2]),
        .I1(DOADO[2]),
        .I2(\pwm1_inferred__0/i__carry_0 ),
        .I3(code_value[0]),
        .I4(pwm1_carry_i_7_n_0),
        .O(pwm1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hA85808080101A151)) 
    pwm1_carry_i_5
       (.I0(counter_reg[7]),
        .I1(code_value[0]),
        .I2(\pwm1_inferred__0/i__carry_0 ),
        .I3(DOADO[7]),
        .I4(DOADO[6]),
        .I5(counter_reg[6]),
        .O(pwm1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hE20C22000011C01D)) 
    pwm1_carry_i_6
       (.I0(code_value[1]),
        .I1(\pwm1_inferred__0/i__carry_0 ),
        .I2(DOADO[5]),
        .I3(counter_reg[5]),
        .I4(DOADO[4]),
        .I5(counter_reg[4]),
        .O(pwm1_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h840030B4)) 
    pwm1_carry_i_7
       (.I0(DOADO[1]),
        .I1(\pwm1_inferred__0/i__carry_0 ),
        .I2(counter_reg[1]),
        .I3(DOADO[0]),
        .I4(counter_reg[0]),
        .O(pwm1_carry_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pwm1_inferred__0/i__carry 
       (.CI(\<const0> ),
        .CO({\pwm1_inferred__0/i__carry_n_0 ,\NLW_pwm1_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \pwm1_inferred__0/i__carry__0 
       (.CI(\pwm1_inferred__0/i__carry_n_0 ),
        .CO(\pwm1_inferred__0/i__carry__0_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,DI}),
        .S({\<const0> ,\<const0> ,\<const0> ,i__carry__0_i_2_n_0}));
endmodule

module debouncer
   (\genblk1[0].pulse_signal_reg0 ,
    Q,
    \genblk1[1].pulse_signal_reg0 ,
    \genblk1[2].pulse_signal_reg0 ,
    \genblk1[3].pulse_signal_reg0 ,
    CLK,
    \genblk1[3].pulse_signal_reg[3] ,
    SR,
    \saturating_counter_reg[1][0]_0 ,
    \saturating_counter_reg[2][0]_0 ,
    \saturating_counter_reg[3][0]_0 );
  output \genblk1[0].pulse_signal_reg0 ;
  output [3:0]Q;
  output \genblk1[1].pulse_signal_reg0 ;
  output \genblk1[2].pulse_signal_reg0 ;
  output \genblk1[3].pulse_signal_reg0 ;
  input CLK;
  input [3:0]\genblk1[3].pulse_signal_reg[3] ;
  input [0:0]SR;
  input [0:0]\saturating_counter_reg[1][0]_0 ;
  input [0:0]\saturating_counter_reg[2][0]_0 ;
  input [0:0]\saturating_counter_reg[3][0]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \genblk1[0].pulse_signal_reg0 ;
  wire \genblk1[1].pulse_signal_reg0 ;
  wire \genblk1[2].pulse_signal_reg0 ;
  wire \genblk1[3].pulse_signal_reg0 ;
  wire [3:0]\genblk1[3].pulse_signal_reg[3] ;
  wire [8:0]p_0_in;
  wire [8:0]p_0_in__0;
  wire [8:0]p_0_in__1;
  wire [8:0]p_0_in__2;
  wire saturating_counter;
  wire saturating_counter4_out;
  wire saturating_counter7_out;
  wire saturating_counter9_out;
  wire \saturating_counter[0][8]_i_4_n_0 ;
  wire \saturating_counter[0][8]_i_5_n_0 ;
  wire \saturating_counter[1][8]_i_4_n_0 ;
  wire \saturating_counter[1][8]_i_5_n_0 ;
  wire \saturating_counter[2][8]_i_4_n_0 ;
  wire \saturating_counter[2][8]_i_5_n_0 ;
  wire \saturating_counter[3][8]_i_4_n_0 ;
  wire \saturating_counter[3][8]_i_5_n_0 ;
  wire [8:0]\saturating_counter_reg[0]_0 ;
  wire [0:0]\saturating_counter_reg[1][0]_0 ;
  wire [8:0]\saturating_counter_reg[1]_1 ;
  wire [0:0]\saturating_counter_reg[2][0]_0 ;
  wire [8:0]\saturating_counter_reg[2]_2 ;
  wire [0:0]\saturating_counter_reg[3][0]_0 ;
  wire [8:0]\saturating_counter_reg[3]_3 ;
  wire store_output0;
  wire \store_output[0]_i_1_n_0 ;
  wire \store_output[0]_i_2_n_0 ;
  wire \store_output[1]_i_1_n_0 ;
  wire \store_output[1]_i_2_n_0 ;
  wire \store_output[2]_i_1_n_0 ;
  wire \store_output[2]_i_2_n_0 ;
  wire \store_output[3]_i_2_n_0 ;
  wire wrapper1;
  wire \wrapper[0]_i_3_n_0 ;
  wire \wrapper[0]_i_4_n_0 ;
  wire \wrapper[0]_i_5_n_0 ;
  wire \wrapper[0]_i_6_n_0 ;
  wire [16:0]wrapper_reg;
  wire \wrapper_reg[0]_i_2_n_0 ;
  wire \wrapper_reg[0]_i_2_n_4 ;
  wire \wrapper_reg[0]_i_2_n_5 ;
  wire \wrapper_reg[0]_i_2_n_6 ;
  wire \wrapper_reg[0]_i_2_n_7 ;
  wire \wrapper_reg[12]_i_1_n_0 ;
  wire \wrapper_reg[12]_i_1_n_4 ;
  wire \wrapper_reg[12]_i_1_n_5 ;
  wire \wrapper_reg[12]_i_1_n_6 ;
  wire \wrapper_reg[12]_i_1_n_7 ;
  wire \wrapper_reg[16]_i_1_n_7 ;
  wire \wrapper_reg[4]_i_1_n_0 ;
  wire \wrapper_reg[4]_i_1_n_4 ;
  wire \wrapper_reg[4]_i_1_n_5 ;
  wire \wrapper_reg[4]_i_1_n_6 ;
  wire \wrapper_reg[4]_i_1_n_7 ;
  wire \wrapper_reg[8]_i_1_n_0 ;
  wire \wrapper_reg[8]_i_1_n_4 ;
  wire \wrapper_reg[8]_i_1_n_5 ;
  wire \wrapper_reg[8]_i_1_n_6 ;
  wire \wrapper_reg[8]_i_1_n_7 ;
  wire [3:0]\NLW_wrapper_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_wrapper_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_wrapper_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_wrapper_reg[8]_i_1_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1[0].pulse_signal[0]_i_1 
       (.I0(Q[0]),
        .I1(\genblk1[3].pulse_signal_reg[3] [0]),
        .O(\genblk1[0].pulse_signal_reg0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1[1].pulse_signal[1]_i_1 
       (.I0(Q[1]),
        .I1(\genblk1[3].pulse_signal_reg[3] [1]),
        .O(\genblk1[1].pulse_signal_reg0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1[2].pulse_signal[2]_i_1 
       (.I0(Q[2]),
        .I1(\genblk1[3].pulse_signal_reg[3] [2]),
        .O(\genblk1[2].pulse_signal_reg0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1[3].pulse_signal[3]_i_1 
       (.I0(Q[3]),
        .I1(\genblk1[3].pulse_signal_reg[3] [3]),
        .O(\genblk1[3].pulse_signal_reg0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[0][0]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [0]),
        .O(p_0_in[0]));
  (* \PinAttr:I1:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[0][1]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [0]),
        .I1(\saturating_counter_reg[0]_0 [1]),
        .O(p_0_in[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \saturating_counter[0][2]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [2]),
        .I1(\saturating_counter_reg[0]_0 [1]),
        .I2(\saturating_counter_reg[0]_0 [0]),
        .O(p_0_in[2]));
  (* \PinAttr:I2:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \saturating_counter[0][3]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [3]),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [2]),
        .O(p_0_in[3]));
  (* \PinAttr:I3:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \saturating_counter[0][4]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [4]),
        .I1(\saturating_counter_reg[0]_0 [3]),
        .I2(\saturating_counter_reg[0]_0 [2]),
        .I3(\saturating_counter_reg[0]_0 [1]),
        .I4(\saturating_counter_reg[0]_0 [0]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \saturating_counter[0][5]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [5]),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [2]),
        .I4(\saturating_counter_reg[0]_0 [3]),
        .I5(\saturating_counter_reg[0]_0 [4]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[0][6]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [6]),
        .I1(\saturating_counter[0][8]_i_5_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \saturating_counter[0][7]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [7]),
        .I1(\saturating_counter[0][8]_i_5_n_0 ),
        .I2(\saturating_counter_reg[0]_0 [6]),
        .O(p_0_in[7]));
  LUT3 #(
    .INIT(8'h02)) 
    \saturating_counter[0][8]_i_2 
       (.I0(wrapper1),
        .I1(\saturating_counter[0][8]_i_4_n_0 ),
        .I2(\saturating_counter_reg[0]_0 [8]),
        .O(saturating_counter9_out));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \saturating_counter[0][8]_i_3 
       (.I0(\saturating_counter_reg[0]_0 [6]),
        .I1(\saturating_counter_reg[0]_0 [7]),
        .I2(\saturating_counter[0][8]_i_5_n_0 ),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'h88888880)) 
    \saturating_counter[0][8]_i_4 
       (.I0(\saturating_counter_reg[0]_0 [7]),
        .I1(\saturating_counter_reg[0]_0 [6]),
        .I2(\saturating_counter_reg[0]_0 [3]),
        .I3(\saturating_counter_reg[0]_0 [4]),
        .I4(\saturating_counter_reg[0]_0 [5]),
        .O(\saturating_counter[0][8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \saturating_counter[0][8]_i_5 
       (.I0(\saturating_counter_reg[0]_0 [5]),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [2]),
        .I4(\saturating_counter_reg[0]_0 [3]),
        .I5(\saturating_counter_reg[0]_0 [4]),
        .O(\saturating_counter[0][8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[1][0]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [0]),
        .O(p_0_in__0[0]));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[1][1]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [0]),
        .I1(\saturating_counter_reg[1]_1 [1]),
        .O(p_0_in__0[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \saturating_counter[1][2]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [2]),
        .I1(\saturating_counter_reg[1]_1 [1]),
        .I2(\saturating_counter_reg[1]_1 [0]),
        .O(p_0_in__0[2]));
  (* \PinAttr:I3:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[1][3]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [2]),
        .I1(\saturating_counter_reg[1]_1 [0]),
        .I2(\saturating_counter_reg[1]_1 [1]),
        .I3(\saturating_counter_reg[1]_1 [3]),
        .O(p_0_in__0[3]));
  (* \PinAttr:I1:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \saturating_counter[1][4]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [4]),
        .I1(\saturating_counter_reg[1]_1 [3]),
        .I2(\saturating_counter_reg[1]_1 [2]),
        .I3(\saturating_counter_reg[1]_1 [0]),
        .I4(\saturating_counter_reg[1]_1 [1]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \saturating_counter[1][5]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [5]),
        .I1(\saturating_counter_reg[1]_1 [1]),
        .I2(\saturating_counter_reg[1]_1 [0]),
        .I3(\saturating_counter_reg[1]_1 [2]),
        .I4(\saturating_counter_reg[1]_1 [4]),
        .I5(\saturating_counter_reg[1]_1 [3]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \saturating_counter[1][6]_i_1 
       (.I0(\saturating_counter[1][8]_i_5_n_0 ),
        .I1(\saturating_counter_reg[1]_1 [6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \saturating_counter[1][7]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [7]),
        .I1(\saturating_counter[1][8]_i_5_n_0 ),
        .I2(\saturating_counter_reg[1]_1 [6]),
        .O(p_0_in__0[7]));
  LUT3 #(
    .INIT(8'h02)) 
    \saturating_counter[1][8]_i_2 
       (.I0(wrapper1),
        .I1(\saturating_counter[1][8]_i_4_n_0 ),
        .I2(\saturating_counter_reg[1]_1 [8]),
        .O(saturating_counter7_out));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \saturating_counter[1][8]_i_3 
       (.I0(\saturating_counter[1][8]_i_5_n_0 ),
        .I1(\saturating_counter_reg[1]_1 [6]),
        .I2(\saturating_counter_reg[1]_1 [7]),
        .O(p_0_in__0[8]));
  LUT5 #(
    .INIT(32'h88888880)) 
    \saturating_counter[1][8]_i_4 
       (.I0(\saturating_counter_reg[1]_1 [7]),
        .I1(\saturating_counter_reg[1]_1 [6]),
        .I2(\saturating_counter_reg[1]_1 [3]),
        .I3(\saturating_counter_reg[1]_1 [4]),
        .I4(\saturating_counter_reg[1]_1 [5]),
        .O(\saturating_counter[1][8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \saturating_counter[1][8]_i_5 
       (.I0(\saturating_counter_reg[1]_1 [1]),
        .I1(\saturating_counter_reg[1]_1 [0]),
        .I2(\saturating_counter_reg[1]_1 [2]),
        .I3(\saturating_counter_reg[1]_1 [4]),
        .I4(\saturating_counter_reg[1]_1 [3]),
        .I5(\saturating_counter_reg[1]_1 [5]),
        .O(\saturating_counter[1][8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[2][0]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[2][1]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [0]),
        .I1(\saturating_counter_reg[2]_2 [1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \saturating_counter[2][2]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [2]),
        .I1(\saturating_counter_reg[2]_2 [1]),
        .I2(\saturating_counter_reg[2]_2 [0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[2][3]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [2]),
        .I1(\saturating_counter_reg[2]_2 [0]),
        .I2(\saturating_counter_reg[2]_2 [1]),
        .I3(\saturating_counter_reg[2]_2 [3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \saturating_counter[2][4]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [4]),
        .I1(\saturating_counter_reg[2]_2 [3]),
        .I2(\saturating_counter_reg[2]_2 [2]),
        .I3(\saturating_counter_reg[2]_2 [0]),
        .I4(\saturating_counter_reg[2]_2 [1]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \saturating_counter[2][5]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [5]),
        .I1(\saturating_counter_reg[2]_2 [1]),
        .I2(\saturating_counter_reg[2]_2 [0]),
        .I3(\saturating_counter_reg[2]_2 [2]),
        .I4(\saturating_counter_reg[2]_2 [4]),
        .I5(\saturating_counter_reg[2]_2 [3]),
        .O(p_0_in__1[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \saturating_counter[2][6]_i_1 
       (.I0(\saturating_counter[2][8]_i_5_n_0 ),
        .I1(\saturating_counter_reg[2]_2 [6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \saturating_counter[2][7]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [7]),
        .I1(\saturating_counter[2][8]_i_5_n_0 ),
        .I2(\saturating_counter_reg[2]_2 [6]),
        .O(p_0_in__1[7]));
  LUT3 #(
    .INIT(8'h02)) 
    \saturating_counter[2][8]_i_2 
       (.I0(wrapper1),
        .I1(\saturating_counter[2][8]_i_4_n_0 ),
        .I2(\saturating_counter_reg[2]_2 [8]),
        .O(saturating_counter4_out));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \saturating_counter[2][8]_i_3 
       (.I0(\saturating_counter[2][8]_i_5_n_0 ),
        .I1(\saturating_counter_reg[2]_2 [6]),
        .I2(\saturating_counter_reg[2]_2 [7]),
        .O(p_0_in__1[8]));
  LUT5 #(
    .INIT(32'h88888880)) 
    \saturating_counter[2][8]_i_4 
       (.I0(\saturating_counter_reg[2]_2 [7]),
        .I1(\saturating_counter_reg[2]_2 [6]),
        .I2(\saturating_counter_reg[2]_2 [3]),
        .I3(\saturating_counter_reg[2]_2 [4]),
        .I4(\saturating_counter_reg[2]_2 [5]),
        .O(\saturating_counter[2][8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \saturating_counter[2][8]_i_5 
       (.I0(\saturating_counter_reg[2]_2 [1]),
        .I1(\saturating_counter_reg[2]_2 [0]),
        .I2(\saturating_counter_reg[2]_2 [2]),
        .I3(\saturating_counter_reg[2]_2 [4]),
        .I4(\saturating_counter_reg[2]_2 [3]),
        .I5(\saturating_counter_reg[2]_2 [5]),
        .O(\saturating_counter[2][8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[3][0]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[3][1]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [0]),
        .I1(\saturating_counter_reg[3]_3 [1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \saturating_counter[3][2]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [2]),
        .I1(\saturating_counter_reg[3]_3 [1]),
        .I2(\saturating_counter_reg[3]_3 [0]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[3][3]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [2]),
        .I1(\saturating_counter_reg[3]_3 [0]),
        .I2(\saturating_counter_reg[3]_3 [1]),
        .I3(\saturating_counter_reg[3]_3 [3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \saturating_counter[3][4]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [4]),
        .I1(\saturating_counter_reg[3]_3 [3]),
        .I2(\saturating_counter_reg[3]_3 [2]),
        .I3(\saturating_counter_reg[3]_3 [0]),
        .I4(\saturating_counter_reg[3]_3 [1]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \saturating_counter[3][5]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [5]),
        .I1(\saturating_counter_reg[3]_3 [1]),
        .I2(\saturating_counter_reg[3]_3 [0]),
        .I3(\saturating_counter_reg[3]_3 [2]),
        .I4(\saturating_counter_reg[3]_3 [4]),
        .I5(\saturating_counter_reg[3]_3 [3]),
        .O(p_0_in__2[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \saturating_counter[3][6]_i_1 
       (.I0(\saturating_counter[3][8]_i_5_n_0 ),
        .I1(\saturating_counter_reg[3]_3 [6]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \saturating_counter[3][7]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [7]),
        .I1(\saturating_counter[3][8]_i_5_n_0 ),
        .I2(\saturating_counter_reg[3]_3 [6]),
        .O(p_0_in__2[7]));
  LUT3 #(
    .INIT(8'h02)) 
    \saturating_counter[3][8]_i_2 
       (.I0(wrapper1),
        .I1(\saturating_counter[3][8]_i_4_n_0 ),
        .I2(\saturating_counter_reg[3]_3 [8]),
        .O(saturating_counter));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \saturating_counter[3][8]_i_3 
       (.I0(\saturating_counter[3][8]_i_5_n_0 ),
        .I1(\saturating_counter_reg[3]_3 [6]),
        .I2(\saturating_counter_reg[3]_3 [7]),
        .O(p_0_in__2[8]));
  LUT5 #(
    .INIT(32'h88888880)) 
    \saturating_counter[3][8]_i_4 
       (.I0(\saturating_counter_reg[3]_3 [7]),
        .I1(\saturating_counter_reg[3]_3 [6]),
        .I2(\saturating_counter_reg[3]_3 [3]),
        .I3(\saturating_counter_reg[3]_3 [4]),
        .I4(\saturating_counter_reg[3]_3 [5]),
        .O(\saturating_counter[3][8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \saturating_counter[3][8]_i_5 
       (.I0(\saturating_counter_reg[3]_3 [1]),
        .I1(\saturating_counter_reg[3]_3 [0]),
        .I2(\saturating_counter_reg[3]_3 [2]),
        .I3(\saturating_counter_reg[3]_3 [4]),
        .I4(\saturating_counter_reg[3]_3 [3]),
        .I5(\saturating_counter_reg[3]_3 [5]),
        .O(\saturating_counter[3][8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][0] 
       (.C(CLK),
        .CE(saturating_counter9_out),
        .D(p_0_in[0]),
        .Q(\saturating_counter_reg[0]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][1] 
       (.C(CLK),
        .CE(saturating_counter9_out),
        .D(p_0_in[1]),
        .Q(\saturating_counter_reg[0]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][2] 
       (.C(CLK),
        .CE(saturating_counter9_out),
        .D(p_0_in[2]),
        .Q(\saturating_counter_reg[0]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][3] 
       (.C(CLK),
        .CE(saturating_counter9_out),
        .D(p_0_in[3]),
        .Q(\saturating_counter_reg[0]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][4] 
       (.C(CLK),
        .CE(saturating_counter9_out),
        .D(p_0_in[4]),
        .Q(\saturating_counter_reg[0]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][5] 
       (.C(CLK),
        .CE(saturating_counter9_out),
        .D(p_0_in[5]),
        .Q(\saturating_counter_reg[0]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][6] 
       (.C(CLK),
        .CE(saturating_counter9_out),
        .D(p_0_in[6]),
        .Q(\saturating_counter_reg[0]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][7] 
       (.C(CLK),
        .CE(saturating_counter9_out),
        .D(p_0_in[7]),
        .Q(\saturating_counter_reg[0]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][8] 
       (.C(CLK),
        .CE(saturating_counter9_out),
        .D(p_0_in[8]),
        .Q(\saturating_counter_reg[0]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][0] 
       (.C(CLK),
        .CE(saturating_counter7_out),
        .D(p_0_in__0[0]),
        .Q(\saturating_counter_reg[1]_1 [0]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][1] 
       (.C(CLK),
        .CE(saturating_counter7_out),
        .D(p_0_in__0[1]),
        .Q(\saturating_counter_reg[1]_1 [1]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][2] 
       (.C(CLK),
        .CE(saturating_counter7_out),
        .D(p_0_in__0[2]),
        .Q(\saturating_counter_reg[1]_1 [2]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][3] 
       (.C(CLK),
        .CE(saturating_counter7_out),
        .D(p_0_in__0[3]),
        .Q(\saturating_counter_reg[1]_1 [3]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][4] 
       (.C(CLK),
        .CE(saturating_counter7_out),
        .D(p_0_in__0[4]),
        .Q(\saturating_counter_reg[1]_1 [4]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][5] 
       (.C(CLK),
        .CE(saturating_counter7_out),
        .D(p_0_in__0[5]),
        .Q(\saturating_counter_reg[1]_1 [5]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][6] 
       (.C(CLK),
        .CE(saturating_counter7_out),
        .D(p_0_in__0[6]),
        .Q(\saturating_counter_reg[1]_1 [6]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][7] 
       (.C(CLK),
        .CE(saturating_counter7_out),
        .D(p_0_in__0[7]),
        .Q(\saturating_counter_reg[1]_1 [7]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][8] 
       (.C(CLK),
        .CE(saturating_counter7_out),
        .D(p_0_in__0[8]),
        .Q(\saturating_counter_reg[1]_1 [8]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][0] 
       (.C(CLK),
        .CE(saturating_counter4_out),
        .D(p_0_in__1[0]),
        .Q(\saturating_counter_reg[2]_2 [0]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][1] 
       (.C(CLK),
        .CE(saturating_counter4_out),
        .D(p_0_in__1[1]),
        .Q(\saturating_counter_reg[2]_2 [1]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][2] 
       (.C(CLK),
        .CE(saturating_counter4_out),
        .D(p_0_in__1[2]),
        .Q(\saturating_counter_reg[2]_2 [2]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][3] 
       (.C(CLK),
        .CE(saturating_counter4_out),
        .D(p_0_in__1[3]),
        .Q(\saturating_counter_reg[2]_2 [3]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][4] 
       (.C(CLK),
        .CE(saturating_counter4_out),
        .D(p_0_in__1[4]),
        .Q(\saturating_counter_reg[2]_2 [4]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][5] 
       (.C(CLK),
        .CE(saturating_counter4_out),
        .D(p_0_in__1[5]),
        .Q(\saturating_counter_reg[2]_2 [5]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][6] 
       (.C(CLK),
        .CE(saturating_counter4_out),
        .D(p_0_in__1[6]),
        .Q(\saturating_counter_reg[2]_2 [6]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][7] 
       (.C(CLK),
        .CE(saturating_counter4_out),
        .D(p_0_in__1[7]),
        .Q(\saturating_counter_reg[2]_2 [7]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][8] 
       (.C(CLK),
        .CE(saturating_counter4_out),
        .D(p_0_in__1[8]),
        .Q(\saturating_counter_reg[2]_2 [8]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][0] 
       (.C(CLK),
        .CE(saturating_counter),
        .D(p_0_in__2[0]),
        .Q(\saturating_counter_reg[3]_3 [0]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][1] 
       (.C(CLK),
        .CE(saturating_counter),
        .D(p_0_in__2[1]),
        .Q(\saturating_counter_reg[3]_3 [1]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][2] 
       (.C(CLK),
        .CE(saturating_counter),
        .D(p_0_in__2[2]),
        .Q(\saturating_counter_reg[3]_3 [2]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][3] 
       (.C(CLK),
        .CE(saturating_counter),
        .D(p_0_in__2[3]),
        .Q(\saturating_counter_reg[3]_3 [3]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][4] 
       (.C(CLK),
        .CE(saturating_counter),
        .D(p_0_in__2[4]),
        .Q(\saturating_counter_reg[3]_3 [4]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][5] 
       (.C(CLK),
        .CE(saturating_counter),
        .D(p_0_in__2[5]),
        .Q(\saturating_counter_reg[3]_3 [5]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][6] 
       (.C(CLK),
        .CE(saturating_counter),
        .D(p_0_in__2[6]),
        .Q(\saturating_counter_reg[3]_3 [6]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][7] 
       (.C(CLK),
        .CE(saturating_counter),
        .D(p_0_in__2[7]),
        .Q(\saturating_counter_reg[3]_3 [7]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][8] 
       (.C(CLK),
        .CE(saturating_counter),
        .D(p_0_in__2[8]),
        .Q(\saturating_counter_reg[3]_3 [8]),
        .R(\saturating_counter_reg[3][0]_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \store_output[0]_i_1 
       (.I0(\store_output[0]_i_2_n_0 ),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [2]),
        .O(\store_output[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \store_output[0]_i_2 
       (.I0(\saturating_counter_reg[0]_0 [3]),
        .I1(\saturating_counter_reg[0]_0 [4]),
        .I2(\saturating_counter_reg[0]_0 [5]),
        .I3(\saturating_counter_reg[0]_0 [8]),
        .I4(\saturating_counter_reg[0]_0 [7]),
        .I5(\saturating_counter_reg[0]_0 [6]),
        .O(\store_output[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \store_output[1]_i_1 
       (.I0(\store_output[1]_i_2_n_0 ),
        .I1(\saturating_counter_reg[1]_1 [0]),
        .I2(\saturating_counter_reg[1]_1 [1]),
        .I3(\saturating_counter_reg[1]_1 [2]),
        .O(\store_output[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \store_output[1]_i_2 
       (.I0(\saturating_counter_reg[1]_1 [3]),
        .I1(\saturating_counter_reg[1]_1 [4]),
        .I2(\saturating_counter_reg[1]_1 [5]),
        .I3(\saturating_counter_reg[1]_1 [8]),
        .I4(\saturating_counter_reg[1]_1 [7]),
        .I5(\saturating_counter_reg[1]_1 [6]),
        .O(\store_output[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \store_output[2]_i_1 
       (.I0(\store_output[2]_i_2_n_0 ),
        .I1(\saturating_counter_reg[2]_2 [0]),
        .I2(\saturating_counter_reg[2]_2 [1]),
        .I3(\saturating_counter_reg[2]_2 [2]),
        .O(\store_output[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \store_output[2]_i_2 
       (.I0(\saturating_counter_reg[2]_2 [3]),
        .I1(\saturating_counter_reg[2]_2 [4]),
        .I2(\saturating_counter_reg[2]_2 [5]),
        .I3(\saturating_counter_reg[2]_2 [8]),
        .I4(\saturating_counter_reg[2]_2 [7]),
        .I5(\saturating_counter_reg[2]_2 [6]),
        .O(\store_output[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \store_output[3]_i_1 
       (.I0(\store_output[3]_i_2_n_0 ),
        .I1(\saturating_counter_reg[3]_3 [0]),
        .I2(\saturating_counter_reg[3]_3 [1]),
        .I3(\saturating_counter_reg[3]_3 [2]),
        .O(store_output0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \store_output[3]_i_2 
       (.I0(\saturating_counter_reg[3]_3 [3]),
        .I1(\saturating_counter_reg[3]_3 [4]),
        .I2(\saturating_counter_reg[3]_3 [5]),
        .I3(\saturating_counter_reg[3]_3 [8]),
        .I4(\saturating_counter_reg[3]_3 [7]),
        .I5(\saturating_counter_reg[3]_3 [6]),
        .O(\store_output[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \store_output_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\store_output[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \store_output_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\store_output[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \store_output_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\store_output[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \store_output_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(store_output0),
        .Q(Q[3]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \wrapper[0]_i_1 
       (.I0(wrapper_reg[2]),
        .I1(wrapper_reg[1]),
        .I2(wrapper_reg[0]),
        .I3(\wrapper[0]_i_3_n_0 ),
        .I4(\wrapper[0]_i_4_n_0 ),
        .I5(\wrapper[0]_i_5_n_0 ),
        .O(wrapper1));
  LUT4 #(
    .INIT(16'h0004)) 
    \wrapper[0]_i_3 
       (.I0(wrapper_reg[6]),
        .I1(wrapper_reg[5]),
        .I2(wrapper_reg[4]),
        .I3(wrapper_reg[3]),
        .O(\wrapper[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \wrapper[0]_i_4 
       (.I0(wrapper_reg[9]),
        .I1(wrapper_reg[10]),
        .I2(wrapper_reg[8]),
        .I3(wrapper_reg[7]),
        .O(\wrapper[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \wrapper[0]_i_5 
       (.I0(wrapper_reg[12]),
        .I1(wrapper_reg[11]),
        .I2(wrapper_reg[13]),
        .I3(wrapper_reg[14]),
        .I4(wrapper_reg[16]),
        .I5(wrapper_reg[15]),
        .O(\wrapper[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wrapper[0]_i_6 
       (.I0(wrapper_reg[0]),
        .O(\wrapper[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[0]_i_2_n_7 ),
        .Q(wrapper_reg[0]),
        .R(wrapper1));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wrapper_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\wrapper_reg[0]_i_2_n_0 ,\NLW_wrapper_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\wrapper_reg[0]_i_2_n_4 ,\wrapper_reg[0]_i_2_n_5 ,\wrapper_reg[0]_i_2_n_6 ,\wrapper_reg[0]_i_2_n_7 }),
        .S({wrapper_reg[3:1],\wrapper[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[10] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[8]_i_1_n_5 ),
        .Q(wrapper_reg[10]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[11] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[8]_i_1_n_4 ),
        .Q(wrapper_reg[11]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[12] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[12]_i_1_n_7 ),
        .Q(wrapper_reg[12]),
        .R(wrapper1));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wrapper_reg[12]_i_1 
       (.CI(\wrapper_reg[8]_i_1_n_0 ),
        .CO({\wrapper_reg[12]_i_1_n_0 ,\NLW_wrapper_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\wrapper_reg[12]_i_1_n_4 ,\wrapper_reg[12]_i_1_n_5 ,\wrapper_reg[12]_i_1_n_6 ,\wrapper_reg[12]_i_1_n_7 }),
        .S(wrapper_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[13] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[12]_i_1_n_6 ),
        .Q(wrapper_reg[13]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[14] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[12]_i_1_n_5 ),
        .Q(wrapper_reg[14]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[15] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[12]_i_1_n_4 ),
        .Q(wrapper_reg[15]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[16] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[16]_i_1_n_7 ),
        .Q(wrapper_reg[16]),
        .R(wrapper1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wrapper_reg[16]_i_1 
       (.CI(\wrapper_reg[12]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\wrapper_reg[16]_i_1_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,wrapper_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[0]_i_2_n_6 ),
        .Q(wrapper_reg[1]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[0]_i_2_n_5 ),
        .Q(wrapper_reg[2]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[0]_i_2_n_4 ),
        .Q(wrapper_reg[3]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[4]_i_1_n_7 ),
        .Q(wrapper_reg[4]),
        .R(wrapper1));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wrapper_reg[4]_i_1 
       (.CI(\wrapper_reg[0]_i_2_n_0 ),
        .CO({\wrapper_reg[4]_i_1_n_0 ,\NLW_wrapper_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\wrapper_reg[4]_i_1_n_4 ,\wrapper_reg[4]_i_1_n_5 ,\wrapper_reg[4]_i_1_n_6 ,\wrapper_reg[4]_i_1_n_7 }),
        .S(wrapper_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[4]_i_1_n_6 ),
        .Q(wrapper_reg[5]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[4]_i_1_n_5 ),
        .Q(wrapper_reg[6]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[4]_i_1_n_4 ),
        .Q(wrapper_reg[7]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[8]_i_1_n_7 ),
        .Q(wrapper_reg[8]),
        .R(wrapper1));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wrapper_reg[8]_i_1 
       (.CI(\wrapper_reg[4]_i_1_n_0 ),
        .CO({\wrapper_reg[8]_i_1_n_0 ,\NLW_wrapper_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\wrapper_reg[8]_i_1_n_4 ,\wrapper_reg[8]_i_1_n_5 ,\wrapper_reg[8]_i_1_n_6 ,\wrapper_reg[8]_i_1_n_7 }),
        .S(wrapper_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wrapper_reg[8]_i_1_n_6 ),
        .Q(wrapper_reg[9]),
        .R(wrapper1));
endmodule

module edge_detector
   (\genblk1[0].pulse_signal_reg[0]_0 ,
    \genblk1[1].pulse_signal_reg[1]_0 ,
    \genblk1[3].pulse_signal_reg[3]_0 ,
    \genblk1[2].pulse_signal_reg[2]_0 ,
    \genblk1[2].pulse_signal_reg[2]_1 ,
    \genblk1[3].pulse_signal_reg[3]_1 ,
    DI,
    \genblk1[0].pulse_signal_reg[0]_1 ,
    \genblk1[0].pulse_signal_reg[0]_2 ,
    E,
    \genblk1[0].pulse_signal_reg[0]_3 ,
    \genblk1[1].pulse_signal_reg[1]_1 ,
    \genblk1[0].pulse_signal_reg[0]_4 ,
    S,
    \out_signal_reg[0] ,
    \genblk1[3].pulse_signal_reg[3]_2 ,
    \mode_reg[0] ,
    \genblk1[1].pulse_signal_reg[1]_2 ,
    \genblk1[0].delayed_signal_reg[3]_0 ,
    \genblk1[0].pulse_signal_reg0 ,
    CLK,
    \genblk1[1].pulse_signal_reg0 ,
    \genblk1[2].pulse_signal_reg0 ,
    \genblk1[3].pulse_signal_reg0 ,
    LEDS_OBUF,
    Q,
    next_sample,
    d_in0_carry__1,
    mode,
    sq_wave_leds,
    D);
  output \genblk1[0].pulse_signal_reg[0]_0 ;
  output \genblk1[1].pulse_signal_reg[1]_0 ;
  output \genblk1[3].pulse_signal_reg[3]_0 ;
  output \genblk1[2].pulse_signal_reg[2]_0 ;
  output \genblk1[2].pulse_signal_reg[2]_1 ;
  output \genblk1[3].pulse_signal_reg[3]_1 ;
  output [0:0]DI;
  output [0:0]\genblk1[0].pulse_signal_reg[0]_1 ;
  output \genblk1[0].pulse_signal_reg[0]_2 ;
  output [0:0]E;
  output \genblk1[0].pulse_signal_reg[0]_3 ;
  output \genblk1[1].pulse_signal_reg[1]_1 ;
  output \genblk1[0].pulse_signal_reg[0]_4 ;
  output [2:0]S;
  output [1:0]\out_signal_reg[0] ;
  output \genblk1[3].pulse_signal_reg[3]_2 ;
  output \mode_reg[0] ;
  output [0:0]\genblk1[1].pulse_signal_reg[1]_2 ;
  output [3:0]\genblk1[0].delayed_signal_reg[3]_0 ;
  input \genblk1[0].pulse_signal_reg0 ;
  input CLK;
  input \genblk1[1].pulse_signal_reg0 ;
  input \genblk1[2].pulse_signal_reg0 ;
  input \genblk1[3].pulse_signal_reg0 ;
  input [1:0]LEDS_OBUF;
  input [0:0]Q;
  input next_sample;
  input [6:0]d_in0_carry__1;
  input mode;
  input [0:0]sq_wave_leds;
  input [3:0]D;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [3:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [1:0]LEDS_OBUF;
  wire [0:0]Q;
  wire [2:0]S;
  wire [2:2]buttons_pressed;
  wire [6:0]d_in0_carry__1;
  wire [3:0]\genblk1[0].delayed_signal_reg[3]_0 ;
  wire \genblk1[0].pulse_signal_reg0 ;
  wire \genblk1[0].pulse_signal_reg[0]_0 ;
  wire [0:0]\genblk1[0].pulse_signal_reg[0]_1 ;
  wire \genblk1[0].pulse_signal_reg[0]_2 ;
  wire \genblk1[0].pulse_signal_reg[0]_3 ;
  wire \genblk1[0].pulse_signal_reg[0]_4 ;
  wire \genblk1[1].pulse_signal_reg0 ;
  wire \genblk1[1].pulse_signal_reg[1]_0 ;
  wire \genblk1[1].pulse_signal_reg[1]_1 ;
  wire [0:0]\genblk1[1].pulse_signal_reg[1]_2 ;
  wire \genblk1[2].pulse_signal_reg0 ;
  wire \genblk1[2].pulse_signal_reg[2]_0 ;
  wire \genblk1[2].pulse_signal_reg[2]_1 ;
  wire \genblk1[3].pulse_signal_reg0 ;
  wire \genblk1[3].pulse_signal_reg[3]_0 ;
  wire \genblk1[3].pulse_signal_reg[3]_1 ;
  wire \genblk1[3].pulse_signal_reg[3]_2 ;
  wire mode;
  wire \mode_reg[0] ;
  wire next_sample;
  wire [1:0]\out_signal_reg[0] ;
  wire [0:0]sq_wave_leds;

  LUT6 #(
    .INIT(64'h6360636CCCCCCCCC)) 
    \FSM_sequential_CurrentState[0]_i_1 
       (.I0(buttons_pressed),
        .I1(LEDS_OBUF[0]),
        .I2(LEDS_OBUF[1]),
        .I3(\genblk1[1].pulse_signal_reg[1]_0 ),
        .I4(\genblk1[0].pulse_signal_reg[0]_0 ),
        .I5(Q),
        .O(\genblk1[2].pulse_signal_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hE0EFF0F0F0F0F0F0)) 
    \FSM_sequential_CurrentState[1]_i_1 
       (.I0(buttons_pressed),
        .I1(LEDS_OBUF[0]),
        .I2(LEDS_OBUF[1]),
        .I3(\genblk1[1].pulse_signal_reg[1]_0 ),
        .I4(\genblk1[0].pulse_signal_reg[0]_0 ),
        .I5(Q),
        .O(\genblk1[2].pulse_signal_reg[2]_0 ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h7)) 
    d_in0_carry__0_i_1
       (.I0(\genblk1[1].pulse_signal_reg[1]_0 ),
        .I1(Q),
        .O(DI));
  LUT3 #(
    .INIT(8'h78)) 
    d_in0_carry__0_i_5
       (.I0(\genblk1[1].pulse_signal_reg[1]_0 ),
        .I1(Q),
        .I2(d_in0_carry__1[3]),
        .O(\genblk1[1].pulse_signal_reg[1]_2 ));
  LUT4 #(
    .INIT(16'hF4CC)) 
    d_in0_carry__1_i_1
       (.I0(\genblk1[0].pulse_signal_reg[0]_0 ),
        .I1(d_in0_carry__1[5]),
        .I2(\genblk1[1].pulse_signal_reg[1]_0 ),
        .I3(Q),
        .O(\genblk1[0].pulse_signal_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hD8F82707)) 
    d_in0_carry__1_i_4
       (.I0(Q),
        .I1(\genblk1[1].pulse_signal_reg[1]_0 ),
        .I2(d_in0_carry__1[5]),
        .I3(\genblk1[0].pulse_signal_reg[0]_0 ),
        .I4(d_in0_carry__1[6]),
        .O(\out_signal_reg[0] [1]));
  LUT5 #(
    .INIT(32'h1FE0E01F)) 
    d_in0_carry__1_i_5
       (.I0(\genblk1[1].pulse_signal_reg[1]_0 ),
        .I1(\genblk1[0].pulse_signal_reg[0]_0 ),
        .I2(Q),
        .I3(d_in0_carry__1[5]),
        .I4(d_in0_carry__1[4]),
        .O(\out_signal_reg[0] [0]));
  LUT3 #(
    .INIT(8'h78)) 
    d_in0_carry_i_2
       (.I0(\genblk1[1].pulse_signal_reg[1]_0 ),
        .I1(Q),
        .I2(d_in0_carry__1[2]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9AAA)) 
    d_in0_carry_i_3
       (.I0(d_in0_carry__1[1]),
        .I1(\genblk1[1].pulse_signal_reg[1]_0 ),
        .I2(Q),
        .I3(\genblk1[0].pulse_signal_reg[0]_0 ),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h666A)) 
    d_in0_carry_i_4
       (.I0(d_in0_carry__1[0]),
        .I1(Q),
        .I2(\genblk1[0].pulse_signal_reg[0]_0 ),
        .I3(\genblk1[1].pulse_signal_reg[1]_0 ),
        .O(S[0]));
  LUT3 #(
    .INIT(8'hCD)) 
    \dac_samples[0]_i_3 
       (.I0(\genblk1[0].pulse_signal_reg[0]_0 ),
        .I1(Q),
        .I2(\genblk1[1].pulse_signal_reg[1]_0 ),
        .O(\genblk1[0].pulse_signal_reg[0]_3 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \dac_samples[10]_i_2 
       (.I0(\genblk1[0].pulse_signal_reg[0]_0 ),
        .I1(Q),
        .I2(\genblk1[1].pulse_signal_reg[1]_0 ),
        .O(\genblk1[0].pulse_signal_reg[0]_2 ));
  LUT4 #(
    .INIT(16'hAFAE)) 
    \dac_samples[11]_i_1 
       (.I0(\genblk1[3].pulse_signal_reg[3]_0 ),
        .I1(\genblk1[1].pulse_signal_reg[1]_0 ),
        .I2(Q),
        .I3(\genblk1[0].pulse_signal_reg[0]_0 ),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    \dac_samples[2]_i_4 
       (.I0(\genblk1[1].pulse_signal_reg[1]_0 ),
        .I1(Q),
        .O(\genblk1[1].pulse_signal_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dac_samples[7]_i_2 
       (.I0(\genblk1[0].pulse_signal_reg[0]_0 ),
        .I1(Q),
        .O(\genblk1[0].pulse_signal_reg[0]_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].delayed_signal_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(\genblk1[0].delayed_signal_reg[3]_0 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].delayed_signal_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(\genblk1[0].delayed_signal_reg[3]_0 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].delayed_signal_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(\genblk1[0].delayed_signal_reg[3]_0 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].delayed_signal_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(D[3]),
        .Q(\genblk1[0].delayed_signal_reg[3]_0 [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].pulse_signal_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\genblk1[0].pulse_signal_reg0 ),
        .Q(\genblk1[0].pulse_signal_reg[0]_0 ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].pulse_signal_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\genblk1[1].pulse_signal_reg0 ),
        .Q(\genblk1[1].pulse_signal_reg[1]_0 ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].pulse_signal_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\genblk1[2].pulse_signal_reg0 ),
        .Q(buttons_pressed),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].pulse_signal_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\genblk1[3].pulse_signal_reg0 ),
        .Q(\genblk1[3].pulse_signal_reg[3]_0 ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h3333533300005000)) 
    \led_zero[0]_i_1 
       (.I0(mode),
        .I1(\genblk1[3].pulse_signal_reg[3]_0 ),
        .I2(\genblk1[0].pulse_signal_reg[0]_3 ),
        .I3(buttons_pressed),
        .I4(Q),
        .I5(sq_wave_leds),
        .O(\mode_reg[0] ));
  LUT6 #(
    .INIT(64'h5554555500030000)) 
    \mode[0]_i_1 
       (.I0(\genblk1[3].pulse_signal_reg[3]_0 ),
        .I1(\genblk1[0].pulse_signal_reg[0]_0 ),
        .I2(Q),
        .I3(\genblk1[1].pulse_signal_reg[1]_0 ),
        .I4(buttons_pressed),
        .I5(mode),
        .O(\genblk1[3].pulse_signal_reg[3]_2 ));
  LUT2 #(
    .INIT(4'hE)) 
    sel_i_1
       (.I0(\genblk1[3].pulse_signal_reg[3]_0 ),
        .I1(next_sample),
        .O(\genblk1[3].pulse_signal_reg[3]_1 ));
endmodule

module fcw_ram
   (Q,
    \counter_reg[23] ,
    \counter_reg[23]_0 ,
    \FSM_sequential_CurrentState_reg[1] ,
    \FSM_sequential_CurrentState_reg[1]_0 ,
    \FSM_sequential_CurrentState_reg[1]_1 ,
    \FSM_sequential_CurrentState_reg[1]_2 ,
    \FSM_sequential_CurrentState_reg[1]_3 ,
    \counter_reg[3] ,
    \counter_reg[7] ,
    \counter_reg[11] ,
    \counter_reg[15] ,
    \counter_reg[19] ,
    S,
    \d_out_reg[12]_0 ,
    \d_out_reg[16]_0 ,
    \d_out_reg[20]_0 ,
    \d_out_reg[22]_0 ,
    in12,
    \d_out_reg[0]_0 ,
    \d_out_reg[0]_1 ,
    addr,
    counter_reg,
    \ram_reg[3][2]_0 ,
    CLK);
  output [19:0]Q;
  output [3:0]\counter_reg[23] ;
  output [3:0]\counter_reg[23]_0 ;
  output [3:0]\FSM_sequential_CurrentState_reg[1] ;
  output [3:0]\FSM_sequential_CurrentState_reg[1]_0 ;
  output [3:0]\FSM_sequential_CurrentState_reg[1]_1 ;
  output [3:0]\FSM_sequential_CurrentState_reg[1]_2 ;
  output [3:0]\FSM_sequential_CurrentState_reg[1]_3 ;
  output [3:0]\counter_reg[3] ;
  output [3:0]\counter_reg[7] ;
  output [3:0]\counter_reg[11] ;
  output [3:0]\counter_reg[15] ;
  output [3:0]\counter_reg[19] ;
  output [2:0]S;
  output [1:0]\d_out_reg[12]_0 ;
  output [3:0]\d_out_reg[16]_0 ;
  output [3:0]\d_out_reg[20]_0 ;
  output [1:0]\d_out_reg[22]_0 ;
  input [21:0]in12;
  input \d_out_reg[0]_0 ;
  input \d_out_reg[0]_1 ;
  input [1:0]addr;
  input [23:0]counter_reg;
  input [0:0]\ram_reg[3][2]_0 ;
  input CLK;

  wire \<const0> ;
  wire CLK;
  wire [3:0]\FSM_sequential_CurrentState_reg[1] ;
  wire [3:0]\FSM_sequential_CurrentState_reg[1]_0 ;
  wire [3:0]\FSM_sequential_CurrentState_reg[1]_1 ;
  wire [3:0]\FSM_sequential_CurrentState_reg[1]_2 ;
  wire [3:0]\FSM_sequential_CurrentState_reg[1]_3 ;
  wire [19:0]Q;
  wire [2:0]S;
  wire [1:0]addr;
  wire [23:0]counter_reg;
  wire [3:0]\counter_reg[11] ;
  wire [3:0]\counter_reg[15] ;
  wire [3:0]\counter_reg[19] ;
  wire [3:0]\counter_reg[23] ;
  wire [3:0]\counter_reg[23]_0 ;
  wire [3:0]\counter_reg[3] ;
  wire [3:0]\counter_reg[7] ;
  wire [23:2]d_in;
  wire [23:0]d_out;
  wire \d_out[0]_i_1_n_0 ;
  wire \d_out[10]_i_1_n_0 ;
  wire \d_out[11]_i_1_n_0 ;
  wire \d_out[12]_i_1_n_0 ;
  wire \d_out[13]_i_1_n_0 ;
  wire \d_out[14]_i_1_n_0 ;
  wire \d_out[15]_i_1_n_0 ;
  wire \d_out[16]_i_1_n_0 ;
  wire \d_out[17]_i_1_n_0 ;
  wire \d_out[18]_i_1_n_0 ;
  wire \d_out[19]_i_1_n_0 ;
  wire \d_out[1]_i_1_n_0 ;
  wire \d_out[20]_i_1_n_0 ;
  wire \d_out[21]_i_1_n_0 ;
  wire \d_out[22]_i_1_n_0 ;
  wire \d_out[23]_i_2_n_0 ;
  wire \d_out[2]_i_1_n_0 ;
  wire \d_out[3]_i_1_n_0 ;
  wire \d_out[4]_i_1_n_0 ;
  wire \d_out[5]_i_1_n_0 ;
  wire \d_out[6]_i_1_n_0 ;
  wire \d_out[7]_i_1_n_0 ;
  wire \d_out[8]_i_1_n_0 ;
  wire \d_out[9]_i_1_n_0 ;
  wire \d_out_reg[0]_0 ;
  wire \d_out_reg[0]_1 ;
  wire [1:0]\d_out_reg[12]_0 ;
  wire [3:0]\d_out_reg[16]_0 ;
  wire [3:0]\d_out_reg[20]_0 ;
  wire [1:0]\d_out_reg[22]_0 ;
  wire [21:0]in12;
  wire ram;
  wire \ram[0][23]_i_1_n_0 ;
  wire \ram[1][23]_i_1_n_0 ;
  wire \ram[2][23]_i_1_n_0 ;
  wire [23:0]\ram_reg[0] ;
  wire [23:0]\ram_reg[1] ;
  wire [23:0]\ram_reg[2] ;
  wire [23:0]\ram_reg[3] ;
  wire [0:0]\ram_reg[3][2]_0 ;
  wire rd_en;

  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__0_i_1__0
       (.I0(counter_reg[7]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[5]),
        .O(\counter_reg[7] [3]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__0_i_2__0
       (.I0(counter_reg[6]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[4]),
        .O(\counter_reg[7] [2]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__0_i_3__0
       (.I0(counter_reg[5]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[3]),
        .O(\counter_reg[7] [1]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__0_i_4__0
       (.I0(counter_reg[4]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[2]),
        .O(\counter_reg[7] [0]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__1_i_1__0
       (.I0(counter_reg[11]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[9]),
        .O(\counter_reg[11] [3]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__1_i_2__0
       (.I0(counter_reg[10]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[8]),
        .O(\counter_reg[11] [2]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__1_i_3__0
       (.I0(counter_reg[9]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[7]),
        .O(\counter_reg[11] [1]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__1_i_4
       (.I0(counter_reg[8]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[6]),
        .O(\counter_reg[11] [0]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__2_i_1
       (.I0(counter_reg[15]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[13]),
        .O(\counter_reg[15] [3]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__2_i_2
       (.I0(counter_reg[14]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[12]),
        .O(\counter_reg[15] [2]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__2_i_3
       (.I0(counter_reg[13]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[11]),
        .O(\counter_reg[15] [1]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__2_i_4
       (.I0(counter_reg[12]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[10]),
        .O(\counter_reg[15] [0]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__3_i_1
       (.I0(counter_reg[19]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[17]),
        .O(\counter_reg[19] [3]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__3_i_2
       (.I0(counter_reg[18]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[16]),
        .O(\counter_reg[19] [2]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__3_i_3
       (.I0(counter_reg[17]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[15]),
        .O(\counter_reg[19] [1]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__3_i_4
       (.I0(counter_reg[16]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[14]),
        .O(\counter_reg[19] [0]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__4_i_1
       (.I0(counter_reg[23]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(d_out[23]),
        .O(\counter_reg[23] [3]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__4_i_2
       (.I0(counter_reg[22]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(d_out[22]),
        .O(\counter_reg[23] [2]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__4_i_3
       (.I0(counter_reg[21]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[19]),
        .O(\counter_reg[23] [1]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry__4_i_4
       (.I0(counter_reg[20]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[18]),
        .O(\counter_reg[23] [0]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry_i_1__0
       (.I0(counter_reg[3]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[1]),
        .O(\counter_reg[3] [3]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry_i_2__0
       (.I0(counter_reg[2]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[0]),
        .O(\counter_reg[3] [2]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry_i_3__0
       (.I0(counter_reg[1]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(d_out[1]),
        .O(\counter_reg[3] [1]));
  LUT4 #(
    .INIT(16'h59AA)) 
    counter0_carry_i_4__0
       (.I0(counter_reg[0]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(d_out[0]),
        .O(\counter_reg[3] [0]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[0]_i_2 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[1]),
        .I3(counter_reg[3]),
        .O(\FSM_sequential_CurrentState_reg[1] [3]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[0]_i_3__0 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[0]),
        .I3(counter_reg[2]),
        .O(\FSM_sequential_CurrentState_reg[1] [2]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[0]_i_4 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(d_out[1]),
        .I3(counter_reg[1]),
        .O(\FSM_sequential_CurrentState_reg[1] [1]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[0]_i_5 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(d_out[0]),
        .I3(counter_reg[0]),
        .O(\FSM_sequential_CurrentState_reg[1] [0]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[12]_i_2 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[13]),
        .I3(counter_reg[15]),
        .O(\FSM_sequential_CurrentState_reg[1]_2 [3]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[12]_i_3 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[12]),
        .I3(counter_reg[14]),
        .O(\FSM_sequential_CurrentState_reg[1]_2 [2]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[12]_i_4 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[11]),
        .I3(counter_reg[13]),
        .O(\FSM_sequential_CurrentState_reg[1]_2 [1]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[12]_i_5 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[10]),
        .I3(counter_reg[12]),
        .O(\FSM_sequential_CurrentState_reg[1]_2 [0]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[16]_i_2 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[17]),
        .I3(counter_reg[19]),
        .O(\FSM_sequential_CurrentState_reg[1]_3 [3]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[16]_i_3 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[16]),
        .I3(counter_reg[18]),
        .O(\FSM_sequential_CurrentState_reg[1]_3 [2]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[16]_i_4 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[15]),
        .I3(counter_reg[17]),
        .O(\FSM_sequential_CurrentState_reg[1]_3 [1]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[16]_i_5 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[14]),
        .I3(counter_reg[16]),
        .O(\FSM_sequential_CurrentState_reg[1]_3 [0]));
  LUT4 #(
    .INIT(16'h59AA)) 
    \counter[20]_i_2 
       (.I0(counter_reg[23]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(d_out[23]),
        .O(\counter_reg[23]_0 [3]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[20]_i_3 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(d_out[22]),
        .I3(counter_reg[22]),
        .O(\counter_reg[23]_0 [2]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[20]_i_4 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[19]),
        .I3(counter_reg[21]),
        .O(\counter_reg[23]_0 [1]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[20]_i_5 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[18]),
        .I3(counter_reg[20]),
        .O(\counter_reg[23]_0 [0]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[4]_i_2 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[5]),
        .I3(counter_reg[7]),
        .O(\FSM_sequential_CurrentState_reg[1]_0 [3]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[4]_i_3 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[4]),
        .I3(counter_reg[6]),
        .O(\FSM_sequential_CurrentState_reg[1]_0 [2]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[4]_i_4 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[3]),
        .I3(counter_reg[5]),
        .O(\FSM_sequential_CurrentState_reg[1]_0 [1]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[4]_i_5 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[2]),
        .I3(counter_reg[4]),
        .O(\FSM_sequential_CurrentState_reg[1]_0 [0]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[8]_i_2 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[9]),
        .I3(counter_reg[11]),
        .O(\FSM_sequential_CurrentState_reg[1]_1 [3]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[8]_i_3 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[8]),
        .I3(counter_reg[10]),
        .O(\FSM_sequential_CurrentState_reg[1]_1 [2]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[8]_i_4 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[7]),
        .I3(counter_reg[9]),
        .O(\FSM_sequential_CurrentState_reg[1]_1 [1]));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \counter[8]_i_5 
       (.I0(\d_out_reg[0]_0 ),
        .I1(\d_out_reg[0]_1 ),
        .I2(Q[6]),
        .I3(counter_reg[8]),
        .O(\FSM_sequential_CurrentState_reg[1]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    d_in0_carry__0_i_2
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    d_in0_carry__0_i_3
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    d_in0_carry__0_i_4
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    d_in0_carry__1_i_2
       (.I0(Q[10]),
        .I1(Q[11]),
        .O(\d_out_reg[12]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    d_in0_carry__1_i_3
       (.I0(Q[9]),
        .I1(Q[10]),
        .O(\d_out_reg[12]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    d_in0_carry__2_i_1
       (.I0(Q[14]),
        .I1(Q[15]),
        .O(\d_out_reg[16]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    d_in0_carry__2_i_2
       (.I0(Q[13]),
        .I1(Q[14]),
        .O(\d_out_reg[16]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    d_in0_carry__2_i_3
       (.I0(Q[12]),
        .I1(Q[13]),
        .O(\d_out_reg[16]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    d_in0_carry__2_i_4
       (.I0(Q[11]),
        .I1(Q[12]),
        .O(\d_out_reg[16]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    d_in0_carry__3_i_1
       (.I0(Q[18]),
        .I1(Q[19]),
        .O(\d_out_reg[20]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    d_in0_carry__3_i_2
       (.I0(Q[17]),
        .I1(Q[18]),
        .O(\d_out_reg[20]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    d_in0_carry__3_i_3
       (.I0(Q[16]),
        .I1(Q[17]),
        .O(\d_out_reg[20]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    d_in0_carry__3_i_4
       (.I0(Q[15]),
        .I1(Q[16]),
        .O(\d_out_reg[20]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    d_in0_carry__4_i_1
       (.I0(d_out[22]),
        .I1(d_out[23]),
        .O(\d_out_reg[22]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    d_in0_carry__4_i_2
       (.I0(Q[19]),
        .I1(d_out[22]),
        .O(\d_out_reg[22]_0 [0]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \d_out[0]_i_1 
       (.I0(\ram_reg[0] [0]),
        .I1(\ram_reg[1] [0]),
        .I2(\ram_reg[2] [0]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [0]),
        .O(\d_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[10]_i_1 
       (.I0(\ram_reg[1] [10]),
        .I1(\ram_reg[0] [10]),
        .I2(\ram_reg[2] [10]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [10]),
        .O(\d_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[11]_i_1 
       (.I0(\ram_reg[1] [11]),
        .I1(\ram_reg[0] [11]),
        .I2(\ram_reg[2] [11]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [11]),
        .O(\d_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[12]_i_1 
       (.I0(\ram_reg[1] [12]),
        .I1(\ram_reg[0] [12]),
        .I2(\ram_reg[2] [12]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [12]),
        .O(\d_out[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \d_out[13]_i_1 
       (.I0(\ram_reg[0] [13]),
        .I1(\ram_reg[3] [13]),
        .I2(\ram_reg[1] [13]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(\ram_reg[2] [13]),
        .O(\d_out[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[14]_i_1 
       (.I0(\ram_reg[1] [14]),
        .I1(\ram_reg[0] [14]),
        .I2(\ram_reg[2] [14]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [14]),
        .O(\d_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \d_out[15]_i_1 
       (.I0(\ram_reg[0] [15]),
        .I1(\ram_reg[1] [15]),
        .I2(\ram_reg[2] [15]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [15]),
        .O(\d_out[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \d_out[16]_i_1 
       (.I0(\ram_reg[0] [16]),
        .I1(\ram_reg[1] [16]),
        .I2(\ram_reg[2] [16]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [16]),
        .O(\d_out[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \d_out[17]_i_1 
       (.I0(\ram_reg[0] [17]),
        .I1(\ram_reg[1] [17]),
        .I2(\ram_reg[2] [17]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [17]),
        .O(\d_out[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[18]_i_1 
       (.I0(\ram_reg[1] [18]),
        .I1(\ram_reg[0] [18]),
        .I2(\ram_reg[2] [18]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [18]),
        .O(\d_out[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[19]_i_1 
       (.I0(\ram_reg[1] [19]),
        .I1(\ram_reg[0] [19]),
        .I2(\ram_reg[2] [19]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [19]),
        .O(\d_out[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \d_out[1]_i_1 
       (.I0(\ram_reg[0] [1]),
        .I1(\ram_reg[1] [1]),
        .I2(\ram_reg[2] [1]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [1]),
        .O(\d_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[20]_i_1 
       (.I0(\ram_reg[1] [20]),
        .I1(\ram_reg[0] [20]),
        .I2(\ram_reg[2] [20]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [20]),
        .O(\d_out[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \d_out[21]_i_1 
       (.I0(\ram_reg[0] [21]),
        .I1(\ram_reg[3] [21]),
        .I2(\ram_reg[1] [21]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(\ram_reg[2] [21]),
        .O(\d_out[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[22]_i_1 
       (.I0(\ram_reg[1] [22]),
        .I1(\ram_reg[0] [22]),
        .I2(\ram_reg[2] [22]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [22]),
        .O(\d_out[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \d_out[23]_i_1 
       (.I0(\d_out_reg[0]_1 ),
        .I1(\d_out_reg[0]_0 ),
        .O(rd_en));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \d_out[23]_i_2 
       (.I0(\ram_reg[0] [23]),
        .I1(\ram_reg[1] [23]),
        .I2(\ram_reg[2] [23]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [23]),
        .O(\d_out[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[2]_i_1 
       (.I0(\ram_reg[1] [2]),
        .I1(\ram_reg[0] [2]),
        .I2(\ram_reg[2] [2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [2]),
        .O(\d_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[3]_i_1 
       (.I0(\ram_reg[1] [3]),
        .I1(\ram_reg[0] [3]),
        .I2(\ram_reg[2] [3]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [3]),
        .O(\d_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[4]_i_1 
       (.I0(\ram_reg[1] [4]),
        .I1(\ram_reg[0] [4]),
        .I2(\ram_reg[2] [4]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [4]),
        .O(\d_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \d_out[5]_i_1 
       (.I0(\ram_reg[0] [5]),
        .I1(\ram_reg[3] [5]),
        .I2(\ram_reg[1] [5]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(\ram_reg[2] [5]),
        .O(\d_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[6]_i_1 
       (.I0(\ram_reg[1] [6]),
        .I1(\ram_reg[0] [6]),
        .I2(\ram_reg[2] [6]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [6]),
        .O(\d_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \d_out[7]_i_1 
       (.I0(\ram_reg[0] [7]),
        .I1(\ram_reg[1] [7]),
        .I2(\ram_reg[2] [7]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [7]),
        .O(\d_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \d_out[8]_i_1 
       (.I0(\ram_reg[0] [8]),
        .I1(\ram_reg[1] [8]),
        .I2(\ram_reg[2] [8]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [8]),
        .O(\d_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \d_out[9]_i_1 
       (.I0(\ram_reg[0] [9]),
        .I1(\ram_reg[1] [9]),
        .I2(\ram_reg[2] [9]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [9]),
        .O(\d_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[0] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[0]_i_1_n_0 ),
        .Q(d_out[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[10] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[10]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[11] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[11]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[12] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[12]_i_1_n_0 ),
        .Q(Q[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[13] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[13]_i_1_n_0 ),
        .Q(Q[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[14] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[14]_i_1_n_0 ),
        .Q(Q[12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[15] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[15]_i_1_n_0 ),
        .Q(Q[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[16] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[16]_i_1_n_0 ),
        .Q(Q[14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[17] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[17]_i_1_n_0 ),
        .Q(Q[15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[18] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[18]_i_1_n_0 ),
        .Q(Q[16]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[19] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[19]_i_1_n_0 ),
        .Q(Q[17]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[1] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[1]_i_1_n_0 ),
        .Q(d_out[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[20] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[20]_i_1_n_0 ),
        .Q(Q[18]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[21] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[21]_i_1_n_0 ),
        .Q(Q[19]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[22] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[22]_i_1_n_0 ),
        .Q(d_out[22]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[23] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[23]_i_2_n_0 ),
        .Q(d_out[23]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[2]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[3]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[4] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[4]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[5] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[5]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[6] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[6]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[7]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[8] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[8]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[9] 
       (.C(CLK),
        .CE(rd_en),
        .D(\d_out[9]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][10]_i_1 
       (.I0(in12[8]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[8]),
        .O(d_in[10]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][11]_i_1 
       (.I0(in12[9]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[9]),
        .O(d_in[11]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][12]_i_1 
       (.I0(in12[10]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[10]),
        .O(d_in[12]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][13]_i_1 
       (.I0(in12[11]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[11]),
        .O(d_in[13]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][14]_i_1 
       (.I0(in12[12]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[12]),
        .O(d_in[14]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][15]_i_1 
       (.I0(in12[13]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[13]),
        .O(d_in[15]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][16]_i_1 
       (.I0(in12[14]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[14]),
        .O(d_in[16]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][17]_i_1 
       (.I0(in12[15]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[15]),
        .O(d_in[17]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][18]_i_1 
       (.I0(in12[16]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[16]),
        .O(d_in[18]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][19]_i_1 
       (.I0(in12[17]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[17]),
        .O(d_in[19]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][20]_i_1 
       (.I0(in12[18]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[18]),
        .O(d_in[20]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][21]_i_1 
       (.I0(in12[19]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[19]),
        .O(d_in[21]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][22]_i_1 
       (.I0(in12[20]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(d_out[22]),
        .O(d_in[22]));
  LUT4 #(
    .INIT(16'h1000)) 
    \ram[0][23]_i_1 
       (.I0(addr[1]),
        .I1(addr[0]),
        .I2(\d_out_reg[0]_1 ),
        .I3(\d_out_reg[0]_0 ),
        .O(\ram[0][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][23]_i_2 
       (.I0(in12[21]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(d_out[23]),
        .O(d_in[23]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][2]_i_1 
       (.I0(in12[0]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[0]),
        .O(d_in[2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][3]_i_1 
       (.I0(in12[1]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[1]),
        .O(d_in[3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][4]_i_1 
       (.I0(in12[2]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[2]),
        .O(d_in[4]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][5]_i_1 
       (.I0(in12[3]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[3]),
        .O(d_in[5]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][6]_i_1 
       (.I0(in12[4]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[4]),
        .O(d_in[6]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][7]_i_1 
       (.I0(in12[5]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[5]),
        .O(d_in[7]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][8]_i_1 
       (.I0(in12[6]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[6]),
        .O(d_in[8]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ram[0][9]_i_1 
       (.I0(in12[7]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\d_out_reg[0]_1 ),
        .I3(Q[7]),
        .O(d_in[9]));
  LUT4 #(
    .INIT(16'h0080)) 
    \ram[1][23]_i_1 
       (.I0(\d_out_reg[0]_1 ),
        .I1(\d_out_reg[0]_0 ),
        .I2(addr[0]),
        .I3(addr[1]),
        .O(\ram[1][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \ram[2][23]_i_1 
       (.I0(\d_out_reg[0]_1 ),
        .I1(\d_out_reg[0]_0 ),
        .I2(addr[1]),
        .I3(addr[0]),
        .O(\ram[2][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \ram[3][23]_i_1 
       (.I0(\d_out_reg[0]_1 ),
        .I1(\d_out_reg[0]_0 ),
        .I2(addr[1]),
        .I3(addr[0]),
        .O(ram));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][0] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_out[0]),
        .Q(\ram_reg[0] [0]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][10] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[10]),
        .Q(\ram_reg[0] [10]),
        .S(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][11] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[11]),
        .Q(\ram_reg[0] [11]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][12] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[12]),
        .Q(\ram_reg[0] [12]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][13] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[13]),
        .Q(\ram_reg[0] [13]),
        .S(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][14] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[14]),
        .Q(\ram_reg[0] [14]),
        .S(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][15] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[15]),
        .Q(\ram_reg[0] [15]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][16] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[16]),
        .Q(\ram_reg[0] [16]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][17] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[17]),
        .Q(\ram_reg[0] [17]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][18] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[18]),
        .Q(\ram_reg[0] [18]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][19] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[19]),
        .Q(\ram_reg[0] [19]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][1] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_out[1]),
        .Q(\ram_reg[0] [1]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][20] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[20]),
        .Q(\ram_reg[0] [20]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][21] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[21]),
        .Q(\ram_reg[0] [21]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][22] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[22]),
        .Q(\ram_reg[0] [22]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][23] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[23]),
        .Q(\ram_reg[0] [23]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][2] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[2]),
        .Q(\ram_reg[0] [2]),
        .S(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][3] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[3]),
        .Q(\ram_reg[0] [3]),
        .S(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][4] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[4]),
        .Q(\ram_reg[0] [4]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][5] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[5]),
        .Q(\ram_reg[0] [5]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][6] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[6]),
        .Q(\ram_reg[0] [6]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][7] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[7]),
        .Q(\ram_reg[0] [7]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][8] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[8]),
        .Q(\ram_reg[0] [8]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][9] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(d_in[9]),
        .Q(\ram_reg[0] [9]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][0] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_out[0]),
        .Q(\ram_reg[1] [0]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][10] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[10]),
        .Q(\ram_reg[1] [10]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][11] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[11]),
        .Q(\ram_reg[1] [11]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][12] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[12]),
        .Q(\ram_reg[1] [12]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][13] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[13]),
        .Q(\ram_reg[1] [13]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][14] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[14]),
        .Q(\ram_reg[1] [14]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][15] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[15]),
        .Q(\ram_reg[1] [15]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][16] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[16]),
        .Q(\ram_reg[1] [16]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][17] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[17]),
        .Q(\ram_reg[1] [17]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][18] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[18]),
        .Q(\ram_reg[1] [18]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][19] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[19]),
        .Q(\ram_reg[1] [19]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][1] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_out[1]),
        .Q(\ram_reg[1] [1]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][20] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[20]),
        .Q(\ram_reg[1] [20]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][21] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[21]),
        .Q(\ram_reg[1] [21]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][22] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[22]),
        .Q(\ram_reg[1] [22]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][23] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[23]),
        .Q(\ram_reg[1] [23]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][2] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[2]),
        .Q(\ram_reg[1] [2]),
        .S(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][3] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[3]),
        .Q(\ram_reg[1] [3]),
        .S(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][4] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[4]),
        .Q(\ram_reg[1] [4]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][5] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[5]),
        .Q(\ram_reg[1] [5]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][6] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[6]),
        .Q(\ram_reg[1] [6]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][7] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[7]),
        .Q(\ram_reg[1] [7]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][8] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[8]),
        .Q(\ram_reg[1] [8]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][9] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(d_in[9]),
        .Q(\ram_reg[1] [9]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][0] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_out[0]),
        .Q(\ram_reg[2] [0]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][10] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[10]),
        .Q(\ram_reg[2] [10]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][11] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[11]),
        .Q(\ram_reg[2] [11]),
        .S(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][12] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[12]),
        .Q(\ram_reg[2] [12]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][13] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[13]),
        .Q(\ram_reg[2] [13]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][14] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[14]),
        .Q(\ram_reg[2] [14]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][15] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[15]),
        .Q(\ram_reg[2] [15]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][16] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[16]),
        .Q(\ram_reg[2] [16]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][17] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[17]),
        .Q(\ram_reg[2] [17]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][18] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[18]),
        .Q(\ram_reg[2] [18]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][19] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[19]),
        .Q(\ram_reg[2] [19]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][1] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_out[1]),
        .Q(\ram_reg[2] [1]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][20] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[20]),
        .Q(\ram_reg[2] [20]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][21] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[21]),
        .Q(\ram_reg[2] [21]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][22] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[22]),
        .Q(\ram_reg[2] [22]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][23] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[23]),
        .Q(\ram_reg[2] [23]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][2] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[2]),
        .Q(\ram_reg[2] [2]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][3] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[3]),
        .Q(\ram_reg[2] [3]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][4] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[4]),
        .Q(\ram_reg[2] [4]),
        .S(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][5] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[5]),
        .Q(\ram_reg[2] [5]),
        .S(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][6] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[6]),
        .Q(\ram_reg[2] [6]),
        .S(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][7] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[7]),
        .Q(\ram_reg[2] [7]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][8] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[8]),
        .Q(\ram_reg[2] [8]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][9] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(d_in[9]),
        .Q(\ram_reg[2] [9]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][0] 
       (.C(CLK),
        .CE(ram),
        .D(d_out[0]),
        .Q(\ram_reg[3] [0]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][10] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[10]),
        .Q(\ram_reg[3] [10]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][11] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[11]),
        .Q(\ram_reg[3] [11]),
        .S(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][12] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[12]),
        .Q(\ram_reg[3] [12]),
        .S(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][13] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[13]),
        .Q(\ram_reg[3] [13]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][14] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[14]),
        .Q(\ram_reg[3] [14]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][15] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[15]),
        .Q(\ram_reg[3] [15]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][16] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[16]),
        .Q(\ram_reg[3] [16]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][17] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[17]),
        .Q(\ram_reg[3] [17]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][18] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[18]),
        .Q(\ram_reg[3] [18]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][19] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[19]),
        .Q(\ram_reg[3] [19]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][1] 
       (.C(CLK),
        .CE(ram),
        .D(d_out[1]),
        .Q(\ram_reg[3] [1]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][20] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[20]),
        .Q(\ram_reg[3] [20]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][21] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[21]),
        .Q(\ram_reg[3] [21]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][22] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[22]),
        .Q(\ram_reg[3] [22]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][23] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[23]),
        .Q(\ram_reg[3] [23]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][2] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[2]),
        .Q(\ram_reg[3] [2]),
        .R(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][3] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[3]),
        .Q(\ram_reg[3] [3]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][4] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[4]),
        .Q(\ram_reg[3] [4]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][5] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[5]),
        .Q(\ram_reg[3] [5]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][6] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[6]),
        .Q(\ram_reg[3] [6]),
        .S(\ram_reg[3][2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][7] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[7]),
        .Q(\ram_reg[3] [7]),
        .R(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][8] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[8]),
        .Q(\ram_reg[3] [8]),
        .S(\ram_reg[3][2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][9] 
       (.C(CLK),
        .CE(ram),
        .D(d_in[9]),
        .Q(\ram_reg[3] [9]),
        .S(\ram_reg[3][2]_0 ));
endmodule

module fsm
   (LEDS_OBUF,
    Q,
    \counter_reg[23] ,
    \counter_reg[23]_0 ,
    \FSM_sequential_CurrentState_reg[1]_0 ,
    \FSM_sequential_CurrentState_reg[1]_1 ,
    \FSM_sequential_CurrentState_reg[1]_2 ,
    \FSM_sequential_CurrentState_reg[1]_3 ,
    \FSM_sequential_CurrentState_reg[1]_4 ,
    \counter_reg[3] ,
    \counter_reg[7] ,
    \counter_reg[11] ,
    \counter_reg[15] ,
    \counter_reg[19] ,
    \ram_reg[3][2] ,
    \FSM_sequential_CurrentState_reg[1]_5 ,
    CLK,
    \FSM_sequential_CurrentState_reg[0]_0 ,
    DI,
    S,
    \ram_reg[3][9] ,
    \ram_reg[3][9]_0 ,
    \ram_reg[3][13] ,
    \ram_reg[3][13]_0 ,
    \LEDS[2] ,
    sq_wave_leds,
    counter_reg,
    \addr_reg[0]_0 ,
    fsm_buttons);
  output [4:0]LEDS_OBUF;
  output [6:0]Q;
  output [3:0]\counter_reg[23] ;
  output [3:0]\counter_reg[23]_0 ;
  output [3:0]\FSM_sequential_CurrentState_reg[1]_0 ;
  output [3:0]\FSM_sequential_CurrentState_reg[1]_1 ;
  output [3:0]\FSM_sequential_CurrentState_reg[1]_2 ;
  output [3:0]\FSM_sequential_CurrentState_reg[1]_3 ;
  output [3:0]\FSM_sequential_CurrentState_reg[1]_4 ;
  output [3:0]\counter_reg[3] ;
  output [3:0]\counter_reg[7] ;
  output [3:0]\counter_reg[11] ;
  output [3:0]\counter_reg[15] ;
  output [3:0]\counter_reg[19] ;
  input [2:0]\ram_reg[3][2] ;
  input \FSM_sequential_CurrentState_reg[1]_5 ;
  input CLK;
  input \FSM_sequential_CurrentState_reg[0]_0 ;
  input [0:0]DI;
  input [2:0]S;
  input [0:0]\ram_reg[3][9] ;
  input [0:0]\ram_reg[3][9]_0 ;
  input [0:0]\ram_reg[3][13] ;
  input [1:0]\ram_reg[3][13]_0 ;
  input [0:0]\LEDS[2] ;
  input [0:0]sq_wave_leds;
  input [23:0]counter_reg;
  input \addr_reg[0]_0 ;
  input [0:0]fsm_buttons;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]DI;
  wire \FSM_sequential_CurrentState_reg[0]_0 ;
  wire [3:0]\FSM_sequential_CurrentState_reg[1]_0 ;
  wire [3:0]\FSM_sequential_CurrentState_reg[1]_1 ;
  wire [3:0]\FSM_sequential_CurrentState_reg[1]_2 ;
  wire [3:0]\FSM_sequential_CurrentState_reg[1]_3 ;
  wire [3:0]\FSM_sequential_CurrentState_reg[1]_4 ;
  wire \FSM_sequential_CurrentState_reg[1]_5 ;
  wire [0:0]\LEDS[2] ;
  wire [4:0]LEDS_OBUF;
  wire [6:0]Q;
  wire [2:0]S;
  wire [1:0]addr;
  wire \addr[0]_i_1_n_0 ;
  wire \addr[1]_i_1_n_0 ;
  wire \addr[1]_i_2_n_0 ;
  wire \addr[1]_i_4_n_0 ;
  wire \addr[1]_i_5_n_0 ;
  wire \addr[1]_i_6_n_0 ;
  wire \addr[1]_i_7_n_0 ;
  wire \addr[1]_i_8_n_0 ;
  wire \addr[1]_i_9_n_0 ;
  wire \addr_reg[0]_0 ;
  wire [23:0]counter_reg;
  wire [3:0]\counter_reg[11] ;
  wire [3:0]\counter_reg[15] ;
  wire [3:0]\counter_reg[19] ;
  wire [3:0]\counter_reg[23] ;
  wire [3:0]\counter_reg[23]_0 ;
  wire [3:0]\counter_reg[3] ;
  wire [3:0]\counter_reg[7] ;
  wire [26:0]cycles;
  wire cycles0_carry__0_n_0;
  wire cycles0_carry__0_n_4;
  wire cycles0_carry__0_n_5;
  wire cycles0_carry__0_n_6;
  wire cycles0_carry__0_n_7;
  wire cycles0_carry__1_n_0;
  wire cycles0_carry__1_n_4;
  wire cycles0_carry__1_n_5;
  wire cycles0_carry__1_n_6;
  wire cycles0_carry__1_n_7;
  wire cycles0_carry__2_n_0;
  wire cycles0_carry__2_n_4;
  wire cycles0_carry__2_n_5;
  wire cycles0_carry__2_n_6;
  wire cycles0_carry__2_n_7;
  wire cycles0_carry__3_n_0;
  wire cycles0_carry__3_n_4;
  wire cycles0_carry__3_n_5;
  wire cycles0_carry__3_n_6;
  wire cycles0_carry__3_n_7;
  wire cycles0_carry__4_n_0;
  wire cycles0_carry__4_n_4;
  wire cycles0_carry__4_n_5;
  wire cycles0_carry__4_n_6;
  wire cycles0_carry__4_n_7;
  wire cycles0_carry__5_n_6;
  wire cycles0_carry__5_n_7;
  wire cycles0_carry_n_0;
  wire cycles0_carry_n_4;
  wire cycles0_carry_n_5;
  wire cycles0_carry_n_6;
  wire cycles0_carry_n_7;
  wire \cycles[26]_i_2_n_0 ;
  wire \cycles[26]_i_3_n_0 ;
  wire \cycles[26]_i_4_n_0 ;
  wire \cycles[26]_i_5_n_0 ;
  wire \cycles[26]_i_6_n_0 ;
  wire \cycles[26]_i_7_n_0 ;
  wire \cycles[26]_i_8_n_0 ;
  wire [26:0]cycles_0;
  wire d_in0_carry__0_n_0;
  wire d_in0_carry__1_n_0;
  wire d_in0_carry__2_n_0;
  wire d_in0_carry__3_n_0;
  wire d_in0_carry_n_0;
  wire [21:2]d_out;
  wire [0:0]fsm_buttons;
  wire [23:2]in12;
  wire next_addr;
  wire notes_n_68;
  wire notes_n_69;
  wire notes_n_70;
  wire notes_n_71;
  wire notes_n_72;
  wire notes_n_73;
  wire notes_n_74;
  wire notes_n_75;
  wire notes_n_76;
  wire notes_n_77;
  wire notes_n_78;
  wire notes_n_79;
  wire notes_n_80;
  wire notes_n_81;
  wire notes_n_82;
  wire [0:0]\ram_reg[3][13] ;
  wire [1:0]\ram_reg[3][13]_0 ;
  wire [2:0]\ram_reg[3][2] ;
  wire [0:0]\ram_reg[3][9] ;
  wire [0:0]\ram_reg[3][9]_0 ;
  wire [0:0]sq_wave_leds;
  wire [3:0]NLW_cycles0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_cycles0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_cycles0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_cycles0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_cycles0_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_cycles0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_d_in0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_d_in0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_d_in0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_d_in0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_d_in0_carry__3_CO_UNCONNECTED;

  (* FSM_ENCODED_STATES = "REVERSE_PLAY:01,PAUSED:10,REGULAR_PLAY:00,EDIT:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_sequential_CurrentState_reg[0]_0 ),
        .Q(LEDS_OBUF[3]),
        .R(\ram_reg[3][2] [2]));
  (* FSM_ENCODED_STATES = "REVERSE_PLAY:01,PAUSED:10,REGULAR_PLAY:00,EDIT:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_sequential_CurrentState_reg[1]_5 ),
        .Q(LEDS_OBUF[4]),
        .R(\ram_reg[3][2] [2]));
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'h74)) 
    \LEDS_OBUF[0]_inst_i_1 
       (.I0(LEDS_OBUF[3]),
        .I1(\LEDS[2] ),
        .I2(sq_wave_leds),
        .O(LEDS_OBUF[0]));
  LUT3 #(
    .INIT(8'h28)) 
    \LEDS_OBUF[1]_inst_i_1 
       (.I0(\LEDS[2] ),
        .I1(LEDS_OBUF[4]),
        .I2(LEDS_OBUF[3]),
        .O(LEDS_OBUF[1]));
  LUT3 #(
    .INIT(8'h80)) 
    \LEDS_OBUF[2]_inst_i_1 
       (.I0(LEDS_OBUF[3]),
        .I1(LEDS_OBUF[4]),
        .I2(\LEDS[2] ),
        .O(LEDS_OBUF[2]));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h51510555AAAAAAAA)) 
    \addr[0]_i_1 
       (.I0(\addr[1]_i_2_n_0 ),
        .I1(\addr_reg[0]_0 ),
        .I2(LEDS_OBUF[3]),
        .I3(fsm_buttons),
        .I4(LEDS_OBUF[4]),
        .I5(addr[0]),
        .O(\addr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC00DFFFF0DC00000)) 
    \addr[1]_i_1 
       (.I0(LEDS_OBUF[4]),
        .I1(\addr[1]_i_2_n_0 ),
        .I2(LEDS_OBUF[3]),
        .I3(addr[0]),
        .I4(next_addr),
        .I5(addr[1]),
        .O(\addr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \addr[1]_i_2 
       (.I0(\addr[1]_i_4_n_0 ),
        .I1(\addr[1]_i_5_n_0 ),
        .I2(cycles[0]),
        .I3(cycles[1]),
        .I4(cycles[3]),
        .I5(\addr[1]_i_6_n_0 ),
        .O(\addr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAAAAFAAAAAAA)) 
    \addr[1]_i_3 
       (.I0(\addr[1]_i_2_n_0 ),
        .I1(\ram_reg[3][2] [0]),
        .I2(LEDS_OBUF[3]),
        .I3(\ram_reg[3][2] [1]),
        .I4(\LEDS[2] ),
        .I5(LEDS_OBUF[4]),
        .O(next_addr));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \addr[1]_i_4 
       (.I0(cycles[16]),
        .I1(cycles[17]),
        .I2(cycles[18]),
        .I3(cycles[19]),
        .I4(LEDS_OBUF[4]),
        .I5(cycles[26]),
        .O(\addr[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \addr[1]_i_5 
       (.I0(cycles[4]),
        .I1(cycles[6]),
        .I2(cycles[8]),
        .I3(cycles[7]),
        .I4(\addr[1]_i_7_n_0 ),
        .O(\addr[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \addr[1]_i_6 
       (.I0(cycles[2]),
        .I1(cycles[13]),
        .I2(cycles[14]),
        .I3(\addr[1]_i_8_n_0 ),
        .I4(\addr[1]_i_9_n_0 ),
        .O(\addr[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \addr[1]_i_7 
       (.I0(cycles[15]),
        .I1(cycles[11]),
        .I2(cycles[10]),
        .I3(cycles[9]),
        .O(\addr[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \addr[1]_i_8 
       (.I0(cycles[22]),
        .I1(cycles[21]),
        .I2(cycles[25]),
        .I3(cycles[23]),
        .O(\addr[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \addr[1]_i_9 
       (.I0(cycles[12]),
        .I1(cycles[24]),
        .I2(cycles[5]),
        .I3(cycles[20]),
        .O(\addr[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\addr[0]_i_1_n_0 ),
        .Q(addr[0]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\addr[1]_i_1_n_0 ),
        .Q(addr[1]),
        .R(\ram_reg[3][2] [2]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 cycles0_carry
       (.CI(\<const0> ),
        .CO({cycles0_carry_n_0,NLW_cycles0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(cycles[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({cycles0_carry_n_4,cycles0_carry_n_5,cycles0_carry_n_6,cycles0_carry_n_7}),
        .S(cycles[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 cycles0_carry__0
       (.CI(cycles0_carry_n_0),
        .CO({cycles0_carry__0_n_0,NLW_cycles0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({cycles0_carry__0_n_4,cycles0_carry__0_n_5,cycles0_carry__0_n_6,cycles0_carry__0_n_7}),
        .S(cycles[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 cycles0_carry__1
       (.CI(cycles0_carry__0_n_0),
        .CO({cycles0_carry__1_n_0,NLW_cycles0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({cycles0_carry__1_n_4,cycles0_carry__1_n_5,cycles0_carry__1_n_6,cycles0_carry__1_n_7}),
        .S(cycles[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 cycles0_carry__2
       (.CI(cycles0_carry__1_n_0),
        .CO({cycles0_carry__2_n_0,NLW_cycles0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({cycles0_carry__2_n_4,cycles0_carry__2_n_5,cycles0_carry__2_n_6,cycles0_carry__2_n_7}),
        .S(cycles[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 cycles0_carry__3
       (.CI(cycles0_carry__2_n_0),
        .CO({cycles0_carry__3_n_0,NLW_cycles0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({cycles0_carry__3_n_4,cycles0_carry__3_n_5,cycles0_carry__3_n_6,cycles0_carry__3_n_7}),
        .S(cycles[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 cycles0_carry__4
       (.CI(cycles0_carry__3_n_0),
        .CO({cycles0_carry__4_n_0,NLW_cycles0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({cycles0_carry__4_n_4,cycles0_carry__4_n_5,cycles0_carry__4_n_6,cycles0_carry__4_n_7}),
        .S(cycles[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 cycles0_carry__5
       (.CI(cycles0_carry__4_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({cycles0_carry__5_n_6,cycles0_carry__5_n_7}),
        .S({\<const0> ,\<const0> ,cycles[26:25]}));
  LUT1 #(
    .INIT(2'h1)) 
    \cycles[0]_i_1 
       (.I0(cycles[0]),
        .O(cycles_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[10]_i_1 
       (.I0(cycles0_carry__1_n_6),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[11]_i_1 
       (.I0(cycles0_carry__1_n_5),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[12]_i_1 
       (.I0(cycles0_carry__1_n_4),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[13]_i_1 
       (.I0(cycles0_carry__2_n_7),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[14]_i_1 
       (.I0(cycles0_carry__2_n_6),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[15]_i_1 
       (.I0(cycles0_carry__2_n_5),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[16]_i_1 
       (.I0(cycles0_carry__2_n_4),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[17]_i_1 
       (.I0(cycles0_carry__3_n_7),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[18]_i_1 
       (.I0(cycles0_carry__3_n_6),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[19]_i_1 
       (.I0(cycles0_carry__3_n_5),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[1]_i_1 
       (.I0(cycles0_carry_n_7),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[20]_i_1 
       (.I0(cycles0_carry__3_n_4),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[21]_i_1 
       (.I0(cycles0_carry__4_n_7),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[22]_i_1 
       (.I0(cycles0_carry__4_n_6),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[23]_i_1 
       (.I0(cycles0_carry__4_n_5),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[24]_i_1 
       (.I0(cycles0_carry__4_n_4),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[25]_i_1 
       (.I0(cycles0_carry__5_n_7),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[26]_i_1 
       (.I0(cycles0_carry__5_n_6),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[26]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cycles[26]_i_2 
       (.I0(cycles[8]),
        .I1(cycles[1]),
        .I2(cycles[0]),
        .I3(\cycles[26]_i_3_n_0 ),
        .I4(\cycles[26]_i_4_n_0 ),
        .I5(\cycles[26]_i_5_n_0 ),
        .O(\cycles[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cycles[26]_i_3 
       (.I0(cycles[22]),
        .I1(cycles[24]),
        .I2(cycles[25]),
        .I3(cycles[26]),
        .I4(\cycles[26]_i_6_n_0 ),
        .O(\cycles[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \cycles[26]_i_4 
       (.I0(cycles[16]),
        .I1(cycles[15]),
        .I2(cycles[18]),
        .I3(cycles[23]),
        .I4(\cycles[26]_i_7_n_0 ),
        .O(\cycles[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cycles[26]_i_5 
       (.I0(cycles[4]),
        .I1(cycles[5]),
        .I2(cycles[2]),
        .I3(cycles[3]),
        .I4(\cycles[26]_i_8_n_0 ),
        .O(\cycles[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \cycles[26]_i_6 
       (.I0(cycles[21]),
        .I1(cycles[20]),
        .I2(cycles[19]),
        .I3(cycles[17]),
        .O(\cycles[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \cycles[26]_i_7 
       (.I0(cycles[13]),
        .I1(cycles[14]),
        .I2(cycles[12]),
        .I3(cycles[11]),
        .O(\cycles[26]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cycles[26]_i_8 
       (.I0(cycles[10]),
        .I1(cycles[9]),
        .I2(cycles[7]),
        .I3(cycles[6]),
        .O(\cycles[26]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[2]_i_1 
       (.I0(cycles0_carry_n_6),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[3]_i_1 
       (.I0(cycles0_carry_n_5),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[4]_i_1 
       (.I0(cycles0_carry_n_4),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[5]_i_1 
       (.I0(cycles0_carry__0_n_7),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[6]_i_1 
       (.I0(cycles0_carry__0_n_6),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[7]_i_1 
       (.I0(cycles0_carry__0_n_5),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[8]_i_1 
       (.I0(cycles0_carry__0_n_4),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[9]_i_1 
       (.I0(cycles0_carry__1_n_7),
        .I1(\cycles[26]_i_2_n_0 ),
        .O(cycles_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[0]),
        .Q(cycles[0]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[10] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[10]),
        .Q(cycles[10]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[11] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[11]),
        .Q(cycles[11]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[12] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[12]),
        .Q(cycles[12]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[13] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[13]),
        .Q(cycles[13]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[14] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[14]),
        .Q(cycles[14]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[15] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[15]),
        .Q(cycles[15]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[16] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[16]),
        .Q(cycles[16]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[17] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[17]),
        .Q(cycles[17]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[18] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[18]),
        .Q(cycles[18]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[19] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[19]),
        .Q(cycles[19]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[1]),
        .Q(cycles[1]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[20] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[20]),
        .Q(cycles[20]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[21] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[21]),
        .Q(cycles[21]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[22] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[22]),
        .Q(cycles[22]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[23] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[23]),
        .Q(cycles[23]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[24] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[24]),
        .Q(cycles[24]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[25] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[25]),
        .Q(cycles[25]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[26] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[26]),
        .Q(cycles[26]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[2]),
        .Q(cycles[2]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[3]),
        .Q(cycles[3]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[4]),
        .Q(cycles[4]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[5]),
        .Q(cycles[5]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[6]),
        .Q(cycles[6]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[7]),
        .Q(cycles[7]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[8]),
        .Q(cycles[8]),
        .R(\ram_reg[3][2] [2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles_0[9]),
        .Q(cycles[9]),
        .R(\ram_reg[3][2] [2]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 d_in0_carry
       (.CI(\<const0> ),
        .CO({d_in0_carry_n_0,NLW_d_in0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({DI,Q[1:0],\<const0> }),
        .O(in12[5:2]),
        .S({S,d_out[2]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 d_in0_carry__0
       (.CI(d_in0_carry_n_0),
        .CO({d_in0_carry__0_n_0,NLW_d_in0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({d_out[8:7],Q[3],\ram_reg[3][9] }),
        .O(in12[9:6]),
        .S({notes_n_68,notes_n_69,notes_n_70,\ram_reg[3][9]_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 d_in0_carry__1
       (.CI(d_in0_carry__0_n_0),
        .CO({d_in0_carry__1_n_0,NLW_d_in0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({d_out[12],Q[6],\ram_reg[3][13] ,Q[4]}),
        .O(in12[13:10]),
        .S({notes_n_71,notes_n_72,\ram_reg[3][13]_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 d_in0_carry__2
       (.CI(d_in0_carry__1_n_0),
        .CO({d_in0_carry__2_n_0,NLW_d_in0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(d_out[16:13]),
        .O(in12[17:14]),
        .S({notes_n_73,notes_n_74,notes_n_75,notes_n_76}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 d_in0_carry__3
       (.CI(d_in0_carry__2_n_0),
        .CO({d_in0_carry__3_n_0,NLW_d_in0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(d_out[20:17]),
        .O(in12[21:18]),
        .S({notes_n_77,notes_n_78,notes_n_79,notes_n_80}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 d_in0_carry__4
       (.CI(d_in0_carry__3_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,d_out[21]}),
        .O(in12[23:22]),
        .S({\<const0> ,\<const0> ,notes_n_81,notes_n_82}));
  fcw_ram notes
       (.CLK(CLK),
        .\FSM_sequential_CurrentState_reg[1] (\FSM_sequential_CurrentState_reg[1]_0 ),
        .\FSM_sequential_CurrentState_reg[1]_0 (\FSM_sequential_CurrentState_reg[1]_1 ),
        .\FSM_sequential_CurrentState_reg[1]_1 (\FSM_sequential_CurrentState_reg[1]_2 ),
        .\FSM_sequential_CurrentState_reg[1]_2 (\FSM_sequential_CurrentState_reg[1]_3 ),
        .\FSM_sequential_CurrentState_reg[1]_3 (\FSM_sequential_CurrentState_reg[1]_4 ),
        .Q({d_out[21:12],Q[6:4],d_out[8:7],Q[3:0],d_out[2]}),
        .S({notes_n_68,notes_n_69,notes_n_70}),
        .addr(addr),
        .counter_reg(counter_reg),
        .\counter_reg[11] (\counter_reg[11] ),
        .\counter_reg[15] (\counter_reg[15] ),
        .\counter_reg[19] (\counter_reg[19] ),
        .\counter_reg[23] (\counter_reg[23] ),
        .\counter_reg[23]_0 (\counter_reg[23]_0 ),
        .\counter_reg[3] (\counter_reg[3] ),
        .\counter_reg[7] (\counter_reg[7] ),
        .\d_out_reg[0]_0 (LEDS_OBUF[4]),
        .\d_out_reg[0]_1 (LEDS_OBUF[3]),
        .\d_out_reg[12]_0 ({notes_n_71,notes_n_72}),
        .\d_out_reg[16]_0 ({notes_n_73,notes_n_74,notes_n_75,notes_n_76}),
        .\d_out_reg[20]_0 ({notes_n_77,notes_n_78,notes_n_79,notes_n_80}),
        .\d_out_reg[22]_0 ({notes_n_81,notes_n_82}),
        .in12(in12),
        .\ram_reg[3][2]_0 (\ram_reg[3][2] [2]));
endmodule

module nco
   (counter_reg,
    ADDRARDADDR,
    \counter_reg[23]_0 ,
    next_sample,
    CLK,
    counter0_carry__0_0,
    counter0_carry__1_0,
    counter0_carry__2_0,
    counter0_carry__3_0,
    sel,
    sel_0,
    \counter_reg[3]_0 ,
    \counter_reg[7]_0 ,
    \counter_reg[11]_0 ,
    \counter_reg[15]_0 ,
    \counter_reg[19]_0 ,
    \counter_reg[23]_1 );
  output [23:0]counter_reg;
  output [7:0]ADDRARDADDR;
  input [0:0]\counter_reg[23]_0 ;
  input next_sample;
  input CLK;
  input [3:0]counter0_carry__0_0;
  input [3:0]counter0_carry__1_0;
  input [3:0]counter0_carry__2_0;
  input [3:0]counter0_carry__3_0;
  input [3:0]sel;
  input [3:0]sel_0;
  input [3:0]\counter_reg[3]_0 ;
  input [3:0]\counter_reg[7]_0 ;
  input [3:0]\counter_reg[11]_0 ;
  input [3:0]\counter_reg[15]_0 ;
  input [3:0]\counter_reg[19]_0 ;
  input [3:0]\counter_reg[23]_1 ;

  wire \<const0> ;
  wire [7:0]ADDRARDADDR;
  wire CLK;
  wire [3:0]counter0_carry__0_0;
  wire counter0_carry__0_n_0;
  wire [3:0]counter0_carry__1_0;
  wire counter0_carry__1_n_0;
  wire [3:0]counter0_carry__2_0;
  wire counter0_carry__2_n_0;
  wire [3:0]counter0_carry__3_0;
  wire counter0_carry__3_n_0;
  wire counter0_carry_n_0;
  wire [23:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire [3:0]\counter_reg[11]_0 ;
  wire \counter_reg[12]_i_1__0_n_0 ;
  wire \counter_reg[12]_i_1__0_n_4 ;
  wire \counter_reg[12]_i_1__0_n_5 ;
  wire \counter_reg[12]_i_1__0_n_6 ;
  wire \counter_reg[12]_i_1__0_n_7 ;
  wire [3:0]\counter_reg[15]_0 ;
  wire \counter_reg[16]_i_1__0_n_0 ;
  wire \counter_reg[16]_i_1__0_n_4 ;
  wire \counter_reg[16]_i_1__0_n_5 ;
  wire \counter_reg[16]_i_1__0_n_6 ;
  wire \counter_reg[16]_i_1__0_n_7 ;
  wire [3:0]\counter_reg[19]_0 ;
  wire \counter_reg[20]_i_1__0_n_4 ;
  wire \counter_reg[20]_i_1__0_n_5 ;
  wire \counter_reg[20]_i_1__0_n_6 ;
  wire \counter_reg[20]_i_1__0_n_7 ;
  wire [0:0]\counter_reg[23]_0 ;
  wire [3:0]\counter_reg[23]_1 ;
  wire [3:0]\counter_reg[3]_0 ;
  wire \counter_reg[4]_i_1__0_n_0 ;
  wire \counter_reg[4]_i_1__0_n_4 ;
  wire \counter_reg[4]_i_1__0_n_5 ;
  wire \counter_reg[4]_i_1__0_n_6 ;
  wire \counter_reg[4]_i_1__0_n_7 ;
  wire [3:0]\counter_reg[7]_0 ;
  wire \counter_reg[8]_i_1__0_n_0 ;
  wire \counter_reg[8]_i_1__0_n_4 ;
  wire \counter_reg[8]_i_1__0_n_5 ;
  wire \counter_reg[8]_i_1__0_n_6 ;
  wire \counter_reg[8]_i_1__0_n_7 ;
  wire next_sample;
  wire [3:0]sel;
  wire [3:0]sel_0;
  wire [7:0]sel__0;
  wire [3:0]NLW_counter0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [3:0]\NLW_counter_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[8]_i_1__0_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry
       (.CI(\<const0> ),
        .CO({counter0_carry_n_0,NLW_counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(counter_reg[3:0]),
        .S(counter0_carry__0_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,NLW_counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(counter_reg[7:4]),
        .S(counter0_carry__1_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,NLW_counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(counter_reg[11:8]),
        .S(counter0_carry__2_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,NLW_counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(counter_reg[15:12]),
        .S(counter0_carry__3_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,NLW_counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(counter_reg[19:16]),
        .O(sel__0[3:0]),
        .S(sel));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,counter_reg[22:20]}),
        .O(sel__0[7:4]),
        .S(sel_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]),
        .R(\counter_reg[23]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\counter_reg[0]_i_1_n_0 ,\NLW_counter_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(counter_reg[3:0]),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S(\counter_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[8]_i_1__0_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[8]_i_1__0_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[12]_i_1__0_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter_reg[23]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[12]_i_1__0 
       (.CI(\counter_reg[8]_i_1__0_n_0 ),
        .CO({\counter_reg[12]_i_1__0_n_0 ,\NLW_counter_reg[12]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(counter_reg[15:12]),
        .O({\counter_reg[12]_i_1__0_n_4 ,\counter_reg[12]_i_1__0_n_5 ,\counter_reg[12]_i_1__0_n_6 ,\counter_reg[12]_i_1__0_n_7 }),
        .S(\counter_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[12]_i_1__0_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[12]_i_1__0_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[12]_i_1__0_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[16]_i_1__0_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter_reg[23]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[16]_i_1__0 
       (.CI(\counter_reg[12]_i_1__0_n_0 ),
        .CO({\counter_reg[16]_i_1__0_n_0 ,\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(counter_reg[19:16]),
        .O({\counter_reg[16]_i_1__0_n_4 ,\counter_reg[16]_i_1__0_n_5 ,\counter_reg[16]_i_1__0_n_6 ,\counter_reg[16]_i_1__0_n_7 }),
        .S(\counter_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[16]_i_1__0_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[16]_i_1__0_n_5 ),
        .Q(counter_reg[18]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[16]_i_1__0_n_4 ),
        .Q(counter_reg[19]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[20]_i_1__0_n_7 ),
        .Q(counter_reg[20]),
        .R(\counter_reg[23]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[20]_i_1__0 
       (.CI(\counter_reg[16]_i_1__0_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,counter_reg[22:20]}),
        .O({\counter_reg[20]_i_1__0_n_4 ,\counter_reg[20]_i_1__0_n_5 ,\counter_reg[20]_i_1__0_n_6 ,\counter_reg[20]_i_1__0_n_7 }),
        .S(\counter_reg[23]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[20]_i_1__0_n_6 ),
        .Q(counter_reg[21]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[20]_i_1__0_n_5 ),
        .Q(counter_reg[22]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[20]_i_1__0_n_4 ),
        .Q(counter_reg[23]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[4]_i_1__0_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter_reg[23]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[4]_i_1__0 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1__0_n_0 ,\NLW_counter_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(counter_reg[7:4]),
        .O({\counter_reg[4]_i_1__0_n_4 ,\counter_reg[4]_i_1__0_n_5 ,\counter_reg[4]_i_1__0_n_6 ,\counter_reg[4]_i_1__0_n_7 }),
        .S(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[4]_i_1__0_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[4]_i_1__0_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[4]_i_1__0_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[8]_i_1__0_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter_reg[23]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[8]_i_1__0 
       (.CI(\counter_reg[4]_i_1__0_n_0 ),
        .CO({\counter_reg[8]_i_1__0_n_0 ,\NLW_counter_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(counter_reg[11:8]),
        .O({\counter_reg[8]_i_1__0_n_4 ,\counter_reg[8]_i_1__0_n_5 ,\counter_reg[8]_i_1__0_n_6 ,\counter_reg[8]_i_1__0_n_7 }),
        .S(\counter_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[8]_i_1__0_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter_reg[23]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_2
       (.I0(sel__0[7]),
        .I1(\counter_reg[23]_0 ),
        .O(ADDRARDADDR[7]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_3
       (.I0(sel__0[6]),
        .I1(\counter_reg[23]_0 ),
        .O(ADDRARDADDR[6]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_4
       (.I0(sel__0[5]),
        .I1(\counter_reg[23]_0 ),
        .O(ADDRARDADDR[5]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_5
       (.I0(sel__0[4]),
        .I1(\counter_reg[23]_0 ),
        .O(ADDRARDADDR[4]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_6
       (.I0(sel__0[3]),
        .I1(\counter_reg[23]_0 ),
        .O(ADDRARDADDR[3]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_7
       (.I0(sel__0[2]),
        .I1(\counter_reg[23]_0 ),
        .O(ADDRARDADDR[2]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_8
       (.I0(sel__0[1]),
        .I1(\counter_reg[23]_0 ),
        .O(ADDRARDADDR[1]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_9
       (.I0(sel__0[0]),
        .I1(\counter_reg[23]_0 ),
        .O(ADDRARDADDR[0]));
endmodule

module sq_wave_gen
   (mode,
    sq_wave_leds,
    sel,
    code_value,
    next_sample,
    CLK,
    \mode_reg[0]_0 ,
    \led_zero_reg[0]_0 ,
    \code_value_reg[4]_0 ,
    DOADO,
    Q,
    \dac_samples_reg[2]_0 ,
    \dac_samples_reg[2]_1 ,
    \dac_samples_reg[4]_0 ,
    \dac_samples_reg[0]_0 ,
    E);
  output mode;
  output [0:0]sq_wave_leds;
  output sel;
  output [1:0]code_value;
  input next_sample;
  input CLK;
  input \mode_reg[0]_0 ;
  input \led_zero_reg[0]_0 ;
  input [2:0]\code_value_reg[4]_0 ;
  input [2:0]DOADO;
  input [0:0]Q;
  input \dac_samples_reg[2]_0 ;
  input \dac_samples_reg[2]_1 ;
  input \dac_samples_reg[4]_0 ;
  input \dac_samples_reg[0]_0 ;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [2:0]DOADO;
  wire [0:0]E;
  wire [0:0]Q;
  wire [1:0]code_value;
  wire \code_value[2]_i_1_n_0 ;
  wire \code_value[4]_i_1_n_0 ;
  wire \code_value[4]_i_2_n_0 ;
  wire \code_value[4]_i_3_n_0 ;
  wire \code_value[4]_i_4_n_0 ;
  wire \code_value[4]_i_5_n_0 ;
  wire [2:0]\code_value_reg[4]_0 ;
  wire counter0_carry__0_i_1_n_0;
  wire counter0_carry__0_i_2_n_0;
  wire counter0_carry__0_i_3_n_0;
  wire counter0_carry__0_i_4_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__1_i_1_n_0;
  wire counter0_carry__1_i_2_n_0;
  wire counter0_carry__1_i_3_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry_i_1_n_0;
  wire counter0_carry_i_2_n_0;
  wire counter0_carry_i_3_n_0;
  wire counter0_carry_i_4_n_0;
  wire counter0_carry_n_0;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire [31:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[28]_i_1_n_4 ;
  wire \counter_reg[28]_i_1_n_5 ;
  wire \counter_reg[28]_i_1_n_6 ;
  wire \counter_reg[28]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [11:0]dac_samples;
  wire [11:1]dac_samples01_in;
  wire [11:2]dac_samples04_in;
  wire [11:1]dac_samples2;
  wire \dac_samples2_inferred__0/i___0_carry__0_n_0 ;
  wire \dac_samples2_inferred__0/i___0_carry_n_0 ;
  wire \dac_samples2_inferred__0/i__carry__0_n_0 ;
  wire \dac_samples2_inferred__0/i__carry__1_n_0 ;
  wire \dac_samples2_inferred__0/i__carry_n_0 ;
  wire \dac_samples[0]_i_2_n_0 ;
  wire \dac_samples[10]_i_3_n_0 ;
  wire \dac_samples[10]_i_4_n_0 ;
  wire \dac_samples[10]_i_5_n_0 ;
  wire \dac_samples[11]_i_10_n_0 ;
  wire \dac_samples[11]_i_11_n_0 ;
  wire \dac_samples[11]_i_3_n_0 ;
  wire \dac_samples[11]_i_4_n_0 ;
  wire \dac_samples[11]_i_6_n_0 ;
  wire \dac_samples[11]_i_8_n_0 ;
  wire \dac_samples[11]_i_9_n_0 ;
  wire \dac_samples[1]_i_3_n_0 ;
  wire \dac_samples[1]_i_4_n_0 ;
  wire \dac_samples[1]_i_5_n_0 ;
  wire \dac_samples[1]_i_6_n_0 ;
  wire \dac_samples[1]_i_7_n_0 ;
  wire \dac_samples[2]_i_2_n_0 ;
  wire \dac_samples[2]_i_3_n_0 ;
  wire \dac_samples[2]_i_5_n_0 ;
  wire \dac_samples[2]_i_6_n_0 ;
  wire \dac_samples[2]_i_7_n_0 ;
  wire \dac_samples[2]_i_8_n_0 ;
  wire \dac_samples[3]_i_2_n_0 ;
  wire \dac_samples[3]_i_3_n_0 ;
  wire \dac_samples[3]_i_4_n_0 ;
  wire \dac_samples[3]_i_5_n_0 ;
  wire \dac_samples[3]_i_6_n_0 ;
  wire \dac_samples[4]_i_3_n_0 ;
  wire \dac_samples[4]_i_4_n_0 ;
  wire \dac_samples[5]_i_2_n_0 ;
  wire \dac_samples[5]_i_3_n_0 ;
  wire \dac_samples[6]_i_2_n_0 ;
  wire \dac_samples[6]_i_3_n_0 ;
  wire \dac_samples[7]_i_3_n_0 ;
  wire \dac_samples[7]_i_4_n_0 ;
  wire \dac_samples[7]_i_5_n_0 ;
  wire \dac_samples[7]_i_6_n_0 ;
  wire \dac_samples[7]_i_7_n_0 ;
  wire \dac_samples[8]_i_2_n_0 ;
  wire \dac_samples[8]_i_3_n_0 ;
  wire \dac_samples[9]_i_2_n_0 ;
  wire \dac_samples[9]_i_3_n_0 ;
  wire \dac_samples_reg[0]_0 ;
  wire \dac_samples_reg[11]_i_12_n_0 ;
  wire \dac_samples_reg[11]_i_12_n_4 ;
  wire \dac_samples_reg[11]_i_12_n_5 ;
  wire \dac_samples_reg[11]_i_12_n_6 ;
  wire \dac_samples_reg[11]_i_12_n_7 ;
  wire \dac_samples_reg[11]_i_7_n_0 ;
  wire \dac_samples_reg[11]_i_7_n_5 ;
  wire \dac_samples_reg[11]_i_7_n_6 ;
  wire \dac_samples_reg[11]_i_7_n_7 ;
  wire \dac_samples_reg[1]_i_2_n_0 ;
  wire \dac_samples_reg[1]_i_2_n_4 ;
  wire \dac_samples_reg[1]_i_2_n_5 ;
  wire \dac_samples_reg[1]_i_2_n_6 ;
  wire \dac_samples_reg[2]_0 ;
  wire \dac_samples_reg[2]_1 ;
  wire \dac_samples_reg[4]_0 ;
  wire \dac_samples_reg[4]_i_2_n_0 ;
  wire \dac_samples_reg[8]_i_4_n_0 ;
  wire i___0_carry__0_i_1_n_0;
  wire i___0_carry__0_i_2_n_0;
  wire i___0_carry__0_i_3_n_0;
  wire i___0_carry__0_i_4_n_0;
  wire i___0_carry__1_i_1_n_0;
  wire i___0_carry__1_i_2_n_0;
  wire i___0_carry__1_i_3_n_0;
  wire i___0_carry_i_1_n_0;
  wire i___0_carry_i_2_n_0;
  wire i___0_carry_i_3_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_3__0_n_0;
  wire \led_zero_reg[0]_0 ;
  wire mode;
  wire \mode_reg[0]_0 ;
  wire next_sample;
  wire [11:0]p_1_in__0;
  wire sel;
  wire [0:0]sq_wave_leds;
  wire [3:0]NLW_counter0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [3:0]\NLW_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_dac_samples2_inferred__0/i___0_carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_dac_samples2_inferred__0/i___0_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_dac_samples2_inferred__0/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_dac_samples2_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_dac_samples2_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_dac_samples2_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_dac_samples_reg[11]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_dac_samples_reg[11]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_dac_samples_reg[1]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_dac_samples_reg[4]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_dac_samples_reg[4]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_dac_samples_reg[8]_i_4_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000003305050033)) 
    AUD_PWM_OBUF_inst_i_3
       (.I0(DOADO[0]),
        .I1(code_value[1]),
        .I2(DOADO[1]),
        .I3(code_value[0]),
        .I4(Q),
        .I5(DOADO[2]),
        .O(sel));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hAFFC)) 
    \code_value[2]_i_1 
       (.I0(code_value[1]),
        .I1(\code_value_reg[4]_0 [2]),
        .I2(\code_value[4]_i_2_n_0 ),
        .I3(code_value[0]),
        .O(\code_value[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h03A0)) 
    \code_value[4]_i_1 
       (.I0(code_value[0]),
        .I1(\code_value_reg[4]_0 [2]),
        .I2(\code_value[4]_i_2_n_0 ),
        .I3(code_value[1]),
        .O(\code_value[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F7FFFF)) 
    \code_value[4]_i_2 
       (.I0(\code_value[4]_i_3_n_0 ),
        .I1(dac_samples[9]),
        .I2(\code_value[4]_i_4_n_0 ),
        .I3(dac_samples[10]),
        .I4(dac_samples[11]),
        .I5(\code_value[4]_i_5_n_0 ),
        .O(\code_value[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    \code_value[4]_i_3 
       (.I0(dac_samples[1]),
        .I1(dac_samples[0]),
        .I2(dac_samples[2]),
        .I3(dac_samples[3]),
        .I4(dac_samples[4]),
        .O(\code_value[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \code_value[4]_i_4 
       (.I0(dac_samples[6]),
        .I1(dac_samples[7]),
        .I2(dac_samples[8]),
        .I3(dac_samples[5]),
        .O(\code_value[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h77777777777F7F7F)) 
    \code_value[4]_i_5 
       (.I0(counter0_carry__1_n_1),
        .I1(next_sample),
        .I2(\dac_samples[2]_i_7_n_0 ),
        .I3(dac_samples[1]),
        .I4(dac_samples[2]),
        .I5(dac_samples[3]),
        .O(\code_value[4]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \code_value_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\code_value[2]_i_1_n_0 ),
        .Q(code_value[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \code_value_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\code_value[4]_i_1_n_0 ),
        .Q(code_value[1]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry
       (.CI(\<const0> ),
        .CO({counter0_carry_n_0,NLW_counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({counter0_carry_i_1_n_0,counter0_carry_i_2_n_0,counter0_carry_i_3_n_0,counter0_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,NLW_counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({counter0_carry__0_i_1_n_0,counter0_carry__0_i_2_n_0,counter0_carry__0_i_3_n_0,counter0_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    counter0_carry__0_i_1
       (.I0(counter_reg[23]),
        .I1(counter_reg[22]),
        .I2(counter_reg[21]),
        .O(counter0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter0_carry__0_i_2
       (.I0(counter_reg[20]),
        .I1(counter_reg[19]),
        .I2(counter_reg[18]),
        .O(counter0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter0_carry__0_i_3
       (.I0(counter_reg[17]),
        .I1(counter_reg[16]),
        .I2(counter_reg[15]),
        .O(counter0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter0_carry__0_i_4
       (.I0(counter_reg[14]),
        .I1(counter_reg[13]),
        .I2(counter_reg[12]),
        .O(counter0_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_1,NLW_counter0_carry__1_CO_UNCONNECTED[1:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,counter0_carry__1_i_1_n_0,counter0_carry__1_i_2_n_0,counter0_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry__1_i_1
       (.I0(counter_reg[31]),
        .I1(counter_reg[30]),
        .O(counter0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter0_carry__1_i_2
       (.I0(counter_reg[29]),
        .I1(counter_reg[28]),
        .I2(counter_reg[27]),
        .O(counter0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter0_carry__1_i_3
       (.I0(counter_reg[26]),
        .I1(counter_reg[25]),
        .I2(counter_reg[24]),
        .O(counter0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter0_carry_i_1
       (.I0(dac_samples[11]),
        .I1(counter_reg[11]),
        .I2(dac_samples[10]),
        .I3(counter_reg[10]),
        .I4(dac_samples[9]),
        .I5(counter_reg[9]),
        .O(counter0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter0_carry_i_2
       (.I0(dac_samples[8]),
        .I1(counter_reg[8]),
        .I2(dac_samples[7]),
        .I3(counter_reg[7]),
        .I4(dac_samples[6]),
        .I5(counter_reg[6]),
        .O(counter0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter0_carry_i_3
       (.I0(dac_samples[5]),
        .I1(counter_reg[5]),
        .I2(dac_samples[4]),
        .I3(counter_reg[4]),
        .I4(dac_samples[3]),
        .I5(counter_reg[3]),
        .O(counter0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter0_carry_i_4
       (.I0(dac_samples[2]),
        .I1(counter_reg[2]),
        .I2(dac_samples[1]),
        .I3(counter_reg[1]),
        .I4(dac_samples[0]),
        .I5(counter_reg[0]),
        .O(counter0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter[0]_i_1 
       (.I0(counter0_carry__1_n_1),
        .I1(next_sample),
        .I2(\code_value_reg[4]_0 [2]),
        .O(\counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\counter_reg[0]_i_2_n_0 ,\NLW_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S(counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[24]_i_1_n_4 ),
        .Q(counter_reg[27]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[28]_i_1_n_7 ),
        .Q(counter_reg[28]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[28]_i_1_n_4 ,\counter_reg[28]_i_1_n_5 ,\counter_reg[28]_i_1_n_6 ,\counter_reg[28]_i_1_n_7 }),
        .S(counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[28]_i_1_n_6 ),
        .Q(counter_reg[29]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[28]_i_1_n_5 ),
        .Q(counter_reg[30]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[28]_i_1_n_4 ),
        .Q(counter_reg[31]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(next_sample),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dac_samples2_inferred__0/i___0_carry 
       (.CI(\<const0> ),
        .CO({\dac_samples2_inferred__0/i___0_carry_n_0 ,\NLW_dac_samples2_inferred__0/i___0_carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(dac_samples[0]),
        .DI({dac_samples[4:3],\<const0> ,dac_samples[1]}),
        .O({dac_samples04_in[4:2],\NLW_dac_samples2_inferred__0/i___0_carry_O_UNCONNECTED [0]}),
        .S({i___0_carry_i_1_n_0,i___0_carry_i_2_n_0,dac_samples[2],i___0_carry_i_3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dac_samples2_inferred__0/i___0_carry__0 
       (.CI(\dac_samples2_inferred__0/i___0_carry_n_0 ),
        .CO({\dac_samples2_inferred__0/i___0_carry__0_n_0 ,\NLW_dac_samples2_inferred__0/i___0_carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(dac_samples[8:5]),
        .O(dac_samples04_in[8:5]),
        .S({i___0_carry__0_i_1_n_0,i___0_carry__0_i_2_n_0,i___0_carry__0_i_3_n_0,i___0_carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dac_samples2_inferred__0/i___0_carry__1 
       (.CI(\dac_samples2_inferred__0/i___0_carry__0_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,dac_samples[10:9]}),
        .O(dac_samples04_in[11:9]),
        .S({\<const0> ,i___0_carry__1_i_1_n_0,i___0_carry__1_i_2_n_0,i___0_carry__1_i_3_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dac_samples2_inferred__0/i__carry 
       (.CI(\<const0> ),
        .CO({\dac_samples2_inferred__0/i__carry_n_0 ,\NLW_dac_samples2_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(dac_samples[0]),
        .DI({dac_samples[4:3],\<const0> ,dac_samples[1]}),
        .O(dac_samples2[4:1]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,dac_samples[2],i__carry_i_3__0_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dac_samples2_inferred__0/i__carry__0 
       (.CI(\dac_samples2_inferred__0/i__carry_n_0 ),
        .CO({\dac_samples2_inferred__0/i__carry__0_n_0 ,\NLW_dac_samples2_inferred__0/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(dac_samples[8:5]),
        .O(dac_samples2[8:5]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dac_samples2_inferred__0/i__carry__1 
       (.CI(\dac_samples2_inferred__0/i__carry__0_n_0 ),
        .CO({\dac_samples2_inferred__0/i__carry__1_n_0 ,\NLW_dac_samples2_inferred__0/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,dac_samples[11:9]}),
        .O(dac_samples2[11:9]),
        .S({\<const1> ,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  LUT6 #(
    .INIT(64'hFCFDFCFDFCFDFCFF)) 
    \dac_samples[0]_i_1 
       (.I0(\dac_samples[11]_i_6_n_0 ),
        .I1(\dac_samples[0]_i_2_n_0 ),
        .I2(\dac_samples_reg[0]_0 ),
        .I3(dac_samples[0]),
        .I4(\dac_samples_reg[2]_1 ),
        .I5(\dac_samples[11]_i_3_n_0 ),
        .O(p_1_in__0[0]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \dac_samples[0]_i_2 
       (.I0(dac_samples[1]),
        .I1(mode),
        .I2(Q),
        .I3(\code_value_reg[4]_0 [0]),
        .I4(\dac_samples[1]_i_7_n_0 ),
        .O(\dac_samples[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0404FF04)) 
    \dac_samples[10]_i_1 
       (.I0(\dac_samples_reg[4]_0 ),
        .I1(dac_samples01_in[10]),
        .I2(\dac_samples[11]_i_3_n_0 ),
        .I3(dac_samples04_in[10]),
        .I4(\dac_samples[11]_i_6_n_0 ),
        .I5(\dac_samples[10]_i_3_n_0 ),
        .O(p_1_in__0[10]));
  LUT6 #(
    .INIT(64'hC000C000C444C000)) 
    \dac_samples[10]_i_3 
       (.I0(\dac_samples[10]_i_4_n_0 ),
        .I1(mode),
        .I2(dac_samples[11]),
        .I3(\dac_samples_reg[2]_1 ),
        .I4(dac_samples[9]),
        .I5(\dac_samples_reg[4]_0 ),
        .O(\dac_samples[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEAAAAFEEEAAAA)) 
    \dac_samples[10]_i_4 
       (.I0(dac_samples[11]),
        .I1(dac_samples[9]),
        .I2(\dac_samples[10]_i_5_n_0 ),
        .I3(dac_samples[4]),
        .I4(dac_samples[10]),
        .I5(\code_value[4]_i_4_n_0 ),
        .O(\dac_samples[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \dac_samples[10]_i_5 
       (.I0(dac_samples[1]),
        .I1(dac_samples[2]),
        .I2(dac_samples[3]),
        .O(\dac_samples[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \dac_samples[11]_i_10 
       (.I0(dac_samples2[4]),
        .I1(dac_samples2[9]),
        .I2(\dac_samples2_inferred__0/i__carry__1_n_0 ),
        .I3(dac_samples2[3]),
        .I4(dac_samples2[11]),
        .I5(dac_samples2[10]),
        .O(\dac_samples[11]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEFEEE)) 
    \dac_samples[11]_i_11 
       (.I0(dac_samples2[5]),
        .I1(dac_samples2[6]),
        .I2(dac_samples2[1]),
        .I3(dac_samples2[2]),
        .I4(dac_samples[0]),
        .O(\dac_samples[11]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h32FF3232)) 
    \dac_samples[11]_i_2 
       (.I0(\dac_samples[11]_i_3_n_0 ),
        .I1(\dac_samples[11]_i_4_n_0 ),
        .I2(dac_samples01_in[11]),
        .I3(\dac_samples[11]_i_6_n_0 ),
        .I4(dac_samples04_in[11]),
        .O(p_1_in__0[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA02)) 
    \dac_samples[11]_i_3 
       (.I0(\dac_samples_reg[11]_i_7_n_5 ),
        .I1(\dac_samples[11]_i_8_n_0 ),
        .I2(\dac_samples[11]_i_9_n_0 ),
        .I3(\dac_samples_reg[11]_i_7_n_6 ),
        .I4(\dac_samples_reg[11]_i_7_n_0 ),
        .I5(mode),
        .O(\dac_samples[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF10FF)) 
    \dac_samples[11]_i_4 
       (.I0(dac_samples[11]),
        .I1(dac_samples[10]),
        .I2(mode),
        .I3(\code_value_reg[4]_0 [1]),
        .I4(Q),
        .I5(\code_value_reg[4]_0 [0]),
        .O(\dac_samples[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEFFFFFFFF)) 
    \dac_samples[11]_i_6 
       (.I0(mode),
        .I1(\dac_samples[11]_i_10_n_0 ),
        .I2(dac_samples2[8]),
        .I3(dac_samples2[7]),
        .I4(\dac_samples[11]_i_11_n_0 ),
        .I5(\dac_samples_reg[2]_1 ),
        .O(\dac_samples[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h777F)) 
    \dac_samples[11]_i_8 
       (.I0(\dac_samples_reg[11]_i_12_n_4 ),
        .I1(\dac_samples_reg[11]_i_7_n_7 ),
        .I2(\dac_samples_reg[1]_i_2_n_5 ),
        .I3(\dac_samples_reg[1]_i_2_n_4 ),
        .O(\dac_samples[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h57FFFFFF)) 
    \dac_samples[11]_i_9 
       (.I0(\dac_samples_reg[11]_i_12_n_5 ),
        .I1(\dac_samples_reg[1]_i_2_n_4 ),
        .I2(\dac_samples_reg[1]_i_2_n_6 ),
        .I3(\dac_samples_reg[11]_i_12_n_7 ),
        .I4(\dac_samples_reg[11]_i_12_n_6 ),
        .O(\dac_samples[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F2F2F200)) 
    \dac_samples[1]_i_1 
       (.I0(dac_samples01_in[1]),
        .I1(\dac_samples[11]_i_3_n_0 ),
        .I2(\dac_samples[1]_i_3_n_0 ),
        .I3(\dac_samples[1]_i_4_n_0 ),
        .I4(\dac_samples[11]_i_6_n_0 ),
        .I5(\dac_samples[1]_i_5_n_0 ),
        .O(p_1_in__0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF40FF)) 
    \dac_samples[1]_i_3 
       (.I0(\dac_samples[10]_i_4_n_0 ),
        .I1(mode),
        .I2(dac_samples[0]),
        .I3(\code_value_reg[4]_0 [1]),
        .I4(Q),
        .I5(\code_value_reg[4]_0 [0]),
        .O(\dac_samples[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_samples[1]_i_4 
       (.I0(dac_samples[0]),
        .I1(dac_samples[1]),
        .O(\dac_samples[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \dac_samples[1]_i_5 
       (.I0(dac_samples[2]),
        .I1(mode),
        .I2(\code_value_reg[4]_0 [0]),
        .I3(Q),
        .I4(\dac_samples[1]_i_7_n_0 ),
        .O(\dac_samples[1]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_samples[1]_i_6 
       (.I0(dac_samples[2]),
        .O(\dac_samples[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1555)) 
    \dac_samples[1]_i_7 
       (.I0(\dac_samples[2]_i_7_n_0 ),
        .I1(dac_samples[1]),
        .I2(dac_samples[2]),
        .I3(dac_samples[3]),
        .O(\dac_samples[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA33300000)) 
    \dac_samples[2]_i_1 
       (.I0(\dac_samples[2]_i_2_n_0 ),
        .I1(\dac_samples[2]_i_3_n_0 ),
        .I2(dac_samples01_in[2]),
        .I3(\dac_samples[11]_i_3_n_0 ),
        .I4(\dac_samples_reg[2]_0 ),
        .I5(\dac_samples_reg[2]_1 ),
        .O(p_1_in__0[2]));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAAABAA)) 
    \dac_samples[2]_i_2 
       (.I0(\dac_samples[2]_i_5_n_0 ),
        .I1(\dac_samples[11]_i_11_n_0 ),
        .I2(\dac_samples[2]_i_6_n_0 ),
        .I3(\dac_samples[11]_i_10_n_0 ),
        .I4(mode),
        .I5(dac_samples04_in[2]),
        .O(\dac_samples[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \dac_samples[2]_i_3 
       (.I0(dac_samples[1]),
        .I1(mode),
        .I2(\dac_samples[10]_i_4_n_0 ),
        .O(\dac_samples[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_samples[2]_i_5 
       (.I0(\dac_samples[2]_i_7_n_0 ),
        .I1(dac_samples[3]),
        .I2(mode),
        .O(\dac_samples[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \dac_samples[2]_i_6 
       (.I0(dac_samples2[8]),
        .I1(dac_samples2[7]),
        .O(\dac_samples[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \dac_samples[2]_i_7 
       (.I0(dac_samples[7]),
        .I1(dac_samples[6]),
        .I2(dac_samples[5]),
        .I3(dac_samples[4]),
        .I4(\dac_samples[2]_i_8_n_0 ),
        .O(\dac_samples[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dac_samples[2]_i_8 
       (.I0(dac_samples[9]),
        .I1(dac_samples[8]),
        .I2(dac_samples[10]),
        .I3(dac_samples[11]),
        .O(\dac_samples[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF0DDDDDDD0)) 
    \dac_samples[3]_i_1 
       (.I0(\dac_samples_reg[2]_1 ),
        .I1(\dac_samples[3]_i_2_n_0 ),
        .I2(\dac_samples[3]_i_3_n_0 ),
        .I3(\dac_samples[3]_i_4_n_0 ),
        .I4(\dac_samples[3]_i_5_n_0 ),
        .I5(\dac_samples[3]_i_6_n_0 ),
        .O(p_1_in__0[3]));
  LUT6 #(
    .INIT(64'h2222222222222202)) 
    \dac_samples[3]_i_2 
       (.I0(dac_samples04_in[3]),
        .I1(mode),
        .I2(\dac_samples[11]_i_10_n_0 ),
        .I3(dac_samples2[8]),
        .I4(dac_samples2[7]),
        .I5(\dac_samples[11]_i_11_n_0 ),
        .O(\dac_samples[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF8F)) 
    \dac_samples[3]_i_3 
       (.I0(mode),
        .I1(\dac_samples[10]_i_4_n_0 ),
        .I2(\code_value_reg[4]_0 [1]),
        .I3(Q),
        .I4(\code_value_reg[4]_0 [0]),
        .O(\dac_samples[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B8B8)) 
    \dac_samples[3]_i_4 
       (.I0(dac_samples[2]),
        .I1(mode),
        .I2(\dac_samples[7]_i_7_n_0 ),
        .I3(\dac_samples[11]_i_9_n_0 ),
        .I4(\dac_samples[11]_i_8_n_0 ),
        .I5(\dac_samples_reg[11]_i_7_n_5 ),
        .O(\dac_samples[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \dac_samples[3]_i_5 
       (.I0(mode),
        .I1(dac_samples[2]),
        .I2(dac_samples01_in[3]),
        .O(\dac_samples[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dac_samples[3]_i_6 
       (.I0(mode),
        .I1(dac_samples[4]),
        .O(\dac_samples[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0404FF04)) 
    \dac_samples[4]_i_1 
       (.I0(\dac_samples_reg[4]_0 ),
        .I1(dac_samples01_in[4]),
        .I2(\dac_samples[11]_i_3_n_0 ),
        .I3(dac_samples04_in[4]),
        .I4(\dac_samples[11]_i_6_n_0 ),
        .I5(\dac_samples[4]_i_3_n_0 ),
        .O(p_1_in__0[4]));
  LUT6 #(
    .INIT(64'hC000C000C444C000)) 
    \dac_samples[4]_i_3 
       (.I0(\dac_samples[10]_i_4_n_0 ),
        .I1(mode),
        .I2(dac_samples[5]),
        .I3(\dac_samples_reg[2]_1 ),
        .I4(dac_samples[3]),
        .I5(\dac_samples_reg[4]_0 ),
        .O(\dac_samples[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_samples[4]_i_4 
       (.I0(dac_samples[2]),
        .O(\dac_samples[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2FFFFF2F2FFF2)) 
    \dac_samples[5]_i_1 
       (.I0(dac_samples04_in[5]),
        .I1(\dac_samples[11]_i_6_n_0 ),
        .I2(\dac_samples[5]_i_2_n_0 ),
        .I3(\dac_samples[11]_i_3_n_0 ),
        .I4(\dac_samples[5]_i_3_n_0 ),
        .I5(dac_samples01_in[5]),
        .O(p_1_in__0[5]));
  LUT4 #(
    .INIT(16'h2000)) 
    \dac_samples[5]_i_2 
       (.I0(\code_value_reg[4]_0 [0]),
        .I1(Q),
        .I2(mode),
        .I3(dac_samples[6]),
        .O(\dac_samples[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF04FF)) 
    \dac_samples[5]_i_3 
       (.I0(\dac_samples[10]_i_4_n_0 ),
        .I1(mode),
        .I2(dac_samples[4]),
        .I3(\code_value_reg[4]_0 [1]),
        .I4(Q),
        .I5(\code_value_reg[4]_0 [0]),
        .O(\dac_samples[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2FFFFF2F2FFF2)) 
    \dac_samples[6]_i_1 
       (.I0(dac_samples04_in[6]),
        .I1(\dac_samples[11]_i_6_n_0 ),
        .I2(\dac_samples[6]_i_2_n_0 ),
        .I3(\dac_samples[11]_i_3_n_0 ),
        .I4(\dac_samples[6]_i_3_n_0 ),
        .I5(dac_samples01_in[6]),
        .O(p_1_in__0[6]));
  LUT4 #(
    .INIT(16'h2000)) 
    \dac_samples[6]_i_2 
       (.I0(\code_value_reg[4]_0 [0]),
        .I1(Q),
        .I2(mode),
        .I3(dac_samples[7]),
        .O(\dac_samples[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF04FF)) 
    \dac_samples[6]_i_3 
       (.I0(\dac_samples[10]_i_4_n_0 ),
        .I1(mode),
        .I2(dac_samples[5]),
        .I3(\code_value_reg[4]_0 [1]),
        .I4(Q),
        .I5(\code_value_reg[4]_0 [0]),
        .O(\dac_samples[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0075757500)) 
    \dac_samples[7]_i_1 
       (.I0(\dac_samples_reg[2]_1 ),
        .I1(\dac_samples[7]_i_3_n_0 ),
        .I2(dac_samples04_in[7]),
        .I3(\dac_samples[7]_i_4_n_0 ),
        .I4(\dac_samples[7]_i_5_n_0 ),
        .I5(\dac_samples[7]_i_6_n_0 ),
        .O(p_1_in__0[7]));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \dac_samples[7]_i_3 
       (.I0(\dac_samples[11]_i_11_n_0 ),
        .I1(dac_samples2[7]),
        .I2(dac_samples2[8]),
        .I3(\dac_samples[11]_i_10_n_0 ),
        .I4(mode),
        .O(\dac_samples[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dac_samples[7]_i_4 
       (.I0(dac_samples[6]),
        .I1(mode),
        .I2(dac_samples01_in[7]),
        .O(\dac_samples[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44454444)) 
    \dac_samples[7]_i_5 
       (.I0(mode),
        .I1(\dac_samples[7]_i_7_n_0 ),
        .I2(\dac_samples[11]_i_9_n_0 ),
        .I3(\dac_samples[11]_i_8_n_0 ),
        .I4(\dac_samples_reg[11]_i_7_n_5 ),
        .I5(\dac_samples[3]_i_3_n_0 ),
        .O(\dac_samples[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dac_samples[7]_i_6 
       (.I0(mode),
        .I1(dac_samples[8]),
        .O(\dac_samples[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \dac_samples[7]_i_7 
       (.I0(\dac_samples_reg[11]_i_7_n_6 ),
        .I1(\dac_samples_reg[11]_i_7_n_5 ),
        .I2(\dac_samples_reg[11]_i_7_n_0 ),
        .O(\dac_samples[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2FFFFF2F2FFF2)) 
    \dac_samples[8]_i_1 
       (.I0(dac_samples04_in[8]),
        .I1(\dac_samples[11]_i_6_n_0 ),
        .I2(\dac_samples[8]_i_2_n_0 ),
        .I3(\dac_samples[11]_i_3_n_0 ),
        .I4(\dac_samples[8]_i_3_n_0 ),
        .I5(dac_samples01_in[8]),
        .O(p_1_in__0[8]));
  LUT4 #(
    .INIT(16'h2000)) 
    \dac_samples[8]_i_2 
       (.I0(\code_value_reg[4]_0 [0]),
        .I1(Q),
        .I2(mode),
        .I3(dac_samples[9]),
        .O(\dac_samples[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF04FF)) 
    \dac_samples[8]_i_3 
       (.I0(\dac_samples[10]_i_4_n_0 ),
        .I1(mode),
        .I2(dac_samples[7]),
        .I3(\code_value_reg[4]_0 [1]),
        .I4(Q),
        .I5(\code_value_reg[4]_0 [0]),
        .O(\dac_samples[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2FFFFF2F2FFF2)) 
    \dac_samples[9]_i_1 
       (.I0(dac_samples04_in[9]),
        .I1(\dac_samples[11]_i_6_n_0 ),
        .I2(\dac_samples[9]_i_2_n_0 ),
        .I3(\dac_samples[11]_i_3_n_0 ),
        .I4(\dac_samples[9]_i_3_n_0 ),
        .I5(dac_samples01_in[9]),
        .O(p_1_in__0[9]));
  LUT4 #(
    .INIT(16'h2000)) 
    \dac_samples[9]_i_2 
       (.I0(\code_value_reg[4]_0 [0]),
        .I1(Q),
        .I2(mode),
        .I3(dac_samples[10]),
        .O(\dac_samples[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF04FF)) 
    \dac_samples[9]_i_3 
       (.I0(\dac_samples[10]_i_4_n_0 ),
        .I1(mode),
        .I2(dac_samples[8]),
        .I3(\code_value_reg[4]_0 [1]),
        .I4(Q),
        .I5(\code_value_reg[4]_0 [0]),
        .O(\dac_samples[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_samples_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[0]),
        .Q(dac_samples[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_samples_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[10]),
        .Q(dac_samples[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_samples_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[11]),
        .Q(dac_samples[11]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dac_samples_reg[11]_i_12 
       (.CI(\dac_samples_reg[1]_i_2_n_0 ),
        .CO({\dac_samples_reg[11]_i_12_n_0 ,\NLW_dac_samples_reg[11]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\dac_samples_reg[11]_i_12_n_4 ,\dac_samples_reg[11]_i_12_n_5 ,\dac_samples_reg[11]_i_12_n_6 ,\dac_samples_reg[11]_i_12_n_7 }),
        .S(dac_samples[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dac_samples_reg[11]_i_5 
       (.CI(\dac_samples_reg[8]_i_4_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(dac_samples01_in[11:9]),
        .S({\<const0> ,dac_samples[11:9]}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dac_samples_reg[11]_i_7 
       (.CI(\dac_samples_reg[11]_i_12_n_0 ),
        .CO({\dac_samples_reg[11]_i_7_n_0 ,\NLW_dac_samples_reg[11]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\dac_samples_reg[11]_i_7_n_5 ,\dac_samples_reg[11]_i_7_n_6 ,\dac_samples_reg[11]_i_7_n_7 }),
        .S({\<const1> ,dac_samples[11:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \dac_samples_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[1]),
        .Q(dac_samples[1]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dac_samples_reg[1]_i_2 
       (.CI(\<const0> ),
        .CO({\dac_samples_reg[1]_i_2_n_0 ,\NLW_dac_samples_reg[1]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(dac_samples[0]),
        .DI({\<const0> ,\<const0> ,dac_samples[2],\<const0> }),
        .O({\dac_samples_reg[1]_i_2_n_4 ,\dac_samples_reg[1]_i_2_n_5 ,\dac_samples_reg[1]_i_2_n_6 ,dac_samples01_in[1]}),
        .S({dac_samples[4:3],\dac_samples[1]_i_6_n_0 ,dac_samples[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \dac_samples_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[2]),
        .Q(dac_samples[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_samples_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[3]),
        .Q(dac_samples[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_samples_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[4]),
        .Q(dac_samples[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dac_samples_reg[4]_i_2 
       (.CI(\<const0> ),
        .CO({\dac_samples_reg[4]_i_2_n_0 ,\NLW_dac_samples_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(dac_samples[0]),
        .DI({\<const0> ,\<const0> ,dac_samples[2],\<const0> }),
        .O({dac_samples01_in[4:2],\NLW_dac_samples_reg[4]_i_2_O_UNCONNECTED [0]}),
        .S({dac_samples[4:3],\dac_samples[4]_i_4_n_0 ,dac_samples[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \dac_samples_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[5]),
        .Q(dac_samples[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_samples_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[6]),
        .Q(dac_samples[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_samples_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[7]),
        .Q(dac_samples[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_samples_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[8]),
        .Q(dac_samples[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dac_samples_reg[8]_i_4 
       (.CI(\dac_samples_reg[4]_i_2_n_0 ),
        .CO({\dac_samples_reg[8]_i_4_n_0 ,\NLW_dac_samples_reg[8]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(dac_samples01_in[8:5]),
        .S(dac_samples[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \dac_samples_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[9]),
        .Q(dac_samples[9]),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry__0_i_1
       (.I0(dac_samples[8]),
        .O(i___0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry__0_i_2
       (.I0(dac_samples[7]),
        .O(i___0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry__0_i_3
       (.I0(dac_samples[6]),
        .O(i___0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry__0_i_4
       (.I0(dac_samples[5]),
        .O(i___0_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry__1_i_1
       (.I0(dac_samples[11]),
        .O(i___0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry__1_i_2
       (.I0(dac_samples[10]),
        .O(i___0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry__1_i_3
       (.I0(dac_samples[9]),
        .O(i___0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry_i_1
       (.I0(dac_samples[4]),
        .O(i___0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry_i_2
       (.I0(dac_samples[3]),
        .O(i___0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry_i_3
       (.I0(dac_samples[1]),
        .O(i___0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__0
       (.I0(dac_samples[8]),
        .O(i__carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__0
       (.I0(dac_samples[7]),
        .O(i__carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3__0
       (.I0(dac_samples[6]),
        .O(i__carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4__0
       (.I0(dac_samples[5]),
        .O(i__carry__0_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(dac_samples[11]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(dac_samples[10]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(dac_samples[9]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__0
       (.I0(dac_samples[4]),
        .O(i__carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__0
       (.I0(dac_samples[3]),
        .O(i__carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__0
       (.I0(dac_samples[1]),
        .O(i__carry_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \led_zero_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\led_zero_reg[0]_0 ),
        .Q(sq_wave_leds),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mode_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\mode_reg[0]_0 ),
        .Q(mode),
        .R(\<const0> ));
endmodule

module synchronizer
   (SR,
    \out_signal_reg[1]_0 ,
    \out_signal_reg[2]_0 ,
    \out_signal_reg[3]_0 ,
    D,
    CLK);
  output [0:0]SR;
  output [0:0]\out_signal_reg[1]_0 ;
  output [0:0]\out_signal_reg[2]_0 ;
  output [0:0]\out_signal_reg[3]_0 ;
  input [3:0]D;
  input CLK;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [3:0]D;
  wire [0:0]SR;
  wire [3:0]mid_signal;
  wire [0:0]\out_signal_reg[1]_0 ;
  wire [0:0]\out_signal_reg[2]_0 ;
  wire [0:0]\out_signal_reg[3]_0 ;
  wire [3:0]synchronized_signals;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \mid_signal_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(mid_signal[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mid_signal_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(mid_signal[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mid_signal_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(mid_signal[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mid_signal_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(D[3]),
        .Q(mid_signal[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_signal_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(mid_signal[0]),
        .Q(synchronized_signals[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_signal_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(mid_signal[1]),
        .Q(synchronized_signals[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_signal_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(mid_signal[2]),
        .Q(synchronized_signals[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_signal_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(mid_signal[3]),
        .Q(synchronized_signals[3]),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[0][8]_i_1 
       (.I0(synchronized_signals[0]),
        .O(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[1][8]_i_1 
       (.I0(synchronized_signals[1]),
        .O(\out_signal_reg[1]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[2][8]_i_1 
       (.I0(synchronized_signals[2]),
        .O(\out_signal_reg[2]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[3][8]_i_1 
       (.I0(synchronized_signals[3]),
        .O(\out_signal_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer__parameterized0
   (fsm_buttons,
    Q,
    \out_signal_reg[0]_0 ,
    \out_signal_reg[0]_1 ,
    DI,
    \out_signal_reg[0]_2 ,
    S,
    \addr_reg[0] ,
    AUD_PWM_OBUF_inst_i_1,
    DOADO,
    code_value,
    pwm1_carry,
    D,
    CLK);
  output [0:0]fsm_buttons;
  output [1:0]Q;
  output \out_signal_reg[0]_0 ;
  output \out_signal_reg[0]_1 ;
  output [0:0]DI;
  output [0:0]\out_signal_reg[0]_2 ;
  output [0:0]S;
  input [1:0]\addr_reg[0] ;
  input AUD_PWM_OBUF_inst_i_1;
  input [6:0]DOADO;
  input [1:0]code_value;
  input [1:0]pwm1_carry;
  input [1:0]D;
  input CLK;

  wire \<const0> ;
  wire \<const1> ;
  wire AUD_PWM_OBUF_inst_i_1;
  wire AUD_PWM_OBUF_inst_i_4_n_0;
  wire CLK;
  wire [1:0]D;
  wire [0:0]DI;
  wire [6:0]DOADO;
  wire [1:0]Q;
  wire [0:0]S;
  wire [1:0]\addr_reg[0] ;
  wire [1:0]code_value;
  wire [0:0]fsm_buttons;
  wire i__carry__0_i_3_n_0;
  wire \mid_signal_reg_n_0_[0] ;
  wire \mid_signal_reg_n_0_[1] ;
  wire \out_signal_reg[0]_0 ;
  wire \out_signal_reg[0]_1 ;
  wire [0:0]\out_signal_reg[0]_2 ;
  wire [1:0]pwm1_carry;

  LUT6 #(
    .INIT(64'h0000000800000000)) 
    AUD_PWM_OBUF_inst_i_2
       (.I0(AUD_PWM_OBUF_inst_i_1),
        .I1(Q[0]),
        .I2(DOADO[0]),
        .I3(DOADO[1]),
        .I4(i__carry__0_i_3_n_0),
        .I5(AUD_PWM_OBUF_inst_i_4_n_0),
        .O(\out_signal_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000FF010001FF)) 
    AUD_PWM_OBUF_inst_i_4
       (.I0(DOADO[3]),
        .I1(DOADO[2]),
        .I2(DOADO[4]),
        .I3(Q[0]),
        .I4(code_value[0]),
        .I5(DOADO[5]),
        .O(AUD_PWM_OBUF_inst_i_4_n_0));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h8)) 
    \addr[0]_i_2 
       (.I0(Q[0]),
        .I1(\addr_reg[0] [0]),
        .O(\out_signal_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \addr[0]_i_3 
       (.I0(Q[0]),
        .I1(\addr_reg[0] [1]),
        .O(fsm_buttons));
  LUT2 #(
    .INIT(4'h8)) 
    d_in0_carry_i_1
       (.I0(Q[0]),
        .I1(\addr_reg[0] [1]),
        .O(\out_signal_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    i__carry__0_i_1
       (.I0(code_value[0]),
        .I1(Q[0]),
        .I2(DOADO[5]),
        .I3(pwm1_carry[0]),
        .I4(pwm1_carry[1]),
        .I5(i__carry__0_i_3_n_0),
        .O(DI));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_3
       (.I0(DOADO[6]),
        .I1(Q[0]),
        .I2(code_value[1]),
        .O(i__carry__0_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mid_signal_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(\mid_signal_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mid_signal_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(\mid_signal_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_signal_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\mid_signal_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_signal_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\mid_signal_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'hB847)) 
    pwm1_carry_i_1
       (.I0(DOADO[6]),
        .I1(Q[0]),
        .I2(code_value[1]),
        .I3(pwm1_carry[1]),
        .O(S));
endmodule

(* B_PULSE_CNT_MAX = "200" *) (* B_SAMPLE_CNT_MAX = "62500" *) (* ECO_CHECKSUM = "29ccf96f" *) 
(* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) (* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module z1top
   (CLK_125MHZ_FPGA,
    BUTTONS,
    SWITCHES,
    LEDS,
    AUD_PWM,
    AUD_SD);
  input CLK_125MHZ_FPGA;
  input [3:0]BUTTONS;
  input [1:0]SWITCHES;
  output [5:0]LEDS;
  output AUD_PWM;
  output AUD_SD;

  wire \<const0> ;
  wire \<const1> ;
  wire AUD_PWM;
  wire AUD_PWM_OBUF;
  wire AUD_SD;
  wire AUD_SD_OBUF;
  wire [3:0]BUTTONS;
  wire [3:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA;
  wire CLK_125MHZ_FPGA_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [5:0]LEDS;
  wire [5:0]LEDS_OBUF;
  wire [1:0]SWITCHES;
  wire [1:0]SWITCHES_IBUF;
  wire bp_n_10;
  wire bp_n_11;
  wire bp_n_12;
  wire bp_n_13;
  wire bp_n_14;
  wire bp_n_15;
  wire bp_n_16;
  wire bp_n_17;
  wire bp_n_18;
  wire bp_n_19;
  wire bp_n_20;
  wire bp_n_3;
  wire bp_n_4;
  wire bp_n_5;
  wire bp_n_6;
  wire bp_n_7;
  wire bp_n_8;
  wire bp_n_9;
  wire [3:0]buttons_pressed;
  wire [4:2]code_value;
  wire [9:8]counter_reg;
  wire [23:0]counter_reg_0;
  wire [11:3]d_out;
  wire [1:1]fsm_buttons;
  wire fsm_n_12;
  wire fsm_n_13;
  wire fsm_n_14;
  wire fsm_n_15;
  wire fsm_n_16;
  wire fsm_n_17;
  wire fsm_n_18;
  wire fsm_n_19;
  wire fsm_n_20;
  wire fsm_n_21;
  wire fsm_n_22;
  wire fsm_n_23;
  wire fsm_n_24;
  wire fsm_n_25;
  wire fsm_n_26;
  wire fsm_n_27;
  wire fsm_n_28;
  wire fsm_n_29;
  wire fsm_n_30;
  wire fsm_n_31;
  wire fsm_n_32;
  wire fsm_n_33;
  wire fsm_n_34;
  wire fsm_n_35;
  wire fsm_n_36;
  wire fsm_n_37;
  wire fsm_n_38;
  wire fsm_n_39;
  wire fsm_n_40;
  wire fsm_n_41;
  wire fsm_n_42;
  wire fsm_n_43;
  wire fsm_n_44;
  wire fsm_n_45;
  wire fsm_n_46;
  wire fsm_n_47;
  wire fsm_n_48;
  wire fsm_n_49;
  wire fsm_n_50;
  wire fsm_n_51;
  wire fsm_n_52;
  wire fsm_n_53;
  wire fsm_n_54;
  wire fsm_n_55;
  wire fsm_n_56;
  wire fsm_n_57;
  wire fsm_n_58;
  wire fsm_n_59;
  wire gen_n_2;
  wire mode;
  wire nco_n_24;
  wire nco_n_25;
  wire nco_n_26;
  wire nco_n_27;
  wire nco_n_28;
  wire nco_n_29;
  wire nco_n_30;
  wire nco_n_31;
  wire next_sample;
  wire sel_n_10;
  wire sel_n_11;
  wire sel_n_12;
  wire sel_n_13;
  wire sel_n_14;
  wire sel_n_15;
  wire sel_n_6;
  wire sel_n_7;
  wire sel_n_8;
  wire sel_n_9;
  wire [0:0]sq_wave_leds;
  wire switch_sync_n_3;
  wire switch_sync_n_4;
  wire switch_sync_n_5;
  wire switch_sync_n_6;
  wire switch_sync_n_7;
  wire [0:0]switches_sync;

  OBUF AUD_PWM_OBUF_inst
       (.I(AUD_PWM_OBUF),
        .O(AUD_PWM));
  OBUF AUD_SD_OBUF_inst
       (.I(AUD_SD_OBUF),
        .O(AUD_SD));
  IBUF \BUTTONS_IBUF[0]_inst 
       (.I(BUTTONS[0]),
        .O(BUTTONS_IBUF[0]));
  IBUF \BUTTONS_IBUF[1]_inst 
       (.I(BUTTONS[1]),
        .O(BUTTONS_IBUF[1]));
  IBUF \BUTTONS_IBUF[2]_inst 
       (.I(BUTTONS[2]),
        .O(BUTTONS_IBUF[2]));
  IBUF \BUTTONS_IBUF[3]_inst 
       (.I(BUTTONS[3]),
        .O(BUTTONS_IBUF[3]));
  BUFG CLK_125MHZ_FPGA_IBUF_BUFG_inst
       (.I(CLK_125MHZ_FPGA_IBUF),
        .O(CLK_125MHZ_FPGA_IBUF_BUFG));
  IBUF CLK_125MHZ_FPGA_IBUF_inst
       (.I(CLK_125MHZ_FPGA),
        .O(CLK_125MHZ_FPGA_IBUF));
  GND GND
       (.G(\<const0> ));
  OBUF \LEDS_OBUF[0]_inst 
       (.I(LEDS_OBUF[0]),
        .O(LEDS[0]));
  OBUF \LEDS_OBUF[1]_inst 
       (.I(LEDS_OBUF[1]),
        .O(LEDS[1]));
  OBUF \LEDS_OBUF[2]_inst 
       (.I(LEDS_OBUF[2]),
        .O(LEDS[2]));
  OBUF \LEDS_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(LEDS[3]));
  OBUF \LEDS_OBUF[4]_inst 
       (.I(LEDS_OBUF[4]),
        .O(LEDS[4]));
  OBUF \LEDS_OBUF[5]_inst 
       (.I(LEDS_OBUF[5]),
        .O(LEDS[5]));
  IBUF \SWITCHES_IBUF[0]_inst 
       (.I(SWITCHES[0]),
        .O(SWITCHES_IBUF[0]));
  IBUF \SWITCHES_IBUF[1]_inst 
       (.I(SWITCHES[1]),
        .O(SWITCHES_IBUF[1]));
  VCC VCC
       (.P(\<const1> ));
  button_parser bp
       (.CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(BUTTONS_IBUF),
        .DI(bp_n_6),
        .E(bp_n_9),
        .LEDS_OBUF(LEDS_OBUF[5:4]),
        .Q(switches_sync),
        .S({bp_n_13,bp_n_14,bp_n_15}),
        .d_in0_carry__1({d_out[11:9],d_out[6:3]}),
        .\genblk1[0].pulse_signal_reg[0] (bp_n_7),
        .\genblk1[0].pulse_signal_reg[0]_0 (bp_n_8),
        .\genblk1[0].pulse_signal_reg[0]_1 (bp_n_10),
        .\genblk1[0].pulse_signal_reg[0]_2 (bp_n_12),
        .\genblk1[1].pulse_signal_reg[1] (bp_n_11),
        .\genblk1[1].pulse_signal_reg[1]_0 (bp_n_20),
        .\genblk1[2].pulse_signal_reg[2] (bp_n_3),
        .\genblk1[2].pulse_signal_reg[2]_0 (bp_n_4),
        .\genblk1[3].pulse_signal_reg[3] ({buttons_pressed[3],buttons_pressed[1:0]}),
        .\genblk1[3].pulse_signal_reg[3]_0 (bp_n_5),
        .\genblk1[3].pulse_signal_reg[3]_1 (bp_n_18),
        .mode(mode),
        .\mode_reg[0] (bp_n_19),
        .next_sample(next_sample),
        .\out_signal_reg[0] ({bp_n_16,bp_n_17}),
        .sq_wave_leds(sq_wave_leds));
  dac dac
       (.AUD_PWM(switch_sync_n_4),
        .AUD_PWM_OBUF(AUD_PWM_OBUF),
        .CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .DI(switch_sync_n_5),
        .DOADO({sel_n_6,sel_n_7,sel_n_8,sel_n_9,sel_n_10,sel_n_11,sel_n_12,sel_n_13,sel_n_14,sel_n_15}),
        .Q(counter_reg),
        .S(switch_sync_n_7),
        .code_value({code_value[4],code_value[2]}),
        .\counter_reg[0]_0 (buttons_pressed[3]),
        .next_sample(next_sample),
        .\pwm1_inferred__0/i__carry_0 (switches_sync));
  fsm fsm
       (.CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .DI(switch_sync_n_6),
        .\FSM_sequential_CurrentState_reg[0]_0 (bp_n_4),
        .\FSM_sequential_CurrentState_reg[1]_0 ({fsm_n_20,fsm_n_21,fsm_n_22,fsm_n_23}),
        .\FSM_sequential_CurrentState_reg[1]_1 ({fsm_n_24,fsm_n_25,fsm_n_26,fsm_n_27}),
        .\FSM_sequential_CurrentState_reg[1]_2 ({fsm_n_28,fsm_n_29,fsm_n_30,fsm_n_31}),
        .\FSM_sequential_CurrentState_reg[1]_3 ({fsm_n_32,fsm_n_33,fsm_n_34,fsm_n_35}),
        .\FSM_sequential_CurrentState_reg[1]_4 ({fsm_n_36,fsm_n_37,fsm_n_38,fsm_n_39}),
        .\FSM_sequential_CurrentState_reg[1]_5 (bp_n_3),
        .\LEDS[2] (switches_sync),
        .LEDS_OBUF({LEDS_OBUF[5:4],LEDS_OBUF[2:0]}),
        .Q({d_out[11:9],d_out[6:3]}),
        .S({bp_n_13,bp_n_14,bp_n_15}),
        .\addr_reg[0]_0 (switch_sync_n_3),
        .counter_reg(counter_reg_0),
        .\counter_reg[11] ({fsm_n_48,fsm_n_49,fsm_n_50,fsm_n_51}),
        .\counter_reg[15] ({fsm_n_52,fsm_n_53,fsm_n_54,fsm_n_55}),
        .\counter_reg[19] ({fsm_n_56,fsm_n_57,fsm_n_58,fsm_n_59}),
        .\counter_reg[23] ({fsm_n_12,fsm_n_13,fsm_n_14,fsm_n_15}),
        .\counter_reg[23]_0 ({fsm_n_16,fsm_n_17,fsm_n_18,fsm_n_19}),
        .\counter_reg[3] ({fsm_n_40,fsm_n_41,fsm_n_42,fsm_n_43}),
        .\counter_reg[7] ({fsm_n_44,fsm_n_45,fsm_n_46,fsm_n_47}),
        .fsm_buttons(fsm_buttons),
        .\ram_reg[3][13] (bp_n_7),
        .\ram_reg[3][13]_0 ({bp_n_16,bp_n_17}),
        .\ram_reg[3][2] ({buttons_pressed[3],buttons_pressed[1:0]}),
        .\ram_reg[3][9] (bp_n_6),
        .\ram_reg[3][9]_0 (bp_n_20),
        .sq_wave_leds(sq_wave_leds));
  sq_wave_gen gen
       (.CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .DOADO({sel_n_9,sel_n_10,sel_n_11}),
        .E(bp_n_9),
        .Q(switches_sync),
        .code_value({code_value[4],code_value[2]}),
        .\code_value_reg[4]_0 ({buttons_pressed[3],buttons_pressed[1:0]}),
        .\dac_samples_reg[0]_0 (bp_n_10),
        .\dac_samples_reg[2]_0 (bp_n_11),
        .\dac_samples_reg[2]_1 (bp_n_12),
        .\dac_samples_reg[4]_0 (bp_n_8),
        .\led_zero_reg[0]_0 (bp_n_19),
        .mode(mode),
        .\mode_reg[0]_0 (bp_n_18),
        .next_sample(next_sample),
        .sel(gen_n_2),
        .sq_wave_leds(sq_wave_leds));
  nco nco
       (.ADDRARDADDR({nco_n_24,nco_n_25,nco_n_26,nco_n_27,nco_n_28,nco_n_29,nco_n_30,nco_n_31}),
        .CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .counter0_carry__0_0({fsm_n_40,fsm_n_41,fsm_n_42,fsm_n_43}),
        .counter0_carry__1_0({fsm_n_44,fsm_n_45,fsm_n_46,fsm_n_47}),
        .counter0_carry__2_0({fsm_n_48,fsm_n_49,fsm_n_50,fsm_n_51}),
        .counter0_carry__3_0({fsm_n_52,fsm_n_53,fsm_n_54,fsm_n_55}),
        .counter_reg(counter_reg_0),
        .\counter_reg[11]_0 ({fsm_n_28,fsm_n_29,fsm_n_30,fsm_n_31}),
        .\counter_reg[15]_0 ({fsm_n_32,fsm_n_33,fsm_n_34,fsm_n_35}),
        .\counter_reg[19]_0 ({fsm_n_36,fsm_n_37,fsm_n_38,fsm_n_39}),
        .\counter_reg[23]_0 (buttons_pressed[3]),
        .\counter_reg[23]_1 ({fsm_n_16,fsm_n_17,fsm_n_18,fsm_n_19}),
        .\counter_reg[3]_0 ({fsm_n_20,fsm_n_21,fsm_n_22,fsm_n_23}),
        .\counter_reg[7]_0 ({fsm_n_24,fsm_n_25,fsm_n_26,fsm_n_27}),
        .next_sample(next_sample),
        .sel({fsm_n_56,fsm_n_57,fsm_n_58,fsm_n_59}),
        .sel_0({fsm_n_12,fsm_n_13,fsm_n_14,fsm_n_15}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d10" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2560" *) 
  (* RTL_RAM_NAME = "" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "9" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h02B802AC02A002940288027C027002630257024B023E023202250219020C0200),
    .INIT_01(256'h03610357034E0344033A03300326031C0311030702FC02F102E602DA02CF02C3),
    .INIT_02(256'h03D403CE03C903C303BD03B703B003A903A2039B0393038B0383037B0372036A),
    .INIT_03(256'h03FF03FF03FE03FD03FC03FA03F803F603F303F003ED03E903E603E203DD03D9),
    .INIT_04(256'h03DD03E203E603E903ED03F003F303F603F803FA03FC03FD03FE03FF03FF03FF),
    .INIT_05(256'h0372037B0383038B0393039B03A203A903B003B703BD03C303C903CE03D403D9),
    .INIT_06(256'h02CF02DA02E602F102FC03070311031C03260330033A0344034E03570361036A),
    .INIT_07(256'h020C021902250232023E024B025702630270027C0288029402A002AC02B802C3),
    .INIT_08(256'h01470153015F016B01770183018F019C01A801B401C101CD01DA01E601F30200),
    .INIT_09(256'h009E00A800B100BB00C500CF00D900E300EE00F80103010E011901250130013C),
    .INIT_0A(256'h002B00310036003C00420048004F0056005D0064006C0074007C0084008D0095),
    .INIT_0B(256'h00000000000100020003000500070009000C000F001200160019001D00220026),
    .INIT_0C(256'h0022001D001900160012000F000C000900070005000300020001000000000000),
    .INIT_0D(256'h008D0084007C0074006C0064005D0056004F00480042003C00360031002B0026),
    .INIT_0E(256'h013001250119010E010300F800EE00E300D900CF00C500BB00B100A8009E0095),
    .INIT_0F(256'h01F301E601DA01CD01C101B401A8019C018F01830177016B015F01530147013C),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    sel
       (.ADDRARDADDR({\<const0> ,\<const0> ,nco_n_24,nco_n_25,nco_n_26,nco_n_27,nco_n_28,nco_n_29,nco_n_30,nco_n_31,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CLKBWRCLK(\<const0> ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIBDI({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const1> ,\<const1> }),
        .DOADO({sel_n_6,sel_n_7,sel_n_8,sel_n_9,sel_n_10,sel_n_11,sel_n_12,sel_n_13,sel_n_14,sel_n_15}),
        .ENARDEN(bp_n_5),
        .ENBWREN(\<const0> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({\<const0> ,\<const0> }),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  synchronizer__parameterized0 switch_sync
       (.AUD_PWM_OBUF_inst_i_1(gen_n_2),
        .CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(SWITCHES_IBUF),
        .DI(switch_sync_n_5),
        .DOADO({sel_n_6,sel_n_7,sel_n_8,sel_n_12,sel_n_13,sel_n_14,sel_n_15}),
        .Q({AUD_SD_OBUF,switches_sync}),
        .S(switch_sync_n_7),
        .\addr_reg[0] (buttons_pressed[1:0]),
        .code_value({code_value[4],code_value[2]}),
        .fsm_buttons(fsm_buttons),
        .\out_signal_reg[0]_0 (switch_sync_n_3),
        .\out_signal_reg[0]_1 (switch_sync_n_4),
        .\out_signal_reg[0]_2 (switch_sync_n_6),
        .pwm1_carry(counter_reg));
endmodule
