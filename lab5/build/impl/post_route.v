// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Oct 21 07:57:08 2022
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
   (\genblk1[0].pulse_signal_reg[0] ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    BUTTONS_IBUF);
  output \genblk1[0].pulse_signal_reg[0] ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]BUTTONS_IBUF;

  wire [0:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire clear;
  wire [0:0]debounced_signals;
  wire [0:0]delayed_signal;
  wire \genblk1[0].pulse_signal_reg0 ;
  wire \genblk1[0].pulse_signal_reg[0] ;

  debouncer button_debouncer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .SR(clear),
        .debounced_signals(debounced_signals),
        .delayed_signal(delayed_signal),
        .\genblk1[0].pulse_signal_reg0 (\genblk1[0].pulse_signal_reg0 ));
  edge_detector button_edge_detector
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .debounced_signals(debounced_signals),
        .delayed_signal(delayed_signal),
        .\genblk1[0].pulse_signal_reg0 (\genblk1[0].pulse_signal_reg0 ),
        .\genblk1[0].pulse_signal_reg[0]_0 (\genblk1[0].pulse_signal_reg[0] ));
  synchronizer button_synchronizer
       (.BUTTONS_IBUF(BUTTONS_IBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .SR(clear));
endmodule

module debouncer
   (debounced_signals,
    \genblk1[0].pulse_signal_reg0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    delayed_signal,
    SR);
  output [0:0]debounced_signals;
  output \genblk1[0].pulse_signal_reg0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]delayed_signal;
  input [0:0]SR;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]SR;
  wire [0:0]debounced_signals;
  wire [0:0]delayed_signal;
  wire \genblk1[0].pulse_signal_reg0 ;
  wire [8:0]p_0_in;
  wire saturating_counter9_out;
  wire \saturating_counter[0][8]_i_4_n_0 ;
  wire \saturating_counter[0][8]_i_5_n_0 ;
  wire [8:0]\saturating_counter_reg[0]_0 ;
  wire \store_output[0]_i_1_n_0 ;
  wire \store_output[0]_i_2_n_0 ;
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
       (.I0(debounced_signals),
        .I1(delayed_signal),
        .O(\genblk1[0].pulse_signal_reg0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[0][0]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [0]),
        .O(p_0_in[0]));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[0][1]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [0]),
        .I1(\saturating_counter_reg[0]_0 [1]),
        .O(p_0_in[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \saturating_counter[0][2]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [2]),
        .I1(\saturating_counter_reg[0]_0 [1]),
        .I2(\saturating_counter_reg[0]_0 [0]),
        .O(p_0_in[2]));
  (* \PinAttr:I2:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[0][3]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [2]),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [3]),
        .O(p_0_in[3]));
  (* \PinAttr:I4:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \saturating_counter[0][4]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [4]),
        .I1(\saturating_counter_reg[0]_0 [3]),
        .I2(\saturating_counter_reg[0]_0 [2]),
        .I3(\saturating_counter_reg[0]_0 [0]),
        .I4(\saturating_counter_reg[0]_0 [1]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \saturating_counter[0][5]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [3]),
        .I1(\saturating_counter_reg[0]_0 [4]),
        .I2(\saturating_counter_reg[0]_0 [2]),
        .I3(\saturating_counter_reg[0]_0 [0]),
        .I4(\saturating_counter_reg[0]_0 [1]),
        .I5(\saturating_counter_reg[0]_0 [5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[0][6]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [6]),
        .I1(\saturating_counter[0][8]_i_5_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
        .I1(\saturating_counter_reg[0]_0 [1]),
        .I2(\saturating_counter_reg[0]_0 [0]),
        .I3(\saturating_counter_reg[0]_0 [2]),
        .I4(\saturating_counter_reg[0]_0 [4]),
        .I5(\saturating_counter_reg[0]_0 [3]),
        .O(\saturating_counter[0][8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in[0]),
        .Q(\saturating_counter_reg[0]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in[1]),
        .Q(\saturating_counter_reg[0]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in[2]),
        .Q(\saturating_counter_reg[0]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in[3]),
        .Q(\saturating_counter_reg[0]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in[4]),
        .Q(\saturating_counter_reg[0]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in[5]),
        .Q(\saturating_counter_reg[0]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in[6]),
        .Q(\saturating_counter_reg[0]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in[7]),
        .Q(\saturating_counter_reg[0]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter9_out),
        .D(p_0_in[8]),
        .Q(\saturating_counter_reg[0]_0 [8]),
        .R(SR));
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
  FDRE #(
    .INIT(1'b0)) 
    \store_output_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\store_output[0]_i_1_n_0 ),
        .Q(debounced_signals),
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
   (delayed_signal,
    \genblk1[0].pulse_signal_reg[0]_0 ,
    debounced_signals,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \genblk1[0].pulse_signal_reg0 );
  output [0:0]delayed_signal;
  output \genblk1[0].pulse_signal_reg[0]_0 ;
  input [0:0]debounced_signals;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input \genblk1[0].pulse_signal_reg0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]debounced_signals;
  wire [0:0]delayed_signal;
  wire \genblk1[0].pulse_signal_reg0 ;
  wire \genblk1[0].pulse_signal_reg[0]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].delayed_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(debounced_signals),
        .Q(delayed_signal),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].pulse_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[0].pulse_signal_reg0 ),
        .Q(\genblk1[0].pulse_signal_reg[0]_0 ),
        .R(\<const0> ));
endmodule

