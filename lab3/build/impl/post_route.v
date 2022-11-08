// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Sep 23 09:33:16 2022
// Host        : c111-6.eecs.berkeley.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force post_route.v
// Design      : z1top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module button_parser
   (\genblk1[1].pulse_signal_reg[1] ,
    E,
    \genblk1[2].pulse_signal_reg[2] ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \counter_reg[3] ,
    increment_reg,
    D);
  output [1:0]\genblk1[1].pulse_signal_reg[1] ;
  output [0:0]E;
  output \genblk1[2].pulse_signal_reg[2] ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input \counter_reg[3] ;
  input increment_reg;
  input [3:0]D;

  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]D;
  wire [0:0]E;
  wire button_synchronizer_n_1;
  wire button_synchronizer_n_2;
  wire button_synchronizer_n_3;
  wire clear;
  wire \counter_reg[3] ;
  wire [3:0]debounced_signals;
  wire [3:0]delayed_signal;
  wire \genblk1[0].pulse_signal_reg0 ;
  wire \genblk1[1].pulse_signal_reg0 ;
  wire [1:0]\genblk1[1].pulse_signal_reg[1] ;
  wire \genblk1[2].pulse_signal_reg0 ;
  wire \genblk1[2].pulse_signal_reg[2] ;
  wire \genblk1[3].pulse_signal_reg0 ;
  wire increment_reg;

  debouncer button_debouncer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
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
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(debounced_signals),
        .E(E),
        .Q(delayed_signal),
        .\counter_reg[3] (\counter_reg[3] ),
        .\genblk1[0].pulse_signal_reg0 (\genblk1[0].pulse_signal_reg0 ),
        .\genblk1[1].pulse_signal_reg0 (\genblk1[1].pulse_signal_reg0 ),
        .\genblk1[1].pulse_signal_reg[1]_0 (\genblk1[1].pulse_signal_reg[1] ),
        .\genblk1[2].pulse_signal_reg0 (\genblk1[2].pulse_signal_reg0 ),
        .\genblk1[2].pulse_signal_reg[2]_0 (\genblk1[2].pulse_signal_reg[2] ),
        .\genblk1[3].pulse_signal_reg0 (\genblk1[3].pulse_signal_reg0 ),
        .increment_reg(increment_reg));
  synchronizer button_synchronizer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(D),
        .SR(clear),
        .\out_signal_reg[1]_0 (button_synchronizer_n_1),
        .\out_signal_reg[2]_0 (button_synchronizer_n_2),
        .\out_signal_reg[3]_0 (button_synchronizer_n_3));
endmodule

