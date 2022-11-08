# Begin_DVE_Session_Save_Info
# DVE reload session
# Saved on Mon Oct 3 16:05:03 2022
# Designs open: 1
#   V1: /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab4/sim/fsm_tb.vpd
# Toplevel windows open: 2
# 	TopLevel.1
# 	TopLevel.2
#   Source.1: fsm_tb
#   Wave.1: 20 signals
#   Group count = 1
#   Group DUT signal count = 20
# End_DVE_Session_Save_Info

# DVE version: P-2019.06_Full64
# DVE build date: May 31 2019 21:08:21


#<Session mode="Reload" path="/home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab4/DVEfiles/session.tcl" type="Debug">

gui_set_loading_session_type Reload
gui_continuetime_set

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all
gui_clear_window -type Wave
gui_clear_window -type List

# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,10,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.1

set TopLevel.1 TopLevel.1

# Docked window settings
set HSPane.1 HSPane.1
set Hier.1 Hier.1
set DLPane.1 DLPane.1
set Data.1 Data.1
set Console.1 Console.1
gui_sync_global -id ${TopLevel.1} -option true

# MDI window settings
set Source.1 Source.1
gui_update_layout -id ${Source.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}

# End MDI window settings


# Create and position top-level window: TopLevel.2

set TopLevel.2 TopLevel.2

# Docked window settings
gui_sync_global -id ${TopLevel.2} -option true

# MDI window settings
set Wave.1 Wave.1
gui_update_layout -id ${Wave.1} {{left 0} {top 0} {width 1272} {height 817} {show_state normal} {dock_state undocked} {dock_on_new_line false} {child_wave_left 367} {child_wave_right 895} {child_wave_colname 181} {child_wave_colvalue 182} {child_wave_col1 0} {child_wave_col2 1}}

# End MDI window settings


#</WindowLayout>

#<Database>

# DVE Open design session: 

if { ![gui_is_db_opened -db {/home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab4/sim/fsm_tb.vpd}] } {
	gui_open_db -design V1 -file /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab4/sim/fsm_tb.vpd -nosource
}
gui_set_precision 10ps
gui_set_time_units 10ps
#</Database>

# DVE Global setting session: 


# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups
gui_load_child_values {fsm_tb.DUT}


set _session_group_4 DUT
gui_sg_create "$_session_group_4"
set DUT "$_session_group_4"

gui_sg_addsignal -group "$_session_group_4" { fsm_tb.DUT.clk fsm_tb.DUT.rst fsm_tb.DUT.buttons fsm_tb.DUT.leds fsm_tb.DUT.fcw fsm_tb.DUT.leds_state fsm_tb.DUT.addr fsm_tb.DUT.wr_en fsm_tb.DUT.rd_en fsm_tb.DUT.d_in fsm_tb.DUT.d_out fsm_tb.DUT.CurrentState fsm_tb.DUT.NextState fsm_tb.DUT.cycles fsm_tb.DUT.CYCLES_PER_SECOND fsm_tb.DUT.WIDTH fsm_tb.DUT.REGULAR_PLAY fsm_tb.DUT.REVERSE_PLAY fsm_tb.DUT.PAUSED fsm_tb.DUT.EDIT }
gui_set_radix -radix {decimal} -signals {V1:fsm_tb.DUT.fcw}
gui_set_radix -radix {unsigned} -signals {V1:fsm_tb.DUT.fcw}
gui_set_radix -radix {decimal} -signals {V1:fsm_tb.DUT.CYCLES_PER_SECOND}
gui_set_radix -radix {twosComplement} -signals {V1:fsm_tb.DUT.CYCLES_PER_SECOND}
gui_set_radix -radix {decimal} -signals {V1:fsm_tb.DUT.WIDTH}
gui_set_radix -radix {twosComplement} -signals {V1:fsm_tb.DUT.WIDTH}
gui_set_radix -radix {decimal} -signals {V1:fsm_tb.DUT.REGULAR_PLAY}
gui_set_radix -radix {unsigned} -signals {V1:fsm_tb.DUT.REGULAR_PLAY}
gui_set_radix -radix {decimal} -signals {V1:fsm_tb.DUT.REVERSE_PLAY}
gui_set_radix -radix {unsigned} -signals {V1:fsm_tb.DUT.REVERSE_PLAY}
gui_set_radix -radix {decimal} -signals {V1:fsm_tb.DUT.PAUSED}
gui_set_radix -radix {unsigned} -signals {V1:fsm_tb.DUT.PAUSED}
gui_set_radix -radix {decimal} -signals {V1:fsm_tb.DUT.EDIT}
gui_set_radix -radix {unsigned} -signals {V1:fsm_tb.DUT.EDIT}

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 4432



# Save global setting...

# Wave/List view global setting
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 


# Hier 'Hier.1'
gui_show_window -window ${Hier.1}
gui_list_set_filter -id ${Hier.1} -list { {Package 1} {All 0} {Process 1} {VirtPowSwitch 0} {UnnamedProcess 1} {UDP 0} {Function 1} {Block 1} {SrsnAndSpaCell 0} {OVA Unit 1} {LeafScCell 1} {LeafVlgCell 1} {Interface 1} {LeafVhdCell 1} {$unit 1} {NamedBlock 1} {Task 1} {VlgPackage 1} {ClassDef 1} {VirtIsoCell 0} }
gui_list_set_filter -id ${Hier.1} -text {*} -force
gui_change_design -id ${Hier.1} -design V1
catch {gui_list_expand -id ${Hier.1} fsm_tb}
catch {gui_list_select -id ${Hier.1} {fsm_tb.DUT}}
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {*}
gui_list_show_data -id ${Data.1} {fsm_tb.DUT}
gui_view_scroll -id ${Data.1} -vertical -set 0
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_open_source -id ${Source.1}  -replace -active fsm_tb /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab4/sim/fsm_tb.v
gui_view_scroll -id ${Source.1} -vertical -set 45
gui_src_set_reusable -id ${Source.1}

# View 'Wave.1'
gui_wv_sync -id ${Wave.1} -switch false
set groupExD [gui_get_pref_value -category Wave -key exclusiveSG]
gui_set_pref_value -category Wave -key exclusiveSG -value {false}
set origWaveHeight [gui_get_pref_value -category Wave -key waveRowHeight]
gui_list_set_height -id Wave -height 25
set origGroupCreationState [gui_list_create_group_when_add -wave]
gui_list_create_group_when_add -wave -disable
gui_wv_zoom_timerange -id ${Wave.1} 4392 4503
gui_list_add_group -id ${Wave.1} -after {New Group} {DUT}
gui_seek_criteria -id ${Wave.1} {Any Edge}



gui_set_env TOGGLE::DEFAULT_WAVE_WINDOW ${Wave.1}
gui_set_pref_value -category Wave -key exclusiveSG -value $groupExD
gui_list_set_height -id Wave -height $origWaveHeight
if {$origGroupCreationState} {
	gui_list_create_group_when_add -wave -enable
}
if { $groupExD } {
 gui_msg_report -code DVWW028
}
gui_list_set_filter -id ${Wave.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Wave.1} -text {*}
gui_list_set_insertion_bar  -id ${Wave.1} -group DUT  -position in

gui_marker_move -id ${Wave.1} {C1} 4432
gui_view_scroll -id ${Wave.1} -vertical -set 0
gui_show_grid -id ${Wave.1} -enable false
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
	gui_set_active_window -window ${HSPane.1}
}
if {[gui_exist_window -window ${TopLevel.2}]} {
	gui_set_active_window -window ${TopLevel.2}
	gui_set_active_window -window ${Wave.1}
}
#</Session>