module fifo
   (\entries_reg[0]_0 ,
    \entries_reg[7]_0 ,
    \entries_reg[2]_0 ,
    \entries_reg[1]_0 ,
    dout,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \dout_reg[7]_0 ,
    E,
    \entries_reg[0]_1 ,
    \entries_reg[0]_2 ,
    has_byte);
  output \entries_reg[0]_0 ;
  output \entries_reg[7]_0 ;
  output \entries_reg[2]_0 ;
  output \entries_reg[1]_0 ;
  output [7:0]dout;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [7:0]\dout_reg[7]_0 ;
  input [0:0]E;
  input \entries_reg[0]_1 ;
  input \entries_reg[0]_2 ;
  input has_byte;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]E;
  wire [7:0]dout;
  wire [7:0]dout0__0;
  wire [7:0]\dout_reg[7]_0 ;
  wire entries;
  wire \entries[0]_i_1__0_n_0 ;
  wire \entries[4]_i_2__0_n_0 ;
  wire \entries[4]_i_3__0_n_0 ;
  wire \entries[4]_i_4__0_n_0 ;
  wire \entries[4]_i_5_n_0 ;
  wire \entries[7]_i_3__0_n_0 ;
  wire \entries[7]_i_4__0_n_0 ;
  wire \entries[7]_i_5__0_n_0 ;
  wire [7:0]entries_reg;
  wire \entries_reg[0]_0 ;
  wire \entries_reg[0]_1 ;
  wire \entries_reg[0]_2 ;
  wire \entries_reg[1]_0 ;
  wire \entries_reg[2]_0 ;
  wire \entries_reg[4]_i_1__0_n_0 ;
  wire \entries_reg[4]_i_1__0_n_4 ;
  wire \entries_reg[4]_i_1__0_n_5 ;
  wire \entries_reg[4]_i_1__0_n_6 ;
  wire \entries_reg[4]_i_1__0_n_7 ;
  wire \entries_reg[7]_0 ;
  wire \entries_reg[7]_i_2__0_n_5 ;
  wire \entries_reg[7]_i_2__0_n_6 ;
  wire \entries_reg[7]_i_2__0_n_7 ;
  wire has_byte;
  wire mem__0;
  wire [2:0]rd_ptr;
  wire \rd_ptr[0]_i_1_n_0 ;
  wire \rd_ptr[1]_i_1_n_0 ;
  wire \rd_ptr[2]_i_2_n_0 ;
  wire [2:0]wr_ptr;
  wire \wr_ptr[0]_i_1_n_0 ;
  wire \wr_ptr[1]_i_1_n_0 ;
  wire \wr_ptr[2]_i_1_n_0 ;
  wire \wr_ptr[2]_i_3__0_n_0 ;
  wire wr_ptr__0;
  wire [3:0]\NLW_entries_reg[4]_i_1__0_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_curr_state[1]_i_2 
       (.I0(entries_reg[2]),
        .I1(entries_reg[3]),
        .I2(entries_reg[0]),
        .I3(entries_reg[1]),
        .I4(\entries_reg[7]_0 ),
        .O(\entries_reg[2]_0 ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[0]),
        .Q(dout[0]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[1]),
        .Q(dout[1]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[2]),
        .Q(dout[2]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[3]),
        .Q(dout[3]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[4]),
        .Q(dout[4]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[5]),
        .Q(dout[5]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[6]),
        .Q(dout[6]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[7]),
        .Q(dout[7]),
        .R(\entries_reg[0]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \entries[0]_i_1__0 
       (.I0(entries_reg[0]),
        .O(\entries[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \entries[4]_i_2__0 
       (.I0(entries_reg[3]),
        .I1(entries_reg[4]),
        .O(\entries[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \entries[4]_i_3__0 
       (.I0(entries_reg[2]),
        .I1(entries_reg[3]),
        .O(\entries[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \entries[4]_i_4__0 
       (.I0(entries_reg[1]),
        .I1(entries_reg[2]),
        .O(\entries[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \entries[4]_i_5 
       (.I0(entries_reg[1]),
        .I1(wr_ptr__0),
        .O(\entries[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \entries[7]_i_1__0 
       (.I0(wr_ptr__0),
        .I1(E),
        .O(entries));
  LUT2 #(
    .INIT(4'h9)) 
    \entries[7]_i_3__0 
       (.I0(entries_reg[6]),
        .I1(entries_reg[7]),
        .O(\entries[7]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \entries[7]_i_4__0 
       (.I0(entries_reg[5]),
        .I1(entries_reg[6]),
        .O(\entries[7]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \entries[7]_i_5__0 
       (.I0(entries_reg[4]),
        .I1(entries_reg[5]),
        .O(\entries[7]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(entries),
        .D(\entries[0]_i_1__0_n_0 ),
        .Q(entries_reg[0]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(entries),
        .D(\entries_reg[4]_i_1__0_n_7 ),
        .Q(entries_reg[1]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(entries),
        .D(\entries_reg[4]_i_1__0_n_6 ),
        .Q(entries_reg[2]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(entries),
        .D(\entries_reg[4]_i_1__0_n_5 ),
        .Q(entries_reg[3]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(entries),
        .D(\entries_reg[4]_i_1__0_n_4 ),
        .Q(entries_reg[4]),
        .R(\entries_reg[0]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \entries_reg[4]_i_1__0 
       (.CI(\<const0> ),
        .CO({\entries_reg[4]_i_1__0_n_0 ,\NLW_entries_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(entries_reg[0]),
        .DI({entries_reg[3:1],wr_ptr__0}),
        .O({\entries_reg[4]_i_1__0_n_4 ,\entries_reg[4]_i_1__0_n_5 ,\entries_reg[4]_i_1__0_n_6 ,\entries_reg[4]_i_1__0_n_7 }),
        .S({\entries[4]_i_2__0_n_0 ,\entries[4]_i_3__0_n_0 ,\entries[4]_i_4__0_n_0 ,\entries[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(entries),
        .D(\entries_reg[7]_i_2__0_n_7 ),
        .Q(entries_reg[5]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(entries),
        .D(\entries_reg[7]_i_2__0_n_6 ),
        .Q(entries_reg[6]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(entries),
        .D(\entries_reg[7]_i_2__0_n_5 ),
        .Q(entries_reg[7]),
        .R(\entries_reg[0]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \entries_reg[7]_i_2__0 
       (.CI(\entries_reg[4]_i_1__0_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,entries_reg[5:4]}),
        .O({\entries_reg[7]_i_2__0_n_5 ,\entries_reg[7]_i_2__0_n_6 ,\entries_reg[7]_i_2__0_n_7 }),
        .S({\<const0> ,\entries[7]_i_3__0_n_0 ,\entries[7]_i_4__0_n_0 ,\entries[7]_i_5__0_n_0 }));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    has_byte_i_2
       (.I0(entries_reg[0]),
        .I1(entries_reg[1]),
        .I2(\entries_reg[7]_0 ),
        .I3(entries_reg[3]),
        .I4(entries_reg[2]),
        .O(\entries_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "rx_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    mem_reg_0_7_0_5
       (.ADDRA({\<const0> ,\<const0> ,rd_ptr}),
        .ADDRB({\<const0> ,\<const0> ,rd_ptr}),
        .ADDRC({\<const0> ,\<const0> ,rd_ptr}),
        .ADDRD({\<const0> ,\<const0> ,wr_ptr}),
        .DIA(\dout_reg[7]_0 [1:0]),
        .DIB(\dout_reg[7]_0 [3:2]),
        .DIC(\dout_reg[7]_0 [5:4]),
        .DID({\<const0> ,\<const0> }),
        .DOA(dout0__0[1:0]),
        .DOB(dout0__0[3:2]),
        .DOC(dout0__0[5:4]),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(mem__0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_7_0_5_i_1
       (.I0(wr_ptr__0),
        .I1(\entries_reg[0]_1 ),
        .O(mem__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "rx_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_6_7
       (.A0(wr_ptr[0]),
        .A1(wr_ptr[1]),
        .A2(wr_ptr[2]),
        .A3(\<const0> ),
        .A4(\<const0> ),
        .D(\dout_reg[7]_0 [6]),
        .DPO(dout0__0[6]),
        .DPRA0(rd_ptr[0]),
        .DPRA1(rd_ptr[1]),
        .DPRA2(rd_ptr[2]),
        .DPRA3(\<const0> ),
        .DPRA4(\<const0> ),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(mem__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "rx_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_6_7__0
       (.A0(wr_ptr[0]),
        .A1(wr_ptr[1]),
        .A2(wr_ptr[2]),
        .A3(\<const0> ),
        .A4(\<const0> ),
        .D(\dout_reg[7]_0 [7]),
        .DPO(dout0__0[7]),
        .DPRA0(rd_ptr[0]),
        .DPRA1(rd_ptr[1]),
        .DPRA2(rd_ptr[2]),
        .DPRA3(\<const0> ),
        .DPRA4(\<const0> ),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(mem__0));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1 
       (.I0(rd_ptr[0]),
        .O(\rd_ptr[0]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .O(\rd_ptr[1]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_ptr[2]_i_2 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .I2(rd_ptr[2]),
        .O(\rd_ptr[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rd_ptr[2]_i_3__0 
       (.I0(entries_reg[1]),
        .I1(entries_reg[0]),
        .I2(entries_reg[3]),
        .I3(entries_reg[2]),
        .O(\entries_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_ptr[2]_i_4 
       (.I0(entries_reg[7]),
        .I1(entries_reg[6]),
        .I2(entries_reg[5]),
        .I3(entries_reg[4]),
        .O(\entries_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\rd_ptr[0]_i_1_n_0 ),
        .Q(rd_ptr[0]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\rd_ptr[1]_i_1_n_0 ),
        .Q(rd_ptr[1]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\rd_ptr[2]_i_2_n_0 ),
        .Q(rd_ptr[2]),
        .R(\entries_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[0]_i_1 
       (.I0(wr_ptr__0),
        .I1(wr_ptr[0]),
        .O(\wr_ptr[0]_i_1_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_ptr[1]_i_1 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr__0),
        .I2(wr_ptr[1]),
        .O(\wr_ptr[1]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_ptr[2]_i_1 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr[1]),
        .I2(wr_ptr__0),
        .I3(wr_ptr[2]),
        .O(\wr_ptr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44444044)) 
    \wr_ptr[2]_i_2 
       (.I0(\entries_reg[0]_2 ),
        .I1(has_byte),
        .I2(entries_reg[2]),
        .I3(entries_reg[3]),
        .I4(\wr_ptr[2]_i_3__0_n_0 ),
        .O(wr_ptr__0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wr_ptr[2]_i_3__0 
       (.I0(entries_reg[4]),
        .I1(entries_reg[5]),
        .I2(entries_reg[6]),
        .I3(entries_reg[7]),
        .I4(entries_reg[1]),
        .I5(entries_reg[0]),
        .O(\wr_ptr[2]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wr_ptr[0]_i_1_n_0 ),
        .Q(wr_ptr[0]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wr_ptr[1]_i_1_n_0 ),
        .Q(wr_ptr[1]),
        .R(\entries_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wr_ptr[2]_i_1_n_0 ),
        .Q(wr_ptr[2]),
        .R(\entries_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module fifo_0
   (\wr_ptr_reg[0]_0 ,
    E,
    \entries_reg[5]_0 ,
    tx_fifo_empty,
    \entries_reg[1]_0 ,
    dout,
    \entries_reg[0]_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \wr_ptr_reg[0]_1 ,
    \dout_reg[6]_0 ,
    mem,
    \dout_reg[7]_0 ,
    wr_ptr__0,
    \rd_ptr_reg[2]_0 ,
    din,
    \entries_reg[7]_0 );
  output [0:0]\wr_ptr_reg[0]_0 ;
  output [0:0]E;
  output \entries_reg[5]_0 ;
  output tx_fifo_empty;
  output \entries_reg[1]_0 ;
  output [7:0]dout;
  input \entries_reg[0]_0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input \wr_ptr_reg[0]_1 ;
  input \dout_reg[6]_0 ;
  input mem;
  input \dout_reg[7]_0 ;
  input wr_ptr__0;
  input \rd_ptr_reg[2]_0 ;
  input [5:0]din;
  input [0:0]\entries_reg[7]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]E;
  wire [5:0]din;
  wire [7:0]dout;
  wire [7:0]dout0;
  wire \dout_reg[6]_0 ;
  wire \dout_reg[7]_0 ;
  wire \entries[0]_i_1_n_0 ;
  wire \entries[4]_i_2_n_0 ;
  wire \entries[4]_i_3_n_0 ;
  wire \entries[4]_i_4_n_0 ;
  wire \entries[4]_i_5__0_n_0 ;
  wire \entries[7]_i_3_n_0 ;
  wire \entries[7]_i_4_n_0 ;
  wire \entries[7]_i_5_n_0 ;
  wire [7:0]entries_reg;
  wire \entries_reg[0]_0 ;
  wire \entries_reg[1]_0 ;
  wire \entries_reg[4]_i_1_n_0 ;
  wire \entries_reg[4]_i_1_n_4 ;
  wire \entries_reg[4]_i_1_n_5 ;
  wire \entries_reg[4]_i_1_n_6 ;
  wire \entries_reg[4]_i_1_n_7 ;
  wire \entries_reg[5]_0 ;
  wire [0:0]\entries_reg[7]_0 ;
  wire \entries_reg[7]_i_2_n_5 ;
  wire \entries_reg[7]_i_2_n_6 ;
  wire \entries_reg[7]_i_2_n_7 ;
  wire mem;
  wire [2:0]rd_ptr;
  wire \rd_ptr[0]_i_1_n_0 ;
  wire \rd_ptr[1]_i_1_n_0 ;
  wire \rd_ptr[2]_i_2_n_0 ;
  wire \rd_ptr_reg[2]_0 ;
  wire tx_fifo_empty;
  wire [2:1]wr_ptr;
  wire \wr_ptr[1]_i_1__0_n_0 ;
  wire \wr_ptr[2]_i_1__0_n_0 ;
  wire wr_ptr__0;
  wire [0:0]\wr_ptr_reg[0]_0 ;
  wire \wr_ptr_reg[0]_1 ;
  wire [3:0]\NLW_entries_reg[4]_i_1_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0[0]),
        .Q(dout[0]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0[1]),
        .Q(dout[1]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0[2]),
        .Q(dout[2]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0[3]),
        .Q(dout[3]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0[4]),
        .Q(dout[4]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0[5]),
        .Q(dout[5]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0[6]),
        .Q(dout[6]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0[7]),
        .Q(dout[7]),
        .R(\entries_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \entries[0]_i_1 
       (.I0(entries_reg[0]),
        .O(\entries[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \entries[4]_i_2 
       (.I0(entries_reg[3]),
        .I1(entries_reg[4]),
        .O(\entries[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \entries[4]_i_3 
       (.I0(entries_reg[2]),
        .I1(entries_reg[3]),
        .O(\entries[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \entries[4]_i_4 
       (.I0(entries_reg[1]),
        .I1(entries_reg[2]),
        .O(\entries[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \entries[4]_i_5__0 
       (.I0(entries_reg[1]),
        .I1(wr_ptr__0),
        .O(\entries[4]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \entries[7]_i_3 
       (.I0(entries_reg[6]),
        .I1(entries_reg[7]),
        .O(\entries[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \entries[7]_i_4 
       (.I0(entries_reg[5]),
        .I1(entries_reg[6]),
        .O(\entries[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \entries[7]_i_5 
       (.I0(entries_reg[4]),
        .I1(entries_reg[5]),
        .O(\entries[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\entries_reg[7]_0 ),
        .D(\entries[0]_i_1_n_0 ),
        .Q(entries_reg[0]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\entries_reg[7]_0 ),
        .D(\entries_reg[4]_i_1_n_7 ),
        .Q(entries_reg[1]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\entries_reg[7]_0 ),
        .D(\entries_reg[4]_i_1_n_6 ),
        .Q(entries_reg[2]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\entries_reg[7]_0 ),
        .D(\entries_reg[4]_i_1_n_5 ),
        .Q(entries_reg[3]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\entries_reg[7]_0 ),
        .D(\entries_reg[4]_i_1_n_4 ),
        .Q(entries_reg[4]),
        .R(\entries_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \entries_reg[4]_i_1 
       (.CI(\<const0> ),
        .CO({\entries_reg[4]_i_1_n_0 ,\NLW_entries_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(entries_reg[0]),
        .DI({entries_reg[3:1],wr_ptr__0}),
        .O({\entries_reg[4]_i_1_n_4 ,\entries_reg[4]_i_1_n_5 ,\entries_reg[4]_i_1_n_6 ,\entries_reg[4]_i_1_n_7 }),
        .S({\entries[4]_i_2_n_0 ,\entries[4]_i_3_n_0 ,\entries[4]_i_4_n_0 ,\entries[4]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\entries_reg[7]_0 ),
        .D(\entries_reg[7]_i_2_n_7 ),
        .Q(entries_reg[5]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\entries_reg[7]_0 ),
        .D(\entries_reg[7]_i_2_n_6 ),
        .Q(entries_reg[6]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \entries_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\entries_reg[7]_0 ),
        .D(\entries_reg[7]_i_2_n_5 ),
        .Q(entries_reg[7]),
        .R(\entries_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \entries_reg[7]_i_2 
       (.CI(\entries_reg[4]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,entries_reg[5:4]}),
        .O({\entries_reg[7]_i_2_n_5 ,\entries_reg[7]_i_2_n_6 ,\entries_reg[7]_i_2_n_7 }),
        .S({\<const0> ,\entries[7]_i_3_n_0 ,\entries[7]_i_4_n_0 ,\entries[7]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "tx_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    mem_reg_0_7_0_5
       (.ADDRA({\<const0> ,\<const0> ,rd_ptr}),
        .ADDRB({\<const0> ,\<const0> ,rd_ptr}),
        .ADDRC({\<const0> ,\<const0> ,rd_ptr}),
        .ADDRD({\<const0> ,\<const0> ,wr_ptr,\wr_ptr_reg[0]_0 }),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID({\<const0> ,\<const0> }),
        .DOA(dout0[1:0]),
        .DOB(dout0[3:2]),
        .DOC(dout0[5:4]),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(mem));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "tx_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_6_7
       (.A0(\wr_ptr_reg[0]_0 ),
        .A1(wr_ptr[1]),
        .A2(wr_ptr[2]),
        .A3(\<const0> ),
        .A4(\<const0> ),
        .D(\dout_reg[6]_0 ),
        .DPO(dout0[6]),
        .DPRA0(rd_ptr[0]),
        .DPRA1(rd_ptr[1]),
        .DPRA2(rd_ptr[2]),
        .DPRA3(\<const0> ),
        .DPRA4(\<const0> ),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(mem));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "tx_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_6_7__0
       (.A0(\wr_ptr_reg[0]_0 ),
        .A1(wr_ptr[1]),
        .A2(wr_ptr[2]),
        .A3(\<const0> ),
        .A4(\<const0> ),
        .D(\dout_reg[7]_0 ),
        .DPO(dout0[7]),
        .DPRA0(rd_ptr[0]),
        .DPRA1(rd_ptr[1]),
        .DPRA2(rd_ptr[2]),
        .DPRA3(\<const0> ),
        .DPRA4(\<const0> ),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(mem));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1 
       (.I0(rd_ptr[0]),
        .O(\rd_ptr[0]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .O(\rd_ptr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555551)) 
    \rd_ptr[2]_i_1 
       (.I0(\rd_ptr_reg[2]_0 ),
        .I1(\entries_reg[5]_0 ),
        .I2(entries_reg[1]),
        .I3(entries_reg[0]),
        .I4(entries_reg[3]),
        .I5(entries_reg[2]),
        .O(E));
  (* \PinAttr:I1:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_ptr[2]_i_2 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .I2(rd_ptr[2]),
        .O(\rd_ptr[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rd_ptr[2]_i_4__0 
       (.I0(entries_reg[5]),
        .I1(entries_reg[4]),
        .I2(entries_reg[7]),
        .I3(entries_reg[6]),
        .O(\entries_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\rd_ptr[0]_i_1_n_0 ),
        .Q(rd_ptr[0]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\rd_ptr[1]_i_1_n_0 ),
        .Q(rd_ptr[1]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\rd_ptr[2]_i_2_n_0 ),
        .Q(rd_ptr[2]),
        .R(\entries_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    tx_fifo_empty_delayed_i_1
       (.I0(entries_reg[2]),
        .I1(entries_reg[3]),
        .I2(entries_reg[0]),
        .I3(entries_reg[1]),
        .I4(\entries_reg[5]_0 ),
        .O(tx_fifo_empty));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_ptr[1]_i_1__0 
       (.I0(\wr_ptr_reg[0]_0 ),
        .I1(wr_ptr__0),
        .I2(wr_ptr[1]),
        .O(\wr_ptr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_ptr[2]_i_1__0 
       (.I0(\wr_ptr_reg[0]_0 ),
        .I1(wr_ptr[1]),
        .I2(wr_ptr__0),
        .I3(wr_ptr[2]),
        .O(\wr_ptr[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \wr_ptr[2]_i_3 
       (.I0(entries_reg[1]),
        .I1(entries_reg[0]),
        .I2(entries_reg[2]),
        .I3(entries_reg[3]),
        .O(\entries_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wr_ptr_reg[0]_1 ),
        .Q(\wr_ptr_reg[0]_0 ),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wr_ptr[1]_i_1__0_n_0 ),
        .Q(wr_ptr[1]),
        .R(\entries_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wr_ptr[2]_i_1__0_n_0 ),
        .Q(wr_ptr[2]),
        .R(\entries_reg[0]_0 ));
endmodule

module mem_controller
   (\wr_ptr_reg[0] ,
    wr_ptr__0,
    E,
    \entries_reg[1] ,
    mem,
    mem_reg,
    mem_reg_0,
    din,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    wr_ptr,
    \entries_reg[7] ,
    \FSM_sequential_curr_state_reg[0]_0 ,
    \rd_ptr_reg[2] ,
    \rd_ptr_reg[2]_0 ,
    \FSM_sequential_curr_state_reg[0]_1 ,
    switches_sync,
    \wr_ptr_reg[0]_0 ,
    \wr_ptr_reg[0]_1 ,
    Q);
  output \wr_ptr_reg[0] ;
  output wr_ptr__0;
  output [0:0]E;
  output [0:0]\entries_reg[1] ;
  output mem;
  output mem_reg;
  output mem_reg_0;
  output [5:0]din;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]wr_ptr;
  input [0:0]\entries_reg[7] ;
  input \FSM_sequential_curr_state_reg[0]_0 ;
  input \rd_ptr_reg[2] ;
  input \rd_ptr_reg[2]_0 ;
  input \FSM_sequential_curr_state_reg[0]_1 ;
  input switches_sync;
  input \wr_ptr_reg[0]_0 ;
  input \wr_ptr_reg[0]_1 ;
  input [7:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]E;
  wire \FSM_sequential_curr_state[0]_i_2_n_0 ;
  wire \FSM_sequential_curr_state[2]_i_2_n_0 ;
  wire \FSM_sequential_curr_state[2]_i_3_n_0 ;
  wire \FSM_sequential_curr_state_reg[0]_0 ;
  wire \FSM_sequential_curr_state_reg[0]_1 ;
  wire [7:0]Q;
  wire [7:0]addr;
  wire addr_0;
  wire cmd;
  wire \cmd_reg_n_0_[0] ;
  wire \cmd_reg_n_0_[1] ;
  wire \cmd_reg_n_0_[2] ;
  wire \cmd_reg_n_0_[3] ;
  wire \cmd_reg_n_0_[4] ;
  wire \cmd_reg_n_0_[5] ;
  wire \cmd_reg_n_0_[6] ;
  wire \cmd_reg_n_0_[7] ;
  wire [2:0]curr_state;
  wire [7:0]data;
  wire data_1;
  wire [5:0]din;
  wire [0:0]\entries_reg[1] ;
  wire [0:0]\entries_reg[7] ;
  wire mem;
  wire mem_reg;
  wire mem_reg_0;
  wire [2:0]next_state__0;
  wire \rd_ptr[2]_i_5_n_0 ;
  wire \rd_ptr[2]_i_6_n_0 ;
  wire \rd_ptr[2]_i_7_n_0 ;
  wire \rd_ptr[2]_i_8_n_0 ;
  wire \rd_ptr_reg[2] ;
  wire \rd_ptr_reg[2]_0 ;
  wire switches_sync;
  wire [0:0]wr_ptr;
  wire wr_ptr__0;
  wire \wr_ptr_reg[0] ;
  wire \wr_ptr_reg[0]_0 ;
  wire \wr_ptr_reg[0]_1 ;

  LUT6 #(
    .INIT(64'h00FF11510055AA55)) 
    \FSM_sequential_curr_state[0]_i_1 
       (.I0(curr_state[0]),
        .I1(\FSM_sequential_curr_state[2]_i_2_n_0 ),
        .I2(\FSM_sequential_curr_state[0]_i_2_n_0 ),
        .I3(\FSM_sequential_curr_state_reg[0]_0 ),
        .I4(curr_state[2]),
        .I5(curr_state[1]),
        .O(next_state__0[0]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \FSM_sequential_curr_state[0]_i_2 
       (.I0(\cmd_reg_n_0_[2] ),
        .I1(\cmd_reg_n_0_[3] ),
        .I2(\cmd_reg_n_0_[0] ),
        .I3(\cmd_reg_n_0_[1] ),
        .I4(\FSM_sequential_curr_state[2]_i_3_n_0 ),
        .O(\FSM_sequential_curr_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000CF050)) 
    \FSM_sequential_curr_state[1]_i_1 
       (.I0(\FSM_sequential_curr_state_reg[0]_0 ),
        .I1(\FSM_sequential_curr_state[2]_i_2_n_0 ),
        .I2(curr_state[0]),
        .I3(curr_state[2]),
        .I4(curr_state[1]),
        .O(next_state__0[1]));
  LUT6 #(
    .INIT(64'h00FF0045FF000000)) 
    \FSM_sequential_curr_state[2]_i_1 
       (.I0(\FSM_sequential_curr_state[2]_i_2_n_0 ),
        .I1(\cmd_reg_n_0_[3] ),
        .I2(\cmd_reg_n_0_[0] ),
        .I3(curr_state[2]),
        .I4(curr_state[0]),
        .I5(curr_state[1]),
        .O(next_state__0[2]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_curr_state[2]_i_2 
       (.I0(\FSM_sequential_curr_state[2]_i_3_n_0 ),
        .I1(\cmd_reg_n_0_[2] ),
        .I2(\cmd_reg_n_0_[1] ),
        .I3(\cmd_reg_n_0_[0] ),
        .I4(\cmd_reg_n_0_[3] ),
        .O(\FSM_sequential_curr_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \FSM_sequential_curr_state[2]_i_3 
       (.I0(\cmd_reg_n_0_[4] ),
        .I1(\cmd_reg_n_0_[5] ),
        .I2(\cmd_reg_n_0_[6] ),
        .I3(\cmd_reg_n_0_[7] ),
        .O(\FSM_sequential_curr_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "ECHO_VAL:110,WRITE_MEM_VAL:100,READ_ADDR:010,READ_DATA:011,READ_MEM_VAL:101,IDLE:000,READ_CMD:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(next_state__0[0]),
        .Q(curr_state[0]),
        .R(\FSM_sequential_curr_state_reg[0]_1 ));
  (* FSM_ENCODED_STATES = "ECHO_VAL:110,WRITE_MEM_VAL:100,READ_ADDR:010,READ_DATA:011,READ_MEM_VAL:101,IDLE:000,READ_CMD:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(next_state__0[1]),
        .Q(curr_state[1]),
        .R(\FSM_sequential_curr_state_reg[0]_1 ));
  (* FSM_ENCODED_STATES = "ECHO_VAL:110,WRITE_MEM_VAL:100,READ_ADDR:010,READ_DATA:011,READ_MEM_VAL:101,IDLE:000,READ_CMD:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(next_state__0[2]),
        .Q(curr_state[2]),
        .R(\FSM_sequential_curr_state_reg[0]_1 ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h10)) 
    \addr[7]_i_1 
       (.I0(curr_state[2]),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .O(addr_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr_0),
        .D(Q[0]),
        .Q(addr[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr_0),
        .D(Q[1]),
        .Q(addr[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr_0),
        .D(Q[2]),
        .Q(addr[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr_0),
        .D(Q[3]),
        .Q(addr[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr_0),
        .D(Q[4]),
        .Q(addr[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr_0),
        .D(Q[5]),
        .Q(addr[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr_0),
        .D(Q[6]),
        .Q(addr[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr_0),
        .D(Q[7]),
        .Q(addr[7]),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h10)) 
    \cmd[7]_i_1 
       (.I0(curr_state[2]),
        .I1(curr_state[1]),
        .I2(curr_state[0]),
        .O(cmd));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(Q[0]),
        .Q(\cmd_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(Q[1]),
        .Q(\cmd_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(Q[2]),
        .Q(\cmd_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(Q[3]),
        .Q(\cmd_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(Q[4]),
        .Q(\cmd_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(Q[5]),
        .Q(\cmd_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(Q[6]),
        .Q(\cmd_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(Q[7]),
        .Q(\cmd_reg_n_0_[7] ),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h08)) 
    \data[7]_i_1 
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .I2(curr_state[2]),
        .O(data_1));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data_1),
        .D(Q[0]),
        .Q(data[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data_1),
        .D(Q[1]),
        .Q(data[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data_1),
        .D(Q[2]),
        .Q(data[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data_1),
        .D(Q[3]),
        .Q(data[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data_1),
        .D(Q[4]),
        .Q(data[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data_1),
        .D(Q[5]),
        .Q(data[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data_1),
        .D(Q[6]),
        .Q(data[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data_1),
        .D(Q[7]),
        .Q(data[7]),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h6)) 
    \entries[7]_i_1 
       (.I0(wr_ptr__0),
        .I1(\entries_reg[7] ),
        .O(E));
  memory mem__0
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .Q(addr),
        .din(din),
        .\dout_reg[1] (wr_ptr__0),
        .mem_reg_0(mem_reg),
        .mem_reg_1(mem_reg_0),
        .mem_reg_2(curr_state),
        .mem_reg_3(data));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_7_0_5_i_1__0
       (.I0(wr_ptr__0),
        .I1(\FSM_sequential_curr_state_reg[0]_1 ),
        .O(mem));
  LUT6 #(
    .INIT(64'hD0D0D0D0D0D0D000)) 
    \rd_ptr[2]_i_1__0 
       (.I0(\rd_ptr_reg[2] ),
        .I1(\rd_ptr_reg[2]_0 ),
        .I2(\rd_ptr[2]_i_5_n_0 ),
        .I3(\rd_ptr[2]_i_6_n_0 ),
        .I4(\rd_ptr[2]_i_7_n_0 ),
        .I5(\rd_ptr[2]_i_8_n_0 ),
        .O(\entries_reg[1] ));
  LUT4 #(
    .INIT(16'h00B7)) 
    \rd_ptr[2]_i_5 
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .I2(curr_state[2]),
        .I3(switches_sync),
        .O(\rd_ptr[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \rd_ptr[2]_i_6 
       (.I0(\cmd_reg_n_0_[1] ),
        .I1(\cmd_reg_n_0_[2] ),
        .I2(\cmd_reg_n_0_[7] ),
        .I3(\cmd_reg_n_0_[6] ),
        .I4(\cmd_reg_n_0_[5] ),
        .I5(\cmd_reg_n_0_[4] ),
        .O(\rd_ptr[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rd_ptr[2]_i_7 
       (.I0(\cmd_reg_n_0_[3] ),
        .I1(\cmd_reg_n_0_[0] ),
        .O(\rd_ptr[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4FFFF)) 
    \rd_ptr[2]_i_8 
       (.I0(\cmd_reg_n_0_[3] ),
        .I1(\cmd_reg_n_0_[0] ),
        .I2(curr_state[2]),
        .I3(curr_state[0]),
        .I4(curr_state[1]),
        .O(\rd_ptr[2]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[0]_i_1__0 
       (.I0(wr_ptr__0),
        .I1(wr_ptr),
        .O(\wr_ptr_reg[0] ));
  LUT6 #(
    .INIT(64'h0000004000400040)) 
    \wr_ptr[2]_i_2__0 
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(curr_state[2]),
        .I3(switches_sync),
        .I4(\wr_ptr_reg[0]_0 ),
        .I5(\wr_ptr_reg[0]_1 ),
        .O(wr_ptr__0));
endmodule

module memory
   (mem_reg_0,
    mem_reg_1,
    din,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \dout_reg[1] ,
    Q,
    mem_reg_2,
    mem_reg_3);
  output mem_reg_0;
  output mem_reg_1;
  output [5:0]din;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input \dout_reg[1] ;
  input [7:0]Q;
  input [2:0]mem_reg_2;
  input [7:0]mem_reg_3;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [7:0]Q;
  wire [5:0]din;
  wire \dout_reg[1] ;
  wire [7:0]mem_addr;
  wire [7:0]mem_din;
  wire [7:0]mem_dout;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [2:0]mem_reg_2;
  wire [7:0]mem_reg_3;
  wire mem_we;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem_ctrl/mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "768" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,mem_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CLKBWRCLK(\<const0> ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,mem_din}),
        .DIBDI({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const1> ,\<const1> }),
        .DOADO(mem_dout),
        .ENARDEN(\<const1> ),
        .ENBWREN(\<const0> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({mem_we,mem_we}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_7_0_5_i_2
       (.I0(mem_dout[1]),
        .I1(\dout_reg[1] ),
        .O(din[1]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_7_0_5_i_3
       (.I0(mem_dout[0]),
        .I1(\dout_reg[1] ),
        .O(din[0]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_7_0_5_i_4
       (.I0(mem_dout[3]),
        .I1(\dout_reg[1] ),
        .O(din[3]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_7_0_5_i_5
       (.I0(mem_dout[2]),
        .I1(\dout_reg[1] ),
        .O(din[2]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_7_0_5_i_6
       (.I0(mem_dout[5]),
        .I1(\dout_reg[1] ),
        .O(din[5]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_7_0_5_i_7
       (.I0(mem_dout[4]),
        .I1(\dout_reg[1] ),
        .O(din[4]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_7_6_7__0_i_1
       (.I0(mem_dout[7]),
        .I1(\dout_reg[1] ),
        .O(mem_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_7_6_7_i_1
       (.I0(mem_dout[6]),
        .I1(\dout_reg[1] ),
        .O(mem_reg_1));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_1
       (.I0(Q[7]),
        .I1(mem_reg_2[2]),
        .I2(mem_reg_2[1]),
        .O(mem_addr[7]));
  LUT4 #(
    .INIT(16'h0200)) 
    mem_reg_i_10
       (.I0(mem_reg_3[6]),
        .I1(mem_reg_2[1]),
        .I2(mem_reg_2[0]),
        .I3(mem_reg_2[2]),
        .O(mem_din[6]));
  LUT4 #(
    .INIT(16'h0200)) 
    mem_reg_i_11
       (.I0(mem_reg_3[5]),
        .I1(mem_reg_2[1]),
        .I2(mem_reg_2[0]),
        .I3(mem_reg_2[2]),
        .O(mem_din[5]));
  LUT4 #(
    .INIT(16'h0200)) 
    mem_reg_i_12
       (.I0(mem_reg_3[4]),
        .I1(mem_reg_2[1]),
        .I2(mem_reg_2[0]),
        .I3(mem_reg_2[2]),
        .O(mem_din[4]));
  LUT4 #(
    .INIT(16'h0200)) 
    mem_reg_i_13
       (.I0(mem_reg_3[3]),
        .I1(mem_reg_2[1]),
        .I2(mem_reg_2[0]),
        .I3(mem_reg_2[2]),
        .O(mem_din[3]));
  LUT4 #(
    .INIT(16'h0200)) 
    mem_reg_i_14
       (.I0(mem_reg_3[2]),
        .I1(mem_reg_2[1]),
        .I2(mem_reg_2[0]),
        .I3(mem_reg_2[2]),
        .O(mem_din[2]));
  LUT4 #(
    .INIT(16'h0200)) 
    mem_reg_i_15
       (.I0(mem_reg_3[1]),
        .I1(mem_reg_2[1]),
        .I2(mem_reg_2[0]),
        .I3(mem_reg_2[2]),
        .O(mem_din[1]));
  LUT4 #(
    .INIT(16'h0200)) 
    mem_reg_i_16
       (.I0(mem_reg_3[0]),
        .I1(mem_reg_2[1]),
        .I2(mem_reg_2[0]),
        .I3(mem_reg_2[2]),
        .O(mem_din[0]));
  LUT3 #(
    .INIT(8'h02)) 
    mem_reg_i_17
       (.I0(mem_reg_2[2]),
        .I1(mem_reg_2[0]),
        .I2(mem_reg_2[1]),
        .O(mem_we));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_2
       (.I0(Q[6]),
        .I1(mem_reg_2[2]),
        .I2(mem_reg_2[1]),
        .O(mem_addr[6]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_3
       (.I0(Q[5]),
        .I1(mem_reg_2[2]),
        .I2(mem_reg_2[1]),
        .O(mem_addr[5]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_4
       (.I0(Q[4]),
        .I1(mem_reg_2[2]),
        .I2(mem_reg_2[1]),
        .O(mem_addr[4]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_5
       (.I0(Q[3]),
        .I1(mem_reg_2[2]),
        .I2(mem_reg_2[1]),
        .O(mem_addr[3]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_6
       (.I0(Q[2]),
        .I1(mem_reg_2[2]),
        .I2(mem_reg_2[1]),
        .O(mem_addr[2]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_7
       (.I0(Q[1]),
        .I1(mem_reg_2[2]),
        .I2(mem_reg_2[1]),
        .O(mem_addr[1]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_8
       (.I0(Q[0]),
        .I1(mem_reg_2[2]),
        .I2(mem_reg_2[1]),
        .O(mem_addr[0]));
  LUT4 #(
    .INIT(16'h0200)) 
    mem_reg_i_9
       (.I0(mem_reg_3[7]),
        .I1(mem_reg_2[1]),
        .I2(mem_reg_2[0]),
        .I3(mem_reg_2[2]),
        .O(mem_din[7]));
endmodule

module synchronizer
   (SR,
    BUTTONS_IBUF,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [0:0]SR;
  input [0:0]BUTTONS_IBUF;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]SR;
  wire [0:0]mid_signal;
  wire [0:0]synchronized_signals;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \mid_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BUTTONS_IBUF),
        .Q(mid_signal),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(mid_signal),
        .Q(synchronized_signals),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[0][8]_i_1 
       (.I0(synchronized_signals),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer__parameterized0
   (switches_sync,
    SWITCHES_IBUF,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output switches_sync;
  input [0:0]SWITCHES_IBUF;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]SWITCHES_IBUF;
  wire \mid_signal_reg_n_0_[0] ;
  wire switches_sync;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \mid_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SWITCHES_IBUF),
        .Q(\mid_signal_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\mid_signal_reg_n_0_[0] ),
        .Q(switches_sync),
        .R(\<const0> ));
endmodule

module uart
   (FPGA_SERIAL_TX_OBUF,
    has_byte,
    \bit_counter_reg[3] ,
    \bit_counter_reg[2] ,
    \rx_shift_reg[8] ,
    \bit_counter_reg[1] ,
    FPGA_SERIAL_RX_IBUF,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    Q,
    tx_fifo_empty_delayed,
    has_byte_reg);
  output FPGA_SERIAL_TX_OBUF;
  output has_byte;
  output \bit_counter_reg[3] ;
  output \bit_counter_reg[2] ;
  output [7:0]\rx_shift_reg[8] ;
  input \bit_counter_reg[1] ;
  input FPGA_SERIAL_RX_IBUF;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [7:0]Q;
  input tx_fifo_empty_delayed;
  input has_byte_reg;

  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire FPGA_SERIAL_RX_IBUF;
  wire FPGA_SERIAL_TX_OBUF;
  wire [7:0]Q;
  wire \bit_counter_reg[1] ;
  wire \bit_counter_reg[2] ;
  wire \bit_counter_reg[3] ;
  wire has_byte;
  wire has_byte_reg;
  wire [7:0]\rx_shift_reg[8] ;
  wire serial_in_reg;
  wire serial_out_tx;
  wire tx_fifo_empty_delayed;

  VCC VCC
       (.P(\<const1> ));
  FDSE #(
    .INIT(1'b1)) 
    serial_in_reg_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(FPGA_SERIAL_RX_IBUF),
        .Q(serial_in_reg),
        .S(\bit_counter_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    serial_out_reg_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(serial_out_tx),
        .Q(FPGA_SERIAL_TX_OBUF),
        .S(\bit_counter_reg[1] ));
  uart_receiver uareceive
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .\bit_counter_reg[2]_0 (\bit_counter_reg[2] ),
        .has_byte(has_byte),
        .has_byte_reg_0(\bit_counter_reg[1] ),
        .has_byte_reg_1(has_byte_reg),
        .\rx_shift_reg[8]_0 (\rx_shift_reg[8] ),
        .serial_in_reg(serial_in_reg));
  uart_transmitter uatransmit
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .Q(Q),
        .\bit_counter_reg[1]_0 (\bit_counter_reg[1] ),
        .\bit_counter_reg[3]_0 (\bit_counter_reg[3] ),
        .serial_out_tx(serial_out_tx),
        .tx_fifo_empty_delayed(tx_fifo_empty_delayed));
endmodule

module uart_receiver
   (has_byte,
    \bit_counter_reg[2]_0 ,
    \rx_shift_reg[8]_0 ,
    has_byte_reg_0,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    serial_in_reg,
    has_byte_reg_1);
  output has_byte;
  output \bit_counter_reg[2]_0 ;
  output [7:0]\rx_shift_reg[8]_0 ;
  input has_byte_reg_0;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input serial_in_reg;
  input has_byte_reg_1;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]bit_counter;
  wire bit_counter0;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter[3]_i_1_n_0 ;
  wire \bit_counter[3]_i_2__0_n_0 ;
  wire \bit_counter[3]_i_3_n_0 ;
  wire \bit_counter_reg[2]_0 ;
  wire \clock_counter[10]_i_1_n_0 ;
  wire \clock_counter[10]_i_3__0_n_0 ;
  wire \clock_counter[9]_i_2_n_0 ;
  wire [10:0]clock_counter_reg;
  wire has_byte;
  wire has_byte0;
  wire has_byte_i_1_n_0;
  wire has_byte_i_4_n_0;
  wire has_byte_reg_0;
  wire has_byte_reg_1;
  wire [10:0]p_0_in__1;
  wire rx_shift0;
  wire \rx_shift[9]_i_2_n_0 ;
  wire \rx_shift[9]_i_3_n_0 ;
  wire [7:0]\rx_shift_reg[8]_0 ;
  wire \rx_shift_reg_n_0_[9] ;
  wire serial_in_reg;
  wire start;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h06060A00)) 
    \bit_counter[0]_i_1 
       (.I0(bit_counter[0]),
        .I1(\bit_counter[3]_i_2__0_n_0 ),
        .I2(has_byte_reg_0),
        .I3(serial_in_reg),
        .I4(\bit_counter_reg[2]_0 ),
        .O(\bit_counter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_counter[0]_i_2 
       (.I0(bit_counter[2]),
        .I1(bit_counter[0]),
        .I2(bit_counter[1]),
        .I3(bit_counter[3]),
        .O(\bit_counter_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hF50AF508F50AF50B)) 
    \bit_counter[1]_i_1 
       (.I0(\bit_counter[3]_i_2__0_n_0 ),
        .I1(bit_counter[2]),
        .I2(bit_counter[0]),
        .I3(bit_counter[1]),
        .I4(bit_counter[3]),
        .I5(serial_in_reg),
        .O(\bit_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AAA6)) 
    \bit_counter[2]_i_1 
       (.I0(bit_counter[2]),
        .I1(bit_counter0),
        .I2(bit_counter[1]),
        .I3(bit_counter[0]),
        .I4(has_byte_reg_0),
        .I5(start),
        .O(\bit_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \bit_counter[2]_i_2__0 
       (.I0(\bit_counter_reg[2]_0 ),
        .I1(\rx_shift[9]_i_2_n_0 ),
        .I2(\bit_counter[3]_i_3_n_0 ),
        .I3(clock_counter_reg[0]),
        .I4(clock_counter_reg[4]),
        .I5(clock_counter_reg[1]),
        .O(bit_counter0));
  LUT5 #(
    .INIT(32'h00000001)) 
    \bit_counter[2]_i_3 
       (.I0(serial_in_reg),
        .I1(bit_counter[3]),
        .I2(bit_counter[1]),
        .I3(bit_counter[0]),
        .I4(bit_counter[2]),
        .O(start));
  LUT6 #(
    .INIT(64'hFFFD0000FFFD0003)) 
    \bit_counter[3]_i_1 
       (.I0(\bit_counter[3]_i_2__0_n_0 ),
        .I1(bit_counter[2]),
        .I2(bit_counter[0]),
        .I3(bit_counter[1]),
        .I4(bit_counter[3]),
        .I5(serial_in_reg),
        .O(\bit_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \bit_counter[3]_i_2__0 
       (.I0(clock_counter_reg[1]),
        .I1(clock_counter_reg[4]),
        .I2(clock_counter_reg[0]),
        .I3(\bit_counter[3]_i_3_n_0 ),
        .I4(\rx_shift[9]_i_2_n_0 ),
        .O(\bit_counter[3]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \bit_counter[3]_i_3 
       (.I0(clock_counter_reg[9]),
        .I1(clock_counter_reg[10]),
        .I2(clock_counter_reg[6]),
        .I3(clock_counter_reg[5]),
        .O(\bit_counter[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(bit_counter[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(bit_counter[1]),
        .R(has_byte_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(bit_counter[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[3]_i_1_n_0 ),
        .Q(bit_counter[3]),
        .R(has_byte_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[0]_i_1__0 
       (.I0(clock_counter_reg[0]),
        .O(p_0_in__1[0]));
  LUT4 #(
    .INIT(16'hFFAB)) 
    \clock_counter[10]_i_1 
       (.I0(has_byte_reg_0),
        .I1(serial_in_reg),
        .I2(\bit_counter_reg[2]_0 ),
        .I3(\bit_counter[3]_i_2__0_n_0 ),
        .O(\clock_counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \clock_counter[10]_i_2__0 
       (.I0(clock_counter_reg[10]),
        .I1(clock_counter_reg[8]),
        .I2(clock_counter_reg[6]),
        .I3(\clock_counter[10]_i_3__0_n_0 ),
        .I4(clock_counter_reg[7]),
        .I5(clock_counter_reg[9]),
        .O(p_0_in__1[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clock_counter[10]_i_3__0 
       (.I0(clock_counter_reg[5]),
        .I1(clock_counter_reg[4]),
        .I2(clock_counter_reg[2]),
        .I3(clock_counter_reg[0]),
        .I4(clock_counter_reg[1]),
        .I5(clock_counter_reg[3]),
        .O(\clock_counter[10]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[1]_i_1__0 
       (.I0(clock_counter_reg[0]),
        .I1(clock_counter_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \clock_counter[2]_i_1__0 
       (.I0(clock_counter_reg[2]),
        .I1(clock_counter_reg[1]),
        .I2(clock_counter_reg[0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clock_counter[3]_i_1__0 
       (.I0(clock_counter_reg[3]),
        .I1(clock_counter_reg[2]),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[1]),
        .O(p_0_in__1[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \clock_counter[4]_i_1__0 
       (.I0(clock_counter_reg[4]),
        .I1(clock_counter_reg[3]),
        .I2(clock_counter_reg[1]),
        .I3(clock_counter_reg[0]),
        .I4(clock_counter_reg[2]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clock_counter[5]_i_1__0 
       (.I0(clock_counter_reg[4]),
        .I1(clock_counter_reg[2]),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[1]),
        .I4(clock_counter_reg[3]),
        .I5(clock_counter_reg[5]),
        .O(p_0_in__1[5]));
  LUT3 #(
    .INIT(8'h9A)) 
    \clock_counter[6]_i_1__0 
       (.I0(clock_counter_reg[6]),
        .I1(\clock_counter[9]_i_2_n_0 ),
        .I2(clock_counter_reg[5]),
        .O(p_0_in__1[6]));
  (* \PinAttr:I1:HOLD_DETOUR  = "199" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \clock_counter[7]_i_1__0 
       (.I0(clock_counter_reg[7]),
        .I1(clock_counter_reg[5]),
        .I2(\clock_counter[9]_i_2_n_0 ),
        .I3(clock_counter_reg[6]),
        .O(p_0_in__1[7]));
  (* \PinAttr:I3:HOLD_DETOUR  = "199" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \clock_counter[8]_i_1__0 
       (.I0(clock_counter_reg[8]),
        .I1(clock_counter_reg[6]),
        .I2(\clock_counter[9]_i_2_n_0 ),
        .I3(clock_counter_reg[5]),
        .I4(clock_counter_reg[7]),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \clock_counter[9]_i_1__0 
       (.I0(clock_counter_reg[9]),
        .I1(clock_counter_reg[7]),
        .I2(clock_counter_reg[5]),
        .I3(\clock_counter[9]_i_2_n_0 ),
        .I4(clock_counter_reg[6]),
        .I5(clock_counter_reg[8]),
        .O(p_0_in__1[9]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \clock_counter[9]_i_2 
       (.I0(clock_counter_reg[3]),
        .I1(clock_counter_reg[1]),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[2]),
        .I4(clock_counter_reg[4]),
        .O(\clock_counter[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[0]),
        .Q(clock_counter_reg[0]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[10]),
        .Q(clock_counter_reg[10]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[1]),
        .Q(clock_counter_reg[1]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[2]),
        .Q(clock_counter_reg[2]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[3]),
        .Q(clock_counter_reg[3]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[4]),
        .Q(clock_counter_reg[4]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[5]),
        .Q(clock_counter_reg[5]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[6]),
        .Q(clock_counter_reg[6]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[7]),
        .Q(clock_counter_reg[7]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[8]),
        .Q(clock_counter_reg[8]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[9]),
        .Q(clock_counter_reg[9]),
        .R(\clock_counter[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hDC)) 
    has_byte_i_1
       (.I0(has_byte_reg_1),
        .I1(has_byte0),
        .I2(has_byte),
        .O(has_byte_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    has_byte_i_3
       (.I0(has_byte_i_4_n_0),
        .I1(\rx_shift[9]_i_2_n_0 ),
        .I2(\bit_counter[3]_i_3_n_0 ),
        .I3(clock_counter_reg[0]),
        .I4(clock_counter_reg[4]),
        .I5(clock_counter_reg[1]),
        .O(has_byte0));
  LUT4 #(
    .INIT(16'h0004)) 
    has_byte_i_4
       (.I0(bit_counter[1]),
        .I1(bit_counter[0]),
        .I2(bit_counter[3]),
        .I3(bit_counter[2]),
        .O(has_byte_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    has_byte_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(has_byte_i_1_n_0),
        .Q(has_byte),
        .R(has_byte_reg_0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \rx_shift[9]_i_1 
       (.I0(\rx_shift[9]_i_2_n_0 ),
        .I1(\rx_shift[9]_i_3_n_0 ),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[1]),
        .I4(clock_counter_reg[4]),
        .I5(\bit_counter_reg[2]_0 ),
        .O(rx_shift0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \rx_shift[9]_i_2 
       (.I0(clock_counter_reg[3]),
        .I1(clock_counter_reg[2]),
        .I2(clock_counter_reg[8]),
        .I3(clock_counter_reg[7]),
        .O(\rx_shift[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \rx_shift[9]_i_3 
       (.I0(clock_counter_reg[10]),
        .I1(clock_counter_reg[9]),
        .I2(clock_counter_reg[6]),
        .I3(clock_counter_reg[5]),
        .O(\rx_shift[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [1]),
        .Q(\rx_shift_reg[8]_0 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [2]),
        .Q(\rx_shift_reg[8]_0 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [3]),
        .Q(\rx_shift_reg[8]_0 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [4]),
        .Q(\rx_shift_reg[8]_0 [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [5]),
        .Q(\rx_shift_reg[8]_0 [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [6]),
        .Q(\rx_shift_reg[8]_0 [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [7]),
        .Q(\rx_shift_reg[8]_0 [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg_n_0_[9] ),
        .Q(\rx_shift_reg[8]_0 [7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(serial_in_reg),
        .Q(\rx_shift_reg_n_0_[9] ),
        .R(\<const0> ));
endmodule

module uart_transmitter
   (serial_out_tx,
    \bit_counter_reg[3]_0 ,
    Q,
    \bit_counter_reg[1]_0 ,
    tx_fifo_empty_delayed,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output serial_out_tx;
  output \bit_counter_reg[3]_0 ;
  input [7:0]Q;
  input \bit_counter_reg[1]_0 ;
  input tx_fifo_empty_delayed;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [7:0]Q;
  wire bit_counter0;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter[2]_i_2_n_0 ;
  wire \bit_counter[3]_i_1_n_0 ;
  wire \bit_counter_reg[1]_0 ;
  wire \bit_counter_reg[3]_0 ;
  wire \bit_counter_reg_n_0_[0] ;
  wire \bit_counter_reg_n_0_[1] ;
  wire \bit_counter_reg_n_0_[2] ;
  wire \bit_counter_reg_n_0_[3] ;
  wire \clock_counter[10]_i_1__0_n_0 ;
  wire \clock_counter[10]_i_3_n_0 ;
  wire \clock_counter[10]_i_4_n_0 ;
  wire \clock_counter[10]_i_5_n_0 ;
  wire [10:0]clock_counter_reg;
  wire [10:0]p_0_in__0;
  wire [9:0]p_1_in;
  wire serial_out_tx;
  wire tx_fifo_empty_delayed;
  wire [0:0]tx_shift;
  wire \tx_shift[9]_i_1_n_0 ;
  wire \tx_shift_reg_n_0_[1] ;
  wire \tx_shift_reg_n_0_[2] ;
  wire \tx_shift_reg_n_0_[3] ;
  wire \tx_shift_reg_n_0_[4] ;
  wire \tx_shift_reg_n_0_[5] ;
  wire \tx_shift_reg_n_0_[6] ;
  wire \tx_shift_reg_n_0_[7] ;
  wire \tx_shift_reg_n_0_[8] ;
  wire \tx_shift_reg_n_0_[9] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \bit_counter[0]_i_1 
       (.I0(\bit_counter_reg_n_0_[0] ),
        .I1(bit_counter0),
        .I2(\bit_counter[2]_i_2_n_0 ),
        .O(\bit_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF5500AAFF5500AB)) 
    \bit_counter[1]_i_1 
       (.I0(bit_counter0),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\bit_counter_reg_n_0_[2] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter_reg_n_0_[1] ),
        .I5(tx_fifo_empty_delayed),
        .O(\bit_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0000AAA6)) 
    \bit_counter[2]_i_1 
       (.I0(\bit_counter_reg_n_0_[2] ),
        .I1(bit_counter0),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter[2]_i_2_n_0 ),
        .O(\bit_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \bit_counter[2]_i_2 
       (.I0(\bit_counter_reg[1]_0 ),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\bit_counter_reg_n_0_[2] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter_reg_n_0_[1] ),
        .I5(tx_fifo_empty_delayed),
        .O(\bit_counter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCC6CCCCCCC7)) 
    \bit_counter[3]_i_1 
       (.I0(bit_counter0),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\bit_counter_reg_n_0_[2] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter_reg_n_0_[1] ),
        .I5(tx_fifo_empty_delayed),
        .O(\bit_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \bit_counter[3]_i_2 
       (.I0(\bit_counter_reg[3]_0 ),
        .I1(\clock_counter[10]_i_4_n_0 ),
        .I2(\clock_counter[10]_i_3_n_0 ),
        .I3(clock_counter_reg[10]),
        .I4(clock_counter_reg[6]),
        .I5(clock_counter_reg[9]),
        .O(bit_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[1] ),
        .R(\bit_counter_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[3]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[3] ),
        .R(\bit_counter_reg[1]_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[0]_i_1 
       (.I0(clock_counter_reg[0]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    \clock_counter[10]_i_1__0 
       (.I0(clock_counter_reg[9]),
        .I1(clock_counter_reg[6]),
        .I2(clock_counter_reg[10]),
        .I3(\clock_counter[10]_i_3_n_0 ),
        .I4(\clock_counter[10]_i_4_n_0 ),
        .I5(\bit_counter[2]_i_2_n_0 ),
        .O(\clock_counter[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \clock_counter[10]_i_2 
       (.I0(clock_counter_reg[10]),
        .I1(clock_counter_reg[8]),
        .I2(clock_counter_reg[6]),
        .I3(\clock_counter[10]_i_5_n_0 ),
        .I4(clock_counter_reg[7]),
        .I5(clock_counter_reg[9]),
        .O(p_0_in__0[10]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \clock_counter[10]_i_3 
       (.I0(clock_counter_reg[1]),
        .I1(clock_counter_reg[0]),
        .I2(clock_counter_reg[5]),
        .I3(clock_counter_reg[7]),
        .O(\clock_counter[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \clock_counter[10]_i_4 
       (.I0(clock_counter_reg[3]),
        .I1(clock_counter_reg[2]),
        .I2(clock_counter_reg[4]),
        .I3(clock_counter_reg[8]),
        .O(\clock_counter[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \clock_counter[10]_i_5 
       (.I0(clock_counter_reg[4]),
        .I1(clock_counter_reg[3]),
        .I2(clock_counter_reg[2]),
        .I3(clock_counter_reg[1]),
        .I4(clock_counter_reg[0]),
        .I5(clock_counter_reg[5]),
        .O(\clock_counter[10]_i_5_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[1]_i_1 
       (.I0(clock_counter_reg[0]),
        .I1(clock_counter_reg[1]),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \clock_counter[2]_i_1 
       (.I0(clock_counter_reg[2]),
        .I1(clock_counter_reg[1]),
        .I2(clock_counter_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clock_counter[3]_i_1 
       (.I0(clock_counter_reg[3]),
        .I1(clock_counter_reg[2]),
        .I2(clock_counter_reg[1]),
        .I3(clock_counter_reg[0]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \clock_counter[4]_i_1 
       (.I0(clock_counter_reg[4]),
        .I1(clock_counter_reg[0]),
        .I2(clock_counter_reg[1]),
        .I3(clock_counter_reg[2]),
        .I4(clock_counter_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \clock_counter[5]_i_1 
       (.I0(clock_counter_reg[5]),
        .I1(clock_counter_reg[4]),
        .I2(clock_counter_reg[3]),
        .I3(clock_counter_reg[2]),
        .I4(clock_counter_reg[1]),
        .I5(clock_counter_reg[0]),
        .O(p_0_in__0[5]));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \clock_counter[6]_i_1 
       (.I0(\clock_counter[10]_i_5_n_0 ),
        .I1(clock_counter_reg[6]),
        .O(p_0_in__0[6]));
  (* \PinAttr:I2:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \clock_counter[7]_i_1 
       (.I0(clock_counter_reg[7]),
        .I1(\clock_counter[10]_i_5_n_0 ),
        .I2(clock_counter_reg[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \clock_counter[8]_i_1 
       (.I0(clock_counter_reg[8]),
        .I1(clock_counter_reg[6]),
        .I2(\clock_counter[10]_i_5_n_0 ),
        .I3(clock_counter_reg[7]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \clock_counter[9]_i_1 
       (.I0(clock_counter_reg[9]),
        .I1(clock_counter_reg[7]),
        .I2(\clock_counter[10]_i_5_n_0 ),
        .I3(clock_counter_reg[6]),
        .I4(clock_counter_reg[8]),
        .O(p_0_in__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[0]),
        .Q(clock_counter_reg[0]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[10]),
        .Q(clock_counter_reg[10]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[1]),
        .Q(clock_counter_reg[1]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[2]),
        .Q(clock_counter_reg[2]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[3]),
        .Q(clock_counter_reg[3]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[4]),
        .Q(clock_counter_reg[4]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[5]),
        .Q(clock_counter_reg[5]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[6]),
        .Q(clock_counter_reg[6]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[7]),
        .Q(clock_counter_reg[7]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[8]),
        .Q(clock_counter_reg[8]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[9]),
        .Q(clock_counter_reg[9]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_ptr[2]_i_3 
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .O(\bit_counter_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    serial_out_reg_i_1
       (.I0(tx_shift),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[2] ),
        .I4(\bit_counter_reg_n_0_[3] ),
        .O(serial_out_tx));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tx_shift[0]_i_1 
       (.I0(\tx_shift_reg_n_0_[1] ),
        .I1(\bit_counter[2]_i_2_n_0 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \tx_shift[1]_i_1 
       (.I0(Q[0]),
        .I1(p_1_in[9]),
        .I2(\bit_counter[2]_i_2_n_0 ),
        .I3(\tx_shift_reg_n_0_[2] ),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \tx_shift[2]_i_1 
       (.I0(Q[1]),
        .I1(p_1_in[9]),
        .I2(\bit_counter[2]_i_2_n_0 ),
        .I3(\tx_shift_reg_n_0_[3] ),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \tx_shift[3]_i_1 
       (.I0(Q[2]),
        .I1(p_1_in[9]),
        .I2(\bit_counter[2]_i_2_n_0 ),
        .I3(\tx_shift_reg_n_0_[4] ),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \tx_shift[4]_i_1 
       (.I0(Q[3]),
        .I1(p_1_in[9]),
        .I2(\bit_counter[2]_i_2_n_0 ),
        .I3(\tx_shift_reg_n_0_[5] ),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \tx_shift[5]_i_1 
       (.I0(Q[4]),
        .I1(p_1_in[9]),
        .I2(\bit_counter[2]_i_2_n_0 ),
        .I3(\tx_shift_reg_n_0_[6] ),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \tx_shift[6]_i_1 
       (.I0(Q[5]),
        .I1(p_1_in[9]),
        .I2(\bit_counter[2]_i_2_n_0 ),
        .I3(\tx_shift_reg_n_0_[7] ),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \tx_shift[7]_i_1 
       (.I0(Q[6]),
        .I1(p_1_in[9]),
        .I2(\bit_counter[2]_i_2_n_0 ),
        .I3(\tx_shift_reg_n_0_[8] ),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \tx_shift[8]_i_1 
       (.I0(Q[7]),
        .I1(p_1_in[9]),
        .I2(\bit_counter[2]_i_2_n_0 ),
        .I3(\tx_shift_reg_n_0_[9] ),
        .O(p_1_in[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \tx_shift[9]_i_1 
       (.I0(bit_counter0),
        .I1(\bit_counter[2]_i_2_n_0 ),
        .O(\tx_shift[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tx_shift[9]_i_2 
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(tx_fifo_empty_delayed),
        .I5(\bit_counter_reg[1]_0 ),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[9]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(tx_shift),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[9]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\tx_shift_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[9]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\tx_shift_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[9]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\tx_shift_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[9]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\tx_shift_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[9]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\tx_shift_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[9]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\tx_shift_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[9]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\tx_shift_reg_n_0_[7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[9]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\tx_shift_reg_n_0_[8] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[9]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\tx_shift_reg_n_0_[9] ),
        .R(\<const0> ));
endmodule

(* BAUD_RATE = "115200" *) (* B_PULSE_CNT_MAX = "200" *) (* B_SAMPLE_CNT_MAX = "62500" *) 
(* CLOCK_FREQ = "125000000" *) (* CYCLES_PER_SECOND = "125000000" *) (* ECO_CHECKSUM = "d83f1f35" *) 
(* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) (* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module z1top
   (CLK_125MHZ_FPGA,
    BUTTONS,
    SWITCHES,
    LEDS,
    AUD_PWM,
    AUD_SD,
    FPGA_SERIAL_RX,
    FPGA_SERIAL_TX);
  input CLK_125MHZ_FPGA;
  input [3:0]BUTTONS;
  input [1:0]SWITCHES;
  output [5:0]LEDS;
  output AUD_PWM;
  output AUD_SD;
  input FPGA_SERIAL_RX;
  output FPGA_SERIAL_TX;

  wire \<const0> ;
  wire \<const1> ;
  wire AUD_PWM;
  wire AUD_SD;
  wire [3:0]BUTTONS;
  wire [0:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA;
  wire CLK_125MHZ_FPGA_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire FPGA_SERIAL_RX;
  wire FPGA_SERIAL_RX_IBUF;
  wire FPGA_SERIAL_TX;
  wire FPGA_SERIAL_TX_OBUF;
  wire [5:0]LEDS;
  wire [1:0]SWITCHES;
  wire [0:0]SWITCHES_IBUF;
  wire bp_n_0;
  wire [7:0]din;
  wire entries;
  wire mem;
  wire mem_ctrl_n_0;
  wire mem_ctrl_n_10;
  wire mem_ctrl_n_11;
  wire mem_ctrl_n_12;
  wire mem_ctrl_n_3;
  wire mem_ctrl_n_5;
  wire mem_ctrl_n_6;
  wire mem_ctrl_n_7;
  wire mem_ctrl_n_8;
  wire mem_ctrl_n_9;
  wire on_chip_uart_n_2;
  wire on_chip_uart_n_3;
  wire rx_fifo_n_0;
  wire rx_fifo_n_1;
  wire rx_fifo_n_10;
  wire rx_fifo_n_11;
  wire rx_fifo_n_2;
  wire rx_fifo_n_3;
  wire rx_fifo_n_4;
  wire rx_fifo_n_5;
  wire rx_fifo_n_6;
  wire rx_fifo_n_7;
  wire rx_fifo_n_8;
  wire rx_fifo_n_9;
  wire switches_sync;
  wire tx_fifo_empty;
  wire tx_fifo_empty_delayed;
  wire tx_fifo_n_1;
  wire tx_fifo_n_10;
  wire tx_fifo_n_11;
  wire tx_fifo_n_12;
  wire tx_fifo_n_2;
  wire tx_fifo_n_4;
  wire tx_fifo_n_5;
  wire tx_fifo_n_6;
  wire tx_fifo_n_7;
  wire tx_fifo_n_8;
  wire tx_fifo_n_9;
  wire \uareceive/has_byte ;
  wire [0:0]wr_ptr;
  wire wr_ptr__0;

  OBUFT AUD_PWM_OBUF_inst
       (.I(\<const0> ),
        .O(AUD_PWM),
        .T(\<const1> ));
  OBUFT AUD_SD_OBUF_inst
       (.I(\<const0> ),
        .O(AUD_SD),
        .T(\<const1> ));
  IBUF \BUTTONS_IBUF[0]_inst 
       (.I(BUTTONS[0]),
        .O(BUTTONS_IBUF));
  BUFG CLK_125MHZ_FPGA_IBUF_BUFG_inst
       (.I(CLK_125MHZ_FPGA_IBUF),
        .O(CLK_125MHZ_FPGA_IBUF_BUFG));
  IBUF CLK_125MHZ_FPGA_IBUF_inst
       (.I(CLK_125MHZ_FPGA),
        .O(CLK_125MHZ_FPGA_IBUF));
  IBUF FPGA_SERIAL_RX_IBUF_inst
       (.I(FPGA_SERIAL_RX),
        .O(FPGA_SERIAL_RX_IBUF));
  OBUF FPGA_SERIAL_TX_OBUF_inst
       (.I(FPGA_SERIAL_TX_OBUF),
        .O(FPGA_SERIAL_TX));
  GND GND
       (.G(\<const0> ));
  OBUF \LEDS_OBUF[0]_inst 
       (.I(\<const0> ),
        .O(LEDS[0]));
  OBUF \LEDS_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(LEDS[1]));
  OBUF \LEDS_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(LEDS[2]));
  OBUF \LEDS_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(LEDS[3]));
  OBUF \LEDS_OBUF[4]_inst 
       (.I(\<const0> ),
        .O(LEDS[4]));
  OBUF \LEDS_OBUF[5]_inst 
       (.I(\<const0> ),
        .O(LEDS[5]));
  IBUF \SWITCHES_IBUF[0]_inst 
       (.I(SWITCHES[0]),
        .O(SWITCHES_IBUF));
  VCC VCC
       (.P(\<const1> ));
  button_parser bp
       (.BUTTONS_IBUF(BUTTONS_IBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .\genblk1[0].pulse_signal_reg[0] (bp_n_0));
  mem_controller mem_ctrl
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .E(entries),
        .\FSM_sequential_curr_state_reg[0]_0 (rx_fifo_n_2),
        .\FSM_sequential_curr_state_reg[0]_1 (bp_n_0),
        .Q({rx_fifo_n_4,rx_fifo_n_5,rx_fifo_n_6,rx_fifo_n_7,rx_fifo_n_8,rx_fifo_n_9,rx_fifo_n_10,rx_fifo_n_11}),
        .din({mem_ctrl_n_7,mem_ctrl_n_8,mem_ctrl_n_9,mem_ctrl_n_10,mem_ctrl_n_11,mem_ctrl_n_12}),
        .\entries_reg[1] (mem_ctrl_n_3),
        .\entries_reg[7] (tx_fifo_n_1),
        .mem(mem),
        .mem_reg(mem_ctrl_n_5),
        .mem_reg_0(mem_ctrl_n_6),
        .\rd_ptr_reg[2] (rx_fifo_n_3),
        .\rd_ptr_reg[2]_0 (rx_fifo_n_1),
        .switches_sync(switches_sync),
        .wr_ptr(wr_ptr),
        .wr_ptr__0(wr_ptr__0),
        .\wr_ptr_reg[0] (mem_ctrl_n_0),
        .\wr_ptr_reg[0]_0 (tx_fifo_n_2),
        .\wr_ptr_reg[0]_1 (tx_fifo_n_4));
  uart on_chip_uart
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .FPGA_SERIAL_RX_IBUF(FPGA_SERIAL_RX_IBUF),
        .FPGA_SERIAL_TX_OBUF(FPGA_SERIAL_TX_OBUF),
        .Q({tx_fifo_n_5,tx_fifo_n_6,tx_fifo_n_7,tx_fifo_n_8,tx_fifo_n_9,tx_fifo_n_10,tx_fifo_n_11,tx_fifo_n_12}),
        .\bit_counter_reg[1] (bp_n_0),
        .\bit_counter_reg[2] (on_chip_uart_n_3),
        .\bit_counter_reg[3] (on_chip_uart_n_2),
        .has_byte(\uareceive/has_byte ),
        .has_byte_reg(rx_fifo_n_0),
        .\rx_shift_reg[8] (din),
        .tx_fifo_empty_delayed(tx_fifo_empty_delayed));
  fifo rx_fifo
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .E(mem_ctrl_n_3),
        .dout({rx_fifo_n_4,rx_fifo_n_5,rx_fifo_n_6,rx_fifo_n_7,rx_fifo_n_8,rx_fifo_n_9,rx_fifo_n_10,rx_fifo_n_11}),
        .\dout_reg[7]_0 (din),
        .\entries_reg[0]_0 (rx_fifo_n_0),
        .\entries_reg[0]_1 (bp_n_0),
        .\entries_reg[0]_2 (on_chip_uart_n_3),
        .\entries_reg[1]_0 (rx_fifo_n_3),
        .\entries_reg[2]_0 (rx_fifo_n_2),
        .\entries_reg[7]_0 (rx_fifo_n_1),
        .has_byte(\uareceive/has_byte ));
  synchronizer__parameterized0 switch_sync
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .SWITCHES_IBUF(SWITCHES_IBUF),
        .switches_sync(switches_sync));
  fifo_0 tx_fifo
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .E(tx_fifo_n_1),
        .din({mem_ctrl_n_7,mem_ctrl_n_8,mem_ctrl_n_9,mem_ctrl_n_10,mem_ctrl_n_11,mem_ctrl_n_12}),
        .dout({tx_fifo_n_5,tx_fifo_n_6,tx_fifo_n_7,tx_fifo_n_8,tx_fifo_n_9,tx_fifo_n_10,tx_fifo_n_11,tx_fifo_n_12}),
        .\dout_reg[6]_0 (mem_ctrl_n_6),
        .\dout_reg[7]_0 (mem_ctrl_n_5),
        .\entries_reg[0]_0 (bp_n_0),
        .\entries_reg[1]_0 (tx_fifo_n_4),
        .\entries_reg[5]_0 (tx_fifo_n_2),
        .\entries_reg[7]_0 (entries),
        .mem(mem),
        .\rd_ptr_reg[2]_0 (on_chip_uart_n_2),
        .tx_fifo_empty(tx_fifo_empty),
        .wr_ptr__0(wr_ptr__0),
        .\wr_ptr_reg[0]_0 (wr_ptr),
        .\wr_ptr_reg[0]_1 (mem_ctrl_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fifo_empty_delayed_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_fifo_empty),
        .Q(tx_fifo_empty_delayed),
        .R(\<const0> ));
endmodule