module counter
   (increment_reg_0,
    Q,
    \genblk1[0].pulse_signal_reg[0] ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    increment_reg_1,
    \counter_reg[1]_0 ,
    E);
  output increment_reg_0;
  output [3:0]Q;
  output \genblk1[0].pulse_signal_reg[0] ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input increment_reg_1;
  input [1:0]\counter_reg[1]_0 ;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]E;
  wire [3:0]Q;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire [1:0]\counter_reg[1]_0 ;
  wire cycles_counter;
  wire \cycles_counter[0]_i_3_n_0 ;
  wire \cycles_counter[0]_i_4_n_0 ;
  wire \cycles_counter[0]_i_5_n_0 ;
  wire \cycles_counter[0]_i_6_n_0 ;
  wire \cycles_counter[0]_i_7_n_0 ;
  wire \cycles_counter[0]_i_8_n_0 ;
  wire \cycles_counter[0]_i_9_n_0 ;
  wire [26:0]cycles_counter_reg;
  wire \cycles_counter_reg[0]_i_2_n_0 ;
  wire \cycles_counter_reg[0]_i_2_n_4 ;
  wire \cycles_counter_reg[0]_i_2_n_5 ;
  wire \cycles_counter_reg[0]_i_2_n_6 ;
  wire \cycles_counter_reg[0]_i_2_n_7 ;
  wire \cycles_counter_reg[12]_i_1_n_0 ;
  wire \cycles_counter_reg[12]_i_1_n_4 ;
  wire \cycles_counter_reg[12]_i_1_n_5 ;
  wire \cycles_counter_reg[12]_i_1_n_6 ;
  wire \cycles_counter_reg[12]_i_1_n_7 ;
  wire \cycles_counter_reg[16]_i_1_n_0 ;
  wire \cycles_counter_reg[16]_i_1_n_4 ;
  wire \cycles_counter_reg[16]_i_1_n_5 ;
  wire \cycles_counter_reg[16]_i_1_n_6 ;
  wire \cycles_counter_reg[16]_i_1_n_7 ;
  wire \cycles_counter_reg[20]_i_1_n_0 ;
  wire \cycles_counter_reg[20]_i_1_n_4 ;
  wire \cycles_counter_reg[20]_i_1_n_5 ;
  wire \cycles_counter_reg[20]_i_1_n_6 ;
  wire \cycles_counter_reg[20]_i_1_n_7 ;
  wire \cycles_counter_reg[24]_i_1_n_5 ;
  wire \cycles_counter_reg[24]_i_1_n_6 ;
  wire \cycles_counter_reg[24]_i_1_n_7 ;
  wire \cycles_counter_reg[4]_i_1_n_0 ;
  wire \cycles_counter_reg[4]_i_1_n_4 ;
  wire \cycles_counter_reg[4]_i_1_n_5 ;
  wire \cycles_counter_reg[4]_i_1_n_6 ;
  wire \cycles_counter_reg[4]_i_1_n_7 ;
  wire \cycles_counter_reg[8]_i_1_n_0 ;
  wire \cycles_counter_reg[8]_i_1_n_4 ;
  wire \cycles_counter_reg[8]_i_1_n_5 ;
  wire \cycles_counter_reg[8]_i_1_n_6 ;
  wire \cycles_counter_reg[8]_i_1_n_7 ;
  wire \genblk1[0].pulse_signal_reg[0] ;
  wire increment_reg_0;
  wire increment_reg_1;
  wire [3:0]\NLW_cycles_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cycles_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cycles_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cycles_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cycles_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cycles_counter_reg[8]_i_1_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h32)) 
    \counter[0]_i_1 
       (.I0(\genblk1[0].pulse_signal_reg[0] ),
        .I1(Q[0]),
        .I2(\counter_reg[1]_0 [1]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5A84)) 
    \counter[1]_i_1 
       (.I0(Q[1]),
        .I1(\counter_reg[1]_0 [1]),
        .I2(Q[0]),
        .I3(\genblk1[0].pulse_signal_reg[0] ),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h6AA960A0)) 
    \counter[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\genblk1[0].pulse_signal_reg[0] ),
        .I3(Q[0]),
        .I4(\counter_reg[1]_0 [1]),
        .O(\counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AFAC000FAF80002)) 
    \counter[3]_i_2 
       (.I0(\counter_reg[1]_0 [1]),
        .I1(Q[0]),
        .I2(\genblk1[0].pulse_signal_reg[0] ),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEAEAEA)) 
    \counter[3]_i_3 
       (.I0(\counter_reg[1]_0 [0]),
        .I1(cycles_counter_reg[25]),
        .I2(increment_reg_0),
        .I3(\cycles_counter[0]_i_5_n_0 ),
        .I4(\cycles_counter[0]_i_4_n_0 ),
        .I5(\cycles_counter[0]_i_3_n_0 ),
        .O(\genblk1[0].pulse_signal_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\counter[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\counter[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\counter[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\counter[3]_i_2_n_0 ),
        .Q(Q[3]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h15000000)) 
    \cycles_counter[0]_i_1 
       (.I0(\cycles_counter[0]_i_3_n_0 ),
        .I1(\cycles_counter[0]_i_4_n_0 ),
        .I2(\cycles_counter[0]_i_5_n_0 ),
        .I3(increment_reg_0),
        .I4(cycles_counter_reg[25]),
        .O(cycles_counter));
  LUT6 #(
    .INIT(64'h3F7F3FFF3FFF3FFF)) 
    \cycles_counter[0]_i_3 
       (.I0(cycles_counter_reg[22]),
        .I1(cycles_counter_reg[26]),
        .I2(cycles_counter_reg[24]),
        .I3(cycles_counter_reg[23]),
        .I4(cycles_counter_reg[20]),
        .I5(cycles_counter_reg[21]),
        .O(\cycles_counter[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cycles_counter[0]_i_4 
       (.I0(cycles_counter_reg[19]),
        .I1(cycles_counter_reg[18]),
        .I2(cycles_counter_reg[23]),
        .O(\cycles_counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEFFF)) 
    \cycles_counter[0]_i_5 
       (.I0(\cycles_counter[0]_i_7_n_0 ),
        .I1(\cycles_counter[0]_i_8_n_0 ),
        .I2(cycles_counter_reg[12]),
        .I3(cycles_counter_reg[11]),
        .I4(cycles_counter_reg[15]),
        .I5(cycles_counter_reg[13]),
        .O(\cycles_counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycles_counter[0]_i_6 
       (.I0(cycles_counter_reg[0]),
        .O(\cycles_counter[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h777F)) 
    \cycles_counter[0]_i_7 
       (.I0(cycles_counter_reg[17]),
        .I1(cycles_counter_reg[16]),
        .I2(cycles_counter_reg[14]),
        .I3(cycles_counter_reg[15]),
        .O(\cycles_counter[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0101011101010101)) 
    \cycles_counter[0]_i_8 
       (.I0(cycles_counter_reg[10]),
        .I1(cycles_counter_reg[9]),
        .I2(cycles_counter_reg[8]),
        .I3(cycles_counter_reg[7]),
        .I4(cycles_counter_reg[6]),
        .I5(\cycles_counter[0]_i_9_n_0 ),
        .O(\cycles_counter[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cycles_counter[0]_i_9 
       (.I0(cycles_counter_reg[4]),
        .I1(cycles_counter_reg[5]),
        .I2(cycles_counter_reg[2]),
        .I3(cycles_counter_reg[3]),
        .I4(cycles_counter_reg[1]),
        .I5(cycles_counter_reg[0]),
        .O(\cycles_counter[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[0]_i_2_n_7 ),
        .Q(cycles_counter_reg[0]),
        .R(cycles_counter));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles_counter_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\cycles_counter_reg[0]_i_2_n_0 ,\NLW_cycles_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\cycles_counter_reg[0]_i_2_n_4 ,\cycles_counter_reg[0]_i_2_n_5 ,\cycles_counter_reg[0]_i_2_n_6 ,\cycles_counter_reg[0]_i_2_n_7 }),
        .S({cycles_counter_reg[3:1],\cycles_counter[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[8]_i_1_n_5 ),
        .Q(cycles_counter_reg[10]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[8]_i_1_n_4 ),
        .Q(cycles_counter_reg[11]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[12]_i_1_n_7 ),
        .Q(cycles_counter_reg[12]),
        .R(cycles_counter));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles_counter_reg[12]_i_1 
       (.CI(\cycles_counter_reg[8]_i_1_n_0 ),
        .CO({\cycles_counter_reg[12]_i_1_n_0 ,\NLW_cycles_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles_counter_reg[12]_i_1_n_4 ,\cycles_counter_reg[12]_i_1_n_5 ,\cycles_counter_reg[12]_i_1_n_6 ,\cycles_counter_reg[12]_i_1_n_7 }),
        .S(cycles_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[12]_i_1_n_6 ),
        .Q(cycles_counter_reg[13]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[12]_i_1_n_5 ),
        .Q(cycles_counter_reg[14]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[12]_i_1_n_4 ),
        .Q(cycles_counter_reg[15]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[16]_i_1_n_7 ),
        .Q(cycles_counter_reg[16]),
        .R(cycles_counter));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles_counter_reg[16]_i_1 
       (.CI(\cycles_counter_reg[12]_i_1_n_0 ),
        .CO({\cycles_counter_reg[16]_i_1_n_0 ,\NLW_cycles_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles_counter_reg[16]_i_1_n_4 ,\cycles_counter_reg[16]_i_1_n_5 ,\cycles_counter_reg[16]_i_1_n_6 ,\cycles_counter_reg[16]_i_1_n_7 }),
        .S(cycles_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[16]_i_1_n_6 ),
        .Q(cycles_counter_reg[17]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[16]_i_1_n_5 ),
        .Q(cycles_counter_reg[18]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[16]_i_1_n_4 ),
        .Q(cycles_counter_reg[19]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[0]_i_2_n_6 ),
        .Q(cycles_counter_reg[1]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[20]_i_1_n_7 ),
        .Q(cycles_counter_reg[20]),
        .R(cycles_counter));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles_counter_reg[20]_i_1 
       (.CI(\cycles_counter_reg[16]_i_1_n_0 ),
        .CO({\cycles_counter_reg[20]_i_1_n_0 ,\NLW_cycles_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles_counter_reg[20]_i_1_n_4 ,\cycles_counter_reg[20]_i_1_n_5 ,\cycles_counter_reg[20]_i_1_n_6 ,\cycles_counter_reg[20]_i_1_n_7 }),
        .S(cycles_counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[20]_i_1_n_6 ),
        .Q(cycles_counter_reg[21]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[20]_i_1_n_5 ),
        .Q(cycles_counter_reg[22]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[20]_i_1_n_4 ),
        .Q(cycles_counter_reg[23]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[24] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[24]_i_1_n_7 ),
        .Q(cycles_counter_reg[24]),
        .R(cycles_counter));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles_counter_reg[24]_i_1 
       (.CI(\cycles_counter_reg[20]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles_counter_reg[24]_i_1_n_5 ,\cycles_counter_reg[24]_i_1_n_6 ,\cycles_counter_reg[24]_i_1_n_7 }),
        .S({\<const0> ,cycles_counter_reg[26:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[25] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[24]_i_1_n_6 ),
        .Q(cycles_counter_reg[25]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[26] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[24]_i_1_n_5 ),
        .Q(cycles_counter_reg[26]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[0]_i_2_n_5 ),
        .Q(cycles_counter_reg[2]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[0]_i_2_n_4 ),
        .Q(cycles_counter_reg[3]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[4]_i_1_n_7 ),
        .Q(cycles_counter_reg[4]),
        .R(cycles_counter));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles_counter_reg[4]_i_1 
       (.CI(\cycles_counter_reg[0]_i_2_n_0 ),
        .CO({\cycles_counter_reg[4]_i_1_n_0 ,\NLW_cycles_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles_counter_reg[4]_i_1_n_4 ,\cycles_counter_reg[4]_i_1_n_5 ,\cycles_counter_reg[4]_i_1_n_6 ,\cycles_counter_reg[4]_i_1_n_7 }),
        .S(cycles_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[4]_i_1_n_6 ),
        .Q(cycles_counter_reg[5]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[4]_i_1_n_5 ),
        .Q(cycles_counter_reg[6]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[4]_i_1_n_4 ),
        .Q(cycles_counter_reg[7]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[8]_i_1_n_7 ),
        .Q(cycles_counter_reg[8]),
        .R(cycles_counter));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles_counter_reg[8]_i_1 
       (.CI(\cycles_counter_reg[4]_i_1_n_0 ),
        .CO({\cycles_counter_reg[8]_i_1_n_0 ,\NLW_cycles_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles_counter_reg[8]_i_1_n_4 ,\cycles_counter_reg[8]_i_1_n_5 ,\cycles_counter_reg[8]_i_1_n_6 ,\cycles_counter_reg[8]_i_1_n_7 }),
        .S(cycles_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(increment_reg_0),
        .D(\cycles_counter_reg[8]_i_1_n_6 ),
        .Q(cycles_counter_reg[9]),
        .R(cycles_counter));
  FDRE #(
    .INIT(1'b0)) 
    increment_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(increment_reg_1),
        .Q(increment_reg_0),
        .R(\<const0> ));
endmodule

module dac
   (next_sample,
    AUD_PWM_OBUF,
    code_value,
    next_sample_reg_0,
    Q,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    S,
    \i_reg[31] ,
    p_0_in,
    \i_reg[31]_0 ,
    \i_reg[31]_1 ,
    code_value__0);
  output next_sample;
  output AUD_PWM_OBUF;
  output code_value;
  output next_sample_reg_0;
  output [0:0]Q;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]S;
  input \i_reg[31] ;
  input [1:0]p_0_in;
  input \i_reg[31]_0 ;
  input \i_reg[31]_1 ;
  input code_value__0;

  wire \<const0> ;
  wire \<const1> ;
  wire AUD_PWM_OBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]Q;
  wire [0:0]S;
  wire code_value;
  wire code_value__0;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[9]_i_2_n_0 ;
  wire [8:0]counter_reg;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire \i_reg[31] ;
  wire \i_reg[31]_0 ;
  wire \i_reg[31]_1 ;
  wire next_sample;
  wire next_sample_i_1_n_0;
  wire next_sample_i_2_n_0;
  wire next_sample_i_3_n_0;
  wire next_sample_i_4_n_0;
  wire next_sample_i_5_n_0;
  wire next_sample_reg_0;
  wire [1:0]p_0_in;
  wire [9:1]p_0_in__4;
  wire pwm1_carry_i_2_n_0;
  wire pwm1_carry_i_3_n_0;
  wire pwm1_carry_i_4_n_0;
  wire pwm1_carry_n_0;
  wire \pwm1_inferred__0/i__carry__0_n_3 ;
  wire \pwm1_inferred__0/i__carry_n_0 ;
  wire [3:0]NLW_pwm1_carry_CO_UNCONNECTED;
  wire [3:0]\NLW_pwm1_inferred__0/i__carry_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    AUD_PWM_OBUF_inst_i_1
       (.I0(\pwm1_inferred__0/i__carry__0_n_3 ),
        .I1(pwm1_carry_n_0),
        .O(AUD_PWM_OBUF));
  LUT4 #(
    .INIT(16'h0008)) 
    FSM_sequential_code_value_i_2
       (.I0(\i_reg[31] ),
        .I1(next_sample),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(next_sample_reg_0));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* \PinAttr:I0:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_1__0_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__0 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(p_0_in__4[1]));
  (* \PinAttr:I0:HOLD_DETOUR  = "189" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1__0 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .O(p_0_in__4[2]));
  (* \PinAttr:I3:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1__0 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(counter_reg[3]),
        .O(p_0_in__4[3]));
  (* \PinAttr:I2:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[3]),
        .I3(counter_reg[2]),
        .I4(counter_reg[4]),
        .O(p_0_in__4[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter[5]_i_1 
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .I4(counter_reg[4]),
        .I5(counter_reg[5]),
        .O(p_0_in__4[5]));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \counter[6]_i_1 
       (.I0(counter_reg[4]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(next_sample_i_5_n_0),
        .I4(counter_reg[5]),
        .I5(counter_reg[6]),
        .O(p_0_in__4[6]));
  (* \PinAttr:I0:HOLD_DETOUR  = "179" *) 
  (* \PinAttr:I2:HOLD_DETOUR  = "179" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter[7]_i_1 
       (.I0(counter_reg[6]),
        .I1(\counter[9]_i_2_n_0 ),
        .I2(counter_reg[7]),
        .O(p_0_in__4[7]));
  (* \PinAttr:I2:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \counter[8]_i_1 
       (.I0(\counter[9]_i_2_n_0 ),
        .I1(counter_reg[7]),
        .I2(counter_reg[6]),
        .I3(counter_reg[8]),
        .O(p_0_in__4[8]));
  (* \PinAttr:I1:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \counter[9]_i_1 
       (.I0(counter_reg[8]),
        .I1(counter_reg[6]),
        .I2(counter_reg[7]),
        .I3(\counter[9]_i_2_n_0 ),
        .I4(Q),
        .O(p_0_in__4[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[9]_i_2 
       (.I0(counter_reg[5]),
        .I1(counter_reg[2]),
        .I2(counter_reg[3]),
        .I3(counter_reg[0]),
        .I4(counter_reg[1]),
        .I5(counter_reg[4]),
        .O(\counter[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(counter_reg[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[1]),
        .Q(counter_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[2]),
        .Q(counter_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[3]),
        .Q(counter_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[4]),
        .Q(counter_reg[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[5]),
        .Q(counter_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[6]),
        .Q(counter_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[7]),
        .Q(counter_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[8]),
        .Q(counter_reg[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[9]),
        .Q(Q),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \i[0]_i_1 
       (.I0(\i_reg[31] ),
        .I1(next_sample),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\i_reg[31]_0 ),
        .I5(\i_reg[31]_1 ),
        .O(code_value));
  LUT3 #(
    .INIT(8'h0D)) 
    i__carry__0_i_1
       (.I0(counter_reg[8]),
        .I1(code_value__0),
        .I2(Q),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    i__carry__0_i_2
       (.I0(Q),
        .I1(code_value__0),
        .I2(counter_reg[8]),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h07)) 
    i__carry_i_1
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(code_value__0),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h70)) 
    i__carry_i_2
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(code_value__0),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h07)) 
    i__carry_i_3
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .I2(code_value__0),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(counter_reg[1]),
        .O(i__carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h42)) 
    i__carry_i_5
       (.I0(code_value__0),
        .I1(counter_reg[6]),
        .I2(counter_reg[7]),
        .O(i__carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    i__carry_i_6
       (.I0(code_value__0),
        .I1(counter_reg[4]),
        .I2(counter_reg[5]),
        .O(i__carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h42)) 
    i__carry_i_7
       (.I0(code_value__0),
        .I1(counter_reg[2]),
        .I2(counter_reg[3]),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .O(i__carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    next_sample_i_1
       (.I0(next_sample_i_2_n_0),
        .I1(next_sample_i_3_n_0),
        .I2(next_sample_i_4_n_0),
        .I3(next_sample_i_5_n_0),
        .I4(counter_reg[8]),
        .I5(Q),
        .O(next_sample_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    next_sample_i_2
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .O(next_sample_i_2_n_0));
  (* \PinAttr:I1:HOLD_DETOUR  = "189" *) 
  LUT2 #(
    .INIT(4'h2)) 
    next_sample_i_3
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .O(next_sample_i_3_n_0));
  (* \PinAttr:I0:HOLD_DETOUR  = "179" *) 
  (* \PinAttr:I1:HOLD_DETOUR  = "179" *) 
  LUT2 #(
    .INIT(4'h7)) 
    next_sample_i_4
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .O(next_sample_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    next_sample_i_5
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .O(next_sample_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    next_sample_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
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
  LUT4 #(
    .INIT(16'h0810)) 
    pwm1_carry_i_2
       (.I0(counter_reg[7]),
        .I1(counter_reg[8]),
        .I2(code_value__0),
        .I3(counter_reg[6]),
        .O(pwm1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h0810)) 
    pwm1_carry_i_3
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(counter_reg[3]),
        .I3(code_value__0),
        .O(pwm1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h0220)) 
    pwm1_carry_i_4
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(code_value__0),
        .I3(counter_reg[2]),
        .O(pwm1_carry_i_4_n_0));
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
        .DI({\<const0> ,\<const0> ,\<const0> ,i__carry__0_i_1_n_0}),
        .S({\<const0> ,\<const0> ,\<const0> ,i__carry__0_i_2_n_0}));
endmodule

module debouncer
   (\genblk1[0].pulse_signal_reg0 ,
    Q,
    \genblk1[1].pulse_signal_reg0 ,
    \genblk1[2].pulse_signal_reg0 ,
    \genblk1[3].pulse_signal_reg0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
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
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [3:0]\genblk1[3].pulse_signal_reg[3] ;
  input [0:0]SR;
  input [0:0]\saturating_counter_reg[1][0]_0 ;
  input [0:0]\saturating_counter_reg[2][0]_0 ;
  input [0:0]\saturating_counter_reg[3][0]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \genblk1[0].pulse_signal_reg0 ;
  wire \genblk1[1].pulse_signal_reg0 ;
  wire \genblk1[2].pulse_signal_reg0 ;
  wire \genblk1[3].pulse_signal_reg0 ;
  wire [3:0]\genblk1[3].pulse_signal_reg[3] ;
  wire [8:0]p_0_in__0;
  wire [8:0]p_0_in__1;
  wire [8:0]p_0_in__2;
  wire [8:0]p_0_in__3;
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
        .O(p_0_in__0[0]));
  (* \PinAttr:I1:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[0][1]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [0]),
        .I1(\saturating_counter_reg[0]_0 [1]),
        .O(p_0_in__0[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \saturating_counter[0][2]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [0]),
        .I1(\saturating_counter_reg[0]_0 [1]),
        .I2(\saturating_counter_reg[0]_0 [2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[0][3]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [2]),
        .I1(\saturating_counter_reg[0]_0 [1]),
        .I2(\saturating_counter_reg[0]_0 [0]),
        .I3(\saturating_counter_reg[0]_0 [3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \saturating_counter[0][4]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [3]),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [2]),
        .I4(\saturating_counter_reg[0]_0 [4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \saturating_counter[0][5]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [4]),
        .I1(\saturating_counter_reg[0]_0 [2]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [0]),
        .I4(\saturating_counter_reg[0]_0 [3]),
        .I5(\saturating_counter_reg[0]_0 [5]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \saturating_counter[0][6]_i_1 
       (.I0(\saturating_counter[0][8]_i_5_n_0 ),
        .I1(\saturating_counter_reg[0]_0 [6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \saturating_counter[0][7]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [6]),
        .I1(\saturating_counter[0][8]_i_5_n_0 ),
        .I2(\saturating_counter_reg[0]_0 [7]),
        .O(p_0_in__0[7]));
  LUT3 #(
    .INIT(8'h20)) 
    \saturating_counter[0][8]_i_2 
       (.I0(\saturating_counter[0][8]_i_4_n_0 ),
        .I1(\saturating_counter_reg[0]_0 [8]),
        .I2(wrapper1),
        .O(saturating_counter9_out));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \saturating_counter[0][8]_i_3 
       (.I0(\saturating_counter[0][8]_i_5_n_0 ),
        .I1(\saturating_counter_reg[0]_0 [7]),
        .I2(\saturating_counter_reg[0]_0 [6]),
        .O(p_0_in__0[8]));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \saturating_counter[0][8]_i_4 
       (.I0(\saturating_counter_reg[0]_0 [3]),
        .I1(\saturating_counter_reg[0]_0 [4]),
        .I2(\saturating_counter_reg[0]_0 [5]),
        .I3(\saturating_counter_reg[0]_0 [6]),
        .I4(\saturating_counter_reg[0]_0 [7]),
        .O(\saturating_counter[0][8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \saturating_counter[0][8]_i_5 
       (.I0(\saturating_counter_reg[0]_0 [4]),
        .I1(\saturating_counter_reg[0]_0 [2]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [0]),
        .I4(\saturating_counter_reg[0]_0 [3]),
        .I5(\saturating_counter_reg[0]_0 [5]),
        .O(\saturating_counter[0][8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[1][0]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[1][1]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [0]),
        .I1(\saturating_counter_reg[1]_1 [1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \saturating_counter[1][2]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [0]),
        .I1(\saturating_counter_reg[1]_1 [1]),
        .I2(\saturating_counter_reg[1]_1 [2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[1][3]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [2]),
        .I1(\saturating_counter_reg[1]_1 [1]),
        .I2(\saturating_counter_reg[1]_1 [0]),
        .I3(\saturating_counter_reg[1]_1 [3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \saturating_counter[1][4]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [3]),
        .I1(\saturating_counter_reg[1]_1 [0]),
        .I2(\saturating_counter_reg[1]_1 [1]),
        .I3(\saturating_counter_reg[1]_1 [2]),
        .I4(\saturating_counter_reg[1]_1 [4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \saturating_counter[1][5]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [4]),
        .I1(\saturating_counter_reg[1]_1 [2]),
        .I2(\saturating_counter_reg[1]_1 [1]),
        .I3(\saturating_counter_reg[1]_1 [0]),
        .I4(\saturating_counter_reg[1]_1 [3]),
        .I5(\saturating_counter_reg[1]_1 [5]),
        .O(p_0_in__1[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \saturating_counter[1][6]_i_1 
       (.I0(\saturating_counter[1][8]_i_5_n_0 ),
        .I1(\saturating_counter_reg[1]_1 [6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \saturating_counter[1][7]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [6]),
        .I1(\saturating_counter[1][8]_i_5_n_0 ),
        .I2(\saturating_counter_reg[1]_1 [7]),
        .O(p_0_in__1[7]));
  LUT3 #(
    .INIT(8'h20)) 
    \saturating_counter[1][8]_i_2 
       (.I0(\saturating_counter[1][8]_i_4_n_0 ),
        .I1(\saturating_counter_reg[1]_1 [8]),
        .I2(wrapper1),
        .O(saturating_counter7_out));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \saturating_counter[1][8]_i_3 
       (.I0(\saturating_counter[1][8]_i_5_n_0 ),
        .I1(\saturating_counter_reg[1]_1 [7]),
        .I2(\saturating_counter_reg[1]_1 [6]),
        .O(p_0_in__1[8]));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \saturating_counter[1][8]_i_4 
       (.I0(\saturating_counter_reg[1]_1 [3]),
        .I1(\saturating_counter_reg[1]_1 [4]),
        .I2(\saturating_counter_reg[1]_1 [5]),
        .I3(\saturating_counter_reg[1]_1 [6]),
        .I4(\saturating_counter_reg[1]_1 [7]),
        .O(\saturating_counter[1][8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \saturating_counter[1][8]_i_5 
       (.I0(\saturating_counter_reg[1]_1 [4]),
        .I1(\saturating_counter_reg[1]_1 [2]),
        .I2(\saturating_counter_reg[1]_1 [1]),
        .I3(\saturating_counter_reg[1]_1 [0]),
        .I4(\saturating_counter_reg[1]_1 [3]),
        .I5(\saturating_counter_reg[1]_1 [5]),
        .O(\saturating_counter[1][8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[2][0]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [0]),
        .O(p_0_in__2[0]));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[2][1]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [0]),
        .I1(\saturating_counter_reg[2]_2 [1]),
        .O(p_0_in__2[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \saturating_counter[2][2]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [0]),
        .I1(\saturating_counter_reg[2]_2 [1]),
        .I2(\saturating_counter_reg[2]_2 [2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[2][3]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [2]),
        .I1(\saturating_counter_reg[2]_2 [1]),
        .I2(\saturating_counter_reg[2]_2 [0]),
        .I3(\saturating_counter_reg[2]_2 [3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \saturating_counter[2][4]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [3]),
        .I1(\saturating_counter_reg[2]_2 [0]),
        .I2(\saturating_counter_reg[2]_2 [1]),
        .I3(\saturating_counter_reg[2]_2 [2]),
        .I4(\saturating_counter_reg[2]_2 [4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \saturating_counter[2][5]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [4]),
        .I1(\saturating_counter_reg[2]_2 [2]),
        .I2(\saturating_counter_reg[2]_2 [1]),
        .I3(\saturating_counter_reg[2]_2 [0]),
        .I4(\saturating_counter_reg[2]_2 [3]),
        .I5(\saturating_counter_reg[2]_2 [5]),
        .O(p_0_in__2[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \saturating_counter[2][6]_i_1 
       (.I0(\saturating_counter[2][8]_i_5_n_0 ),
        .I1(\saturating_counter_reg[2]_2 [6]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \saturating_counter[2][7]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [6]),
        .I1(\saturating_counter[2][8]_i_5_n_0 ),
        .I2(\saturating_counter_reg[2]_2 [7]),
        .O(p_0_in__2[7]));
  LUT3 #(
    .INIT(8'h20)) 
    \saturating_counter[2][8]_i_2 
       (.I0(\saturating_counter[2][8]_i_4_n_0 ),
        .I1(\saturating_counter_reg[2]_2 [8]),
        .I2(wrapper1),
        .O(saturating_counter4_out));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \saturating_counter[2][8]_i_3 
       (.I0(\saturating_counter[2][8]_i_5_n_0 ),
        .I1(\saturating_counter_reg[2]_2 [7]),
        .I2(\saturating_counter_reg[2]_2 [6]),
        .O(p_0_in__2[8]));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \saturating_counter[2][8]_i_4 
       (.I0(\saturating_counter_reg[2]_2 [3]),
        .I1(\saturating_counter_reg[2]_2 [4]),
        .I2(\saturating_counter_reg[2]_2 [5]),
        .I3(\saturating_counter_reg[2]_2 [6]),
        .I4(\saturating_counter_reg[2]_2 [7]),
        .O(\saturating_counter[2][8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \saturating_counter[2][8]_i_5 
       (.I0(\saturating_counter_reg[2]_2 [4]),
        .I1(\saturating_counter_reg[2]_2 [2]),
        .I2(\saturating_counter_reg[2]_2 [1]),
        .I3(\saturating_counter_reg[2]_2 [0]),
        .I4(\saturating_counter_reg[2]_2 [3]),
        .I5(\saturating_counter_reg[2]_2 [5]),
        .O(\saturating_counter[2][8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[3][0]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[3][1]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [0]),
        .I1(\saturating_counter_reg[3]_3 [1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \saturating_counter[3][2]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [0]),
        .I1(\saturating_counter_reg[3]_3 [1]),
        .I2(\saturating_counter_reg[3]_3 [2]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[3][3]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [2]),
        .I1(\saturating_counter_reg[3]_3 [1]),
        .I2(\saturating_counter_reg[3]_3 [0]),
        .I3(\saturating_counter_reg[3]_3 [3]),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \saturating_counter[3][4]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [3]),
        .I1(\saturating_counter_reg[3]_3 [0]),
        .I2(\saturating_counter_reg[3]_3 [1]),
        .I3(\saturating_counter_reg[3]_3 [2]),
        .I4(\saturating_counter_reg[3]_3 [4]),
        .O(p_0_in__3[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \saturating_counter[3][5]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [4]),
        .I1(\saturating_counter_reg[3]_3 [2]),
        .I2(\saturating_counter_reg[3]_3 [1]),
        .I3(\saturating_counter_reg[3]_3 [0]),
        .I4(\saturating_counter_reg[3]_3 [3]),
        .I5(\saturating_counter_reg[3]_3 [5]),
        .O(p_0_in__3[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \saturating_counter[3][6]_i_1 
       (.I0(\saturating_counter[3][8]_i_5_n_0 ),
        .I1(\saturating_counter_reg[3]_3 [6]),
        .O(p_0_in__3[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \saturating_counter[3][7]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [6]),
        .I1(\saturating_counter[3][8]_i_5_n_0 ),
        .I2(\saturating_counter_reg[3]_3 [7]),
        .O(p_0_in__3[7]));
  LUT3 #(
    .INIT(8'h20)) 
    \saturating_counter[3][8]_i_2 
       (.I0(\saturating_counter[3][8]_i_4_n_0 ),
        .I1(\saturating_counter_reg[3]_3 [8]),
        .I2(wrapper1),
        .O(saturating_counter));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \saturating_counter[3][8]_i_3 
       (.I0(\saturating_counter[3][8]_i_5_n_0 ),
        .I1(\saturating_counter_reg[3]_3 [7]),
        .I2(\saturating_counter_reg[3]_3 [6]),
        .O(p_0_in__3[8]));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \saturating_counter[3][8]_i_4 
       (.I0(\saturating_counter_reg[3]_3 [3]),
        .I1(\saturating_counter_reg[3]_3 [4]),
        .I2(\saturating_counter_reg[3]_3 [5]),
        .I3(\saturating_counter_reg[3]_3 [6]),
        .I4(\saturating_counter_reg[3]_3 [7]),
        .O(\saturating_counter[3][8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \saturating_counter[3][8]_i_5 
       (.I0(\saturating_counter_reg[3]_3 [4]),
        .I1(\saturating_counter_reg[3]_3 [2]),
        .I2(\saturating_counter_reg[3]_3 [1]),
        .I3(\saturating_counter_reg[3]_3 [0]),
        .I4(\saturating_counter_reg[3]_3 [3]),
        .I5(\saturating_counter_reg[3]_3 [5]),
        .O(\saturating_counter[3][8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in__0[0]),
        .Q(\saturating_counter_reg[0]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in__0[1]),
        .Q(\saturating_counter_reg[0]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in__0[2]),
        .Q(\saturating_counter_reg[0]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in__0[3]),
        .Q(\saturating_counter_reg[0]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in__0[4]),
        .Q(\saturating_counter_reg[0]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in__0[5]),
        .Q(\saturating_counter_reg[0]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in__0[6]),
        .Q(\saturating_counter_reg[0]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in__0[7]),
        .Q(\saturating_counter_reg[0]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in__0[8]),
        .Q(\saturating_counter_reg[0]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter7_out),
        .D(p_0_in__1[0]),
        .Q(\saturating_counter_reg[1]_1 [0]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter7_out),
        .D(p_0_in__1[1]),
        .Q(\saturating_counter_reg[1]_1 [1]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter7_out),
        .D(p_0_in__1[2]),
        .Q(\saturating_counter_reg[1]_1 [2]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter7_out),
        .D(p_0_in__1[3]),
        .Q(\saturating_counter_reg[1]_1 [3]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter7_out),
        .D(p_0_in__1[4]),
        .Q(\saturating_counter_reg[1]_1 [4]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter7_out),
        .D(p_0_in__1[5]),
        .Q(\saturating_counter_reg[1]_1 [5]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter7_out),
        .D(p_0_in__1[6]),
        .Q(\saturating_counter_reg[1]_1 [6]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter7_out),
        .D(p_0_in__1[7]),
        .Q(\saturating_counter_reg[1]_1 [7]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter7_out),
        .D(p_0_in__1[8]),
        .Q(\saturating_counter_reg[1]_1 [8]),
        .R(\saturating_counter_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter4_out),
        .D(p_0_in__2[0]),
        .Q(\saturating_counter_reg[2]_2 [0]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter4_out),
        .D(p_0_in__2[1]),
        .Q(\saturating_counter_reg[2]_2 [1]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter4_out),
        .D(p_0_in__2[2]),
        .Q(\saturating_counter_reg[2]_2 [2]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter4_out),
        .D(p_0_in__2[3]),
        .Q(\saturating_counter_reg[2]_2 [3]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter4_out),
        .D(p_0_in__2[4]),
        .Q(\saturating_counter_reg[2]_2 [4]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter4_out),
        .D(p_0_in__2[5]),
        .Q(\saturating_counter_reg[2]_2 [5]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter4_out),
        .D(p_0_in__2[6]),
        .Q(\saturating_counter_reg[2]_2 [6]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter4_out),
        .D(p_0_in__2[7]),
        .Q(\saturating_counter_reg[2]_2 [7]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter4_out),
        .D(p_0_in__2[8]),
        .Q(\saturating_counter_reg[2]_2 [8]),
        .R(\saturating_counter_reg[2][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__3[0]),
        .Q(\saturating_counter_reg[3]_3 [0]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__3[1]),
        .Q(\saturating_counter_reg[3]_3 [1]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__3[2]),
        .Q(\saturating_counter_reg[3]_3 [2]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__3[3]),
        .Q(\saturating_counter_reg[3]_3 [3]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__3[4]),
        .Q(\saturating_counter_reg[3]_3 [4]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__3[5]),
        .Q(\saturating_counter_reg[3]_3 [5]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__3[6]),
        .Q(\saturating_counter_reg[3]_3 [6]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__3[7]),
        .Q(\saturating_counter_reg[3]_3 [7]),
        .R(\saturating_counter_reg[3][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__3[8]),
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
        .I4(\saturating_counter_reg[0]_0 [6]),
        .I5(\saturating_counter_reg[0]_0 [7]),
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
        .I4(\saturating_counter_reg[1]_1 [6]),
        .I5(\saturating_counter_reg[1]_1 [7]),
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
        .I4(\saturating_counter_reg[2]_2 [6]),
        .I5(\saturating_counter_reg[2]_2 [7]),
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
        .I4(\saturating_counter_reg[3]_3 [6]),
        .I5(\saturating_counter_reg[3]_3 [7]),
        .O(\store_output[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \store_output_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\store_output[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \store_output_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\store_output[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \store_output_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\store_output[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \store_output_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
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
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
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
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapper_reg[8]_i_1_n_5 ),
        .Q(wrapper_reg[10]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapper_reg[8]_i_1_n_4 ),
        .Q(wrapper_reg[11]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
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
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapper_reg[12]_i_1_n_6 ),
        .Q(wrapper_reg[13]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapper_reg[12]_i_1_n_5 ),
        .Q(wrapper_reg[14]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapper_reg[12]_i_1_n_4 ),
        .Q(wrapper_reg[15]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
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
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapper_reg[0]_i_2_n_6 ),
        .Q(wrapper_reg[1]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapper_reg[0]_i_2_n_5 ),
        .Q(wrapper_reg[2]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapper_reg[0]_i_2_n_4 ),
        .Q(wrapper_reg[3]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
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
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapper_reg[4]_i_1_n_6 ),
        .Q(wrapper_reg[5]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapper_reg[4]_i_1_n_5 ),
        .Q(wrapper_reg[6]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapper_reg[4]_i_1_n_4 ),
        .Q(wrapper_reg[7]),
        .R(wrapper1));
  FDRE #(
    .INIT(1'b0)) 
    \wrapper_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
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
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapper_reg[8]_i_1_n_6 ),
        .Q(wrapper_reg[9]),
        .R(wrapper1));
endmodule

module edge_detector
   (\genblk1[1].pulse_signal_reg[1]_0 ,
    E,
    \genblk1[2].pulse_signal_reg[2]_0 ,
    Q,
    \genblk1[0].pulse_signal_reg0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \genblk1[1].pulse_signal_reg0 ,
    \genblk1[2].pulse_signal_reg0 ,
    \genblk1[3].pulse_signal_reg0 ,
    \counter_reg[3] ,
    increment_reg,
    D);
  output [1:0]\genblk1[1].pulse_signal_reg[1]_0 ;
  output [0:0]E;
  output \genblk1[2].pulse_signal_reg[2]_0 ;
  output [3:0]Q;
  input \genblk1[0].pulse_signal_reg0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input \genblk1[1].pulse_signal_reg0 ;
  input \genblk1[2].pulse_signal_reg0 ;
  input \genblk1[3].pulse_signal_reg0 ;
  input \counter_reg[3] ;
  input increment_reg;
  input [3:0]D;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:2]buttons_pressed;
  wire \counter_reg[3] ;
  wire \genblk1[0].pulse_signal_reg0 ;
  wire \genblk1[1].pulse_signal_reg0 ;
  wire [1:0]\genblk1[1].pulse_signal_reg[1]_0 ;
  wire \genblk1[2].pulse_signal_reg0 ;
  wire \genblk1[2].pulse_signal_reg[2]_0 ;
  wire \genblk1[3].pulse_signal_reg0 ;
  wire increment_reg;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'hFE)) 
    \counter[3]_i_1 
       (.I0(\counter_reg[3] ),
        .I1(\genblk1[1].pulse_signal_reg[1]_0 [1]),
        .I2(buttons_pressed[3]),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].delayed_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].delayed_signal_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].delayed_signal_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].delayed_signal_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[3]),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].pulse_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[0].pulse_signal_reg0 ),
        .Q(\genblk1[1].pulse_signal_reg[1]_0 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].pulse_signal_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[1].pulse_signal_reg0 ),
        .Q(\genblk1[1].pulse_signal_reg[1]_0 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].pulse_signal_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[2].pulse_signal_reg0 ),
        .Q(buttons_pressed[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].pulse_signal_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[3].pulse_signal_reg0 ),
        .Q(buttons_pressed[3]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hFFFD0002)) 
    increment_i_1
       (.I0(buttons_pressed[2]),
        .I1(buttons_pressed[3]),
        .I2(\genblk1[1].pulse_signal_reg[1]_0 [0]),
        .I3(\genblk1[1].pulse_signal_reg[1]_0 [1]),
        .I4(increment_reg),
        .O(\genblk1[2].pulse_signal_reg[2]_0 ));
endmodule

module sq_wave_gen
   (code_value__0,
    \i_reg[28]_0 ,
    \i_reg[12]_0 ,
    \i_reg[31]_0 ,
    \i_reg[0]_0 ,
    S,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    FSM_sequential_code_value_reg_0,
    Q,
    code_value,
    next_sample);
  output code_value__0;
  output [1:0]\i_reg[28]_0 ;
  output \i_reg[12]_0 ;
  output \i_reg[31]_0 ;
  output \i_reg[0]_0 ;
  output [0:0]S;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input FSM_sequential_code_value_reg_0;
  input [0:0]Q;
  input code_value;
  input next_sample;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire FSM_sequential_code_value_i_1_n_0;
  wire FSM_sequential_code_value_reg_0;
  wire [0:0]Q;
  wire [0:0]S;
  wire code_value;
  wire code_value__0;
  wire \i[0]_i_11_n_0 ;
  wire \i[0]_i_13_n_0 ;
  wire \i[0]_i_14_n_0 ;
  wire \i[0]_i_17_n_0 ;
  wire [31:0]i_reg;
  wire \i_reg[0]_0 ;
  wire \i_reg[0]_i_10_n_0 ;
  wire \i_reg[0]_i_12_n_0 ;
  wire \i_reg[0]_i_15_n_0 ;
  wire \i_reg[0]_i_16_n_0 ;
  wire \i_reg[0]_i_18_n_0 ;
  wire \i_reg[0]_i_2_n_0 ;
  wire \i_reg[0]_i_2_n_4 ;
  wire \i_reg[0]_i_2_n_5 ;
  wire \i_reg[0]_i_2_n_6 ;
  wire \i_reg[0]_i_2_n_7 ;
  wire \i_reg[0]_i_4_n_0 ;
  wire \i_reg[0]_i_5_n_0 ;
  wire \i_reg[12]_0 ;
  wire \i_reg[12]_i_1_n_0 ;
  wire \i_reg[12]_i_1_n_4 ;
  wire \i_reg[12]_i_1_n_5 ;
  wire \i_reg[12]_i_1_n_6 ;
  wire \i_reg[12]_i_1_n_7 ;
  wire \i_reg[16]_i_1_n_0 ;
  wire \i_reg[16]_i_1_n_4 ;
  wire \i_reg[16]_i_1_n_5 ;
  wire \i_reg[16]_i_1_n_6 ;
  wire \i_reg[16]_i_1_n_7 ;
  wire \i_reg[20]_i_1_n_0 ;
  wire \i_reg[20]_i_1_n_4 ;
  wire \i_reg[20]_i_1_n_5 ;
  wire \i_reg[20]_i_1_n_6 ;
  wire \i_reg[20]_i_1_n_7 ;
  wire \i_reg[24]_i_1_n_0 ;
  wire \i_reg[24]_i_1_n_4 ;
  wire \i_reg[24]_i_1_n_5 ;
  wire \i_reg[24]_i_1_n_6 ;
  wire \i_reg[24]_i_1_n_7 ;
  wire [1:0]\i_reg[28]_0 ;
  wire \i_reg[28]_i_1_n_4 ;
  wire \i_reg[28]_i_1_n_5 ;
  wire \i_reg[28]_i_1_n_6 ;
  wire \i_reg[28]_i_1_n_7 ;
  wire \i_reg[31]_0 ;
  wire \i_reg[4]_i_1_n_0 ;
  wire \i_reg[4]_i_1_n_4 ;
  wire \i_reg[4]_i_1_n_5 ;
  wire \i_reg[4]_i_1_n_6 ;
  wire \i_reg[4]_i_1_n_7 ;
  wire \i_reg[8]_i_1_n_0 ;
  wire \i_reg[8]_i_1_n_4 ;
  wire \i_reg[8]_i_1_n_5 ;
  wire \i_reg[8]_i_1_n_6 ;
  wire \i_reg[8]_i_1_n_7 ;
  wire next_sample;
  wire [31:0]p_0_in;
  wire [3:0]\NLW_i_reg[0]_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[0]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[0]_i_15_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[0]_i_16_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[0]_i_18_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[0]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[8]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hBF40)) 
    FSM_sequential_code_value_i_1
       (.I0(\i_reg[12]_0 ),
        .I1(\i_reg[0]_0 ),
        .I2(FSM_sequential_code_value_reg_0),
        .I3(code_value__0),
        .O(FSM_sequential_code_value_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:1,iSTATE0:0," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_code_value_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(FSM_sequential_code_value_i_1_n_0),
        .Q(code_value__0),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h0004)) 
    \i[0]_i_11 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[5]),
        .I3(p_0_in[4]),
        .O(\i[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \i[0]_i_13 
       (.I0(p_0_in[8]),
        .I1(p_0_in[9]),
        .I2(p_0_in[10]),
        .I3(p_0_in[11]),
        .I4(p_0_in[31]),
        .I5(p_0_in[30]),
        .O(\i[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \i[0]_i_14 
       (.I0(p_0_in[16]),
        .I1(p_0_in[17]),
        .I2(p_0_in[18]),
        .I3(p_0_in[19]),
        .O(\i[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \i[0]_i_17 
       (.I0(p_0_in[20]),
        .I1(p_0_in[21]),
        .I2(p_0_in[22]),
        .I3(p_0_in[23]),
        .O(\i[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \i[0]_i_3 
       (.I0(p_0_in[29]),
        .I1(p_0_in[28]),
        .I2(p_0_in[27]),
        .I3(p_0_in[26]),
        .O(\i_reg[31]_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \i[0]_i_6 
       (.I0(\i[0]_i_11_n_0 ),
        .I1(i_reg[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
        .I5(\i[0]_i_13_n_0 ),
        .O(\i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \i[0]_i_7 
       (.I0(\i[0]_i_14_n_0 ),
        .I1(p_0_in[12]),
        .I2(p_0_in[13]),
        .I3(p_0_in[14]),
        .I4(p_0_in[15]),
        .I5(\i[0]_i_17_n_0 ),
        .O(\i_reg[12]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_8 
       (.I0(i_reg[0]),
        .O(p_0_in[0]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[0]_i_2_n_7 ),
        .Q(i_reg[0]),
        .R(code_value));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[0]_i_10 
       (.CI(\i_reg[0]_i_16_n_0 ),
        .CO({\i_reg[0]_i_10_n_0 ,\NLW_i_reg[0]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_0_in[20:17]),
        .S(i_reg[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[0]_i_12 
       (.CI(\<const0> ),
        .CO({\i_reg[0]_i_12_n_0 ,\NLW_i_reg[0]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(i_reg[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_0_in[4:1]),
        .S(i_reg[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[0]_i_15 
       (.CI(\i_reg[0]_i_18_n_0 ),
        .CO({\i_reg[0]_i_15_n_0 ,\NLW_i_reg[0]_i_15_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_0_in[12:9]),
        .S(i_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[0]_i_16 
       (.CI(\i_reg[0]_i_15_n_0 ),
        .CO({\i_reg[0]_i_16_n_0 ,\NLW_i_reg[0]_i_16_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_0_in[16:13]),
        .S(i_reg[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[0]_i_18 
       (.CI(\i_reg[0]_i_12_n_0 ),
        .CO({\i_reg[0]_i_18_n_0 ,\NLW_i_reg[0]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_0_in[8:5]),
        .S(i_reg[8:5]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\i_reg[0]_i_2_n_0 ,\NLW_i_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\i_reg[0]_i_2_n_4 ,\i_reg[0]_i_2_n_5 ,\i_reg[0]_i_2_n_6 ,\i_reg[0]_i_2_n_7 }),
        .S({i_reg[3:1],p_0_in[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[0]_i_4 
       (.CI(\i_reg[0]_i_10_n_0 ),
        .CO({\i_reg[0]_i_4_n_0 ,\NLW_i_reg[0]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\i_reg[28]_0 [0],p_0_in[23:21]}),
        .S(i_reg[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[0]_i_5 
       (.CI(\i_reg[0]_i_4_n_0 ),
        .CO({\i_reg[0]_i_5_n_0 ,\NLW_i_reg[0]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({p_0_in[28:26],\i_reg[28]_0 [1]}),
        .S(i_reg[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[0]_i_9 
       (.CI(\i_reg[0]_i_5_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_0_in[31:29]),
        .S({\<const0> ,i_reg[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[8]_i_1_n_5 ),
        .Q(i_reg[10]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[8]_i_1_n_4 ),
        .Q(i_reg[11]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[12]_i_1_n_7 ),
        .Q(i_reg[12]),
        .R(code_value));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[12]_i_1 
       (.CI(\i_reg[8]_i_1_n_0 ),
        .CO({\i_reg[12]_i_1_n_0 ,\NLW_i_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\i_reg[12]_i_1_n_4 ,\i_reg[12]_i_1_n_5 ,\i_reg[12]_i_1_n_6 ,\i_reg[12]_i_1_n_7 }),
        .S(i_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[12]_i_1_n_6 ),
        .Q(i_reg[13]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[12]_i_1_n_5 ),
        .Q(i_reg[14]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[12]_i_1_n_4 ),
        .Q(i_reg[15]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[16]_i_1_n_7 ),
        .Q(i_reg[16]),
        .R(code_value));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[16]_i_1 
       (.CI(\i_reg[12]_i_1_n_0 ),
        .CO({\i_reg[16]_i_1_n_0 ,\NLW_i_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\i_reg[16]_i_1_n_4 ,\i_reg[16]_i_1_n_5 ,\i_reg[16]_i_1_n_6 ,\i_reg[16]_i_1_n_7 }),
        .S(i_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[16]_i_1_n_6 ),
        .Q(i_reg[17]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[16]_i_1_n_5 ),
        .Q(i_reg[18]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[16]_i_1_n_4 ),
        .Q(i_reg[19]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[0]_i_2_n_6 ),
        .Q(i_reg[1]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[20]_i_1_n_7 ),
        .Q(i_reg[20]),
        .R(code_value));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[20]_i_1 
       (.CI(\i_reg[16]_i_1_n_0 ),
        .CO({\i_reg[20]_i_1_n_0 ,\NLW_i_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\i_reg[20]_i_1_n_4 ,\i_reg[20]_i_1_n_5 ,\i_reg[20]_i_1_n_6 ,\i_reg[20]_i_1_n_7 }),
        .S(i_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[20]_i_1_n_6 ),
        .Q(i_reg[21]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[20]_i_1_n_5 ),
        .Q(i_reg[22]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[20]_i_1_n_4 ),
        .Q(i_reg[23]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[24] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[24]_i_1_n_7 ),
        .Q(i_reg[24]),
        .R(code_value));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[24]_i_1 
       (.CI(\i_reg[20]_i_1_n_0 ),
        .CO({\i_reg[24]_i_1_n_0 ,\NLW_i_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\i_reg[24]_i_1_n_4 ,\i_reg[24]_i_1_n_5 ,\i_reg[24]_i_1_n_6 ,\i_reg[24]_i_1_n_7 }),
        .S(i_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[25] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[24]_i_1_n_6 ),
        .Q(i_reg[25]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[26] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[24]_i_1_n_5 ),
        .Q(i_reg[26]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[27] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[24]_i_1_n_4 ),
        .Q(i_reg[27]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[28] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[28]_i_1_n_7 ),
        .Q(i_reg[28]),
        .R(code_value));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[28]_i_1 
       (.CI(\i_reg[24]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\i_reg[28]_i_1_n_4 ,\i_reg[28]_i_1_n_5 ,\i_reg[28]_i_1_n_6 ,\i_reg[28]_i_1_n_7 }),
        .S(i_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[29] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[28]_i_1_n_6 ),
        .Q(i_reg[29]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[0]_i_2_n_5 ),
        .Q(i_reg[2]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[30] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[28]_i_1_n_5 ),
        .Q(i_reg[30]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[31] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[28]_i_1_n_4 ),
        .Q(i_reg[31]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[0]_i_2_n_4 ),
        .Q(i_reg[3]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[4]_i_1_n_7 ),
        .Q(i_reg[4]),
        .R(code_value));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[4]_i_1 
       (.CI(\i_reg[0]_i_2_n_0 ),
        .CO({\i_reg[4]_i_1_n_0 ,\NLW_i_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\i_reg[4]_i_1_n_4 ,\i_reg[4]_i_1_n_5 ,\i_reg[4]_i_1_n_6 ,\i_reg[4]_i_1_n_7 }),
        .S(i_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[4]_i_1_n_6 ),
        .Q(i_reg[5]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[4]_i_1_n_5 ),
        .Q(i_reg[6]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[4]_i_1_n_4 ),
        .Q(i_reg[7]),
        .R(code_value));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[8]_i_1_n_7 ),
        .Q(i_reg[8]),
        .R(code_value));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[8]_i_1 
       (.CI(\i_reg[4]_i_1_n_0 ),
        .CO({\i_reg[8]_i_1_n_0 ,\NLW_i_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\i_reg[8]_i_1_n_4 ,\i_reg[8]_i_1_n_5 ,\i_reg[8]_i_1_n_6 ,\i_reg[8]_i_1_n_7 }),
        .S(i_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[8]_i_1_n_6 ),
        .Q(i_reg[9]),
        .R(code_value));
  LUT2 #(
    .INIT(4'h9)) 
    pwm1_carry_i_1
       (.I0(code_value__0),
        .I1(Q),
        .O(S));
endmodule

module synchronizer
   (SR,
    \out_signal_reg[1]_0 ,
    \out_signal_reg[2]_0 ,
    \out_signal_reg[3]_0 ,
    D,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [0:0]SR;
  output [0:0]\out_signal_reg[1]_0 ;
  output [0:0]\out_signal_reg[2]_0 ;
  output [0:0]\out_signal_reg[3]_0 ;
  input [3:0]D;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
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
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(mid_signal[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mid_signal_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(mid_signal[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mid_signal_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(mid_signal[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mid_signal_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[3]),
        .Q(mid_signal[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(mid_signal[0]),
        .Q(synchronized_signals[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_signal_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(mid_signal[1]),
        .Q(synchronized_signals[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_signal_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(mid_signal[2]),
        .Q(synchronized_signals[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_signal_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
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

(* B_PULSE_CNT_MAX = "200" *) (* B_SAMPLE_CNT_MAX = "62500" *) (* ECO_CHECKSUM = "8e335b62" *) 
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
  wire [3:0]LEDS_OBUF;
  wire [1:0]SWITCHES;
  wire bp_n_2;
  wire bp_n_3;
  wire [1:0]buttons_pressed;
  wire code_value;
  wire code_value__0;
  wire count_n_0;
  wire count_n_5;
  wire [9:9]counter_reg;
  wire dac_n_3;
  wire gen_n_3;
  wire gen_n_4;
  wire gen_n_5;
  wire gen_n_6;
  wire next_sample;
  wire [25:24]p_0_in;

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
       (.I(LEDS_OBUF[3]),
        .O(LEDS[3]));
  OBUF \LEDS_OBUF[4]_inst 
       (.I(\<const1> ),
        .O(LEDS[4]));
  OBUF \LEDS_OBUF[5]_inst 
       (.I(\<const1> ),
        .O(LEDS[5]));
  IBUF \SWITCHES_IBUF[1]_inst 
       (.I(SWITCHES[1]),
        .O(AUD_SD_OBUF));
  VCC VCC
       (.P(\<const1> ));
  button_parser bp
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(BUTTONS_IBUF),
        .E(bp_n_2),
        .\counter_reg[3] (count_n_5),
        .\genblk1[1].pulse_signal_reg[1] (buttons_pressed),
        .\genblk1[2].pulse_signal_reg[2] (bp_n_3),
        .increment_reg(count_n_0));
  counter count
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .E(bp_n_2),
        .Q(LEDS_OBUF),
        .\counter_reg[1]_0 (buttons_pressed),
        .\genblk1[0].pulse_signal_reg[0] (count_n_5),
        .increment_reg_0(count_n_0),
        .increment_reg_1(bp_n_3));
  dac dac
       (.AUD_PWM_OBUF(AUD_PWM_OBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .Q(counter_reg),
        .S(gen_n_6),
        .code_value(code_value),
        .code_value__0(code_value__0),
        .\i_reg[31] (gen_n_4),
        .\i_reg[31]_0 (gen_n_5),
        .\i_reg[31]_1 (gen_n_3),
        .next_sample(next_sample),
        .next_sample_reg_0(dac_n_3),
        .p_0_in(p_0_in));
  sq_wave_gen gen
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .FSM_sequential_code_value_reg_0(dac_n_3),
        .Q(counter_reg),
        .S(gen_n_6),
        .code_value(code_value),
        .code_value__0(code_value__0),
        .\i_reg[0]_0 (gen_n_5),
        .\i_reg[12]_0 (gen_n_3),
        .\i_reg[28]_0 (p_0_in),
        .\i_reg[31]_0 (gen_n_4),
        .next_sample(next_sample));
endmodule
