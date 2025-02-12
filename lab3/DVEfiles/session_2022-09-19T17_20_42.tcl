# Begin_DVE_Session_Save_Info
# DVE reload session
# Saved on Mon Sep 19 17:20:42 2022
# Designs open: 1
#   V1: /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab3/sim/counter_tb.vpd
# Toplevel windows open: 3
# 	TopLevel.1
# 	TopLevel.2
# 	TopLevel.3
#   Source.1: counter_tb
#   Wave.1: 7 signals
#   Wave.2: 7 signals
#   Group count = 2
#   Group Group1 signal count = 7
#   Group Group2 signal count = 7
# End_DVE_Session_Save_Info

# DVE version: P-2019.06_Full64
# DVE build date: May 31 2019 21:08:21


#<Session mode="Reload" path="/home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab3/DVEfiles/session.tcl" type="Debug">

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
gui_update_layout -id ${Wave.1} {{left 0} {top 0} {width 1116} {height 438} {show_state normal} {dock_state undocked} {dock_on_new_line false} {child_wave_left 322} {child_wave_right 784} {child_wave_colname 159} {child_wave_colvalue 159} {child_wave_col1 0} {child_wave_col2 1}}

# End MDI window settings


# Create and position top-level window: TopLevel.3

set TopLevel.3 TopLevel.3

# Docked window settings
gui_sync_global -id ${TopLevel.3} -option true

# MDI window settings
set Wave.2 Wave.2
gui_update_layout -id ${Wave.2} {{left 0} {top 0} {width 1121} {height 438} {show_state normal} {dock_state undocked} {dock_on_new_line false} {child_wave_left 323} {child_wave_right 788} {child_wave_colname 160} {child_wave_colvalue 159} {child_wave_col1 0} {child_wave_col2 1}}

# End MDI window settings


#</WindowLayout>

#<Database>

# DVE Open design session: 

if { ![gui_is_db_opened -db {/home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab3/sim/counter_tb.vpd}] } {
	gui_open_db -design V1 -file /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab3/sim/counter_tb.vpd -nosource
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
gui_load_child_values {counter_tb.ctr}


set _session_group_4 Group1
gui_sg_create "$_session_group_4"
set Group1 "$_session_group_4"

gui_sg_addsignal -group "$_session_group_4" { counter_tb.ctr.clk counter_tb.ctr.buttons counter_tb.ctr.leds counter_tb.ctr.counter counter_tb.ctr.increment counter_tb.ctr.cycles_counter counter_tb.ctr.CYCLES_PER_SECOND }
gui_set_radix -radix {decimal} -signals {V1:counter_tb.ctr.counter}
gui_set_radix -radix {unsigned} -signals {V1:counter_tb.ctr.counter}
gui_set_radix -radix {binary} -signals {V1:counter_tb.ctr.increment}
gui_set_radix -radix {decimal} -signals {V1:counter_tb.ctr.cycles_counter}
gui_set_radix -radix {unsigned} -signals {V1:counter_tb.ctr.cycles_counter}
gui_set_radix -radix {decimal} -signals {V1:counter_tb.ctr.CYCLES_PER_SECOND}
gui_set_radix -radix {twosComplement} -signals {V1:counter_tb.ctr.CYCLES_PER_SECOND}

set _session_group_5 Group2
gui_sg_create "$_session_group_5"
set Group2 "$_session_group_5"

gui_sg_addsignal -group "$_session_group_5" { counter_tb.ctr.clk counter_tb.ctr.buttons counter_tb.ctr.leds counter_tb.ctr.counter counter_tb.ctr.increment counter_tb.ctr.cycles_counter counter_tb.ctr.CYCLES_PER_SECOND }
gui_set_radix -radix {decimal} -signals {V1:counter_tb.ctr.counter}
gui_set_radix -radix {unsigned} -signals {V1:counter_tb.ctr.counter}
gui_set_radix -radix {binary} -signals {V1:counter_tb.ctr.increment}
gui_set_radix -radix {decimal} -signals {V1:counter_tb.ctr.cycles_counter}
gui_set_radix -radix {unsigned} -signals {V1:counter_tb.ctr.cycles_counter}
gui_set_radix -radix {decimal} -signals {V1:counter_tb.ctr.CYCLES_PER_SECOND}
gui_set_radix -radix {twosComplement} -signals {V1:counter_tb.ctr.CYCLES_PER_SECOND}

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 12400



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
catch {gui_list_expand -id ${Hier.1} counter_tb}
catch {gui_list_select -id ${Hier.1} {counter_tb.ctr}}
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {*}
gui_list_show_data -id ${Data.1} {counter_tb.ctr}
gui_show_window -window ${Data.1}
catch { gui_list_select -id ${Data.1} {counter_tb.ctr.clk counter_tb.ctr.buttons counter_tb.ctr.leds counter_tb.ctr.counter counter_tb.ctr.increment counter_tb.ctr.cycles_counter counter_tb.ctr.CYCLES_PER_SECOND }}
gui_view_scroll -id ${Data.1} -vertical -set 0
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_open_source -id ${Source.1}  -replace -active counter_tb /home/cc/eecs151/fa22/class/eecs151-adj/fpga_labs_fa22/lab3/sim/counter_tb.v
gui_view_scroll -id ${Source.1} -vertical -set 90
gui_src_set_reusable -id ${Source.1}

# View 'Wave.1'
gui_wv_sync -id ${Wave.1} -switch false
set groupExD [gui_get_pref_value -category Wave -key exclusiveSG]
gui_set_pref_value -category Wave -key exclusiveSG -value {false}
set origWaveHeight [gui_get_pref_value -category Wave -key waveRowHeight]
gui_list_set_height -id Wave -height 25
set origGroupCreationState [gui_list_create_group_when_add -wave]
gui_list_create_group_when_add -wave -disable
gui_wv_zoom_timerange -id ${Wave.1} 0 24400
gui_list_add_group -id ${Wave.1} -after {New Group} {Group1}
gui_list_select -id ${Wave.1} {counter_tb.ctr.CYCLES_PER_SECOND }
gui_seek_criteria -id ${Wave.1} {Any Edge}


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
gui_list_set_insertion_bar  -id ${Wave.1} -group Group1  -position in

gui_marker_move -id ${Wave.1} {C1} 12400
gui_view_scroll -id ${Wave.1} -vertical -set 0
gui_show_grid -id ${Wave.1} -enable false

# View 'Wave.2'
gui_wv_sync -id ${Wave.2} -switch false
set groupExD [gui_get_pref_value -category Wave -key exclusiveSG]
gui_set_pref_value -category Wave -key exclusiveSG -value {false}
set origWaveHeight [gui_get_pref_value -category Wave -key waveRowHeight]
gui_list_set_height -id Wave -height 25
set origGroupCreationState [gui_list_create_group_when_add -wave]
gui_list_create_group_when_add -wave -disable
gui_wv_zoom_timerange -id ${Wave.2} 0 24528
gui_list_add_group -id ${Wave.2} -after {New Group} {Group2}
gui_list_expand -id ${Wave.2} counter_tb.ctr.leds
gui_list_select -id ${Wave.2} {counter_tb.ctr.counter }
gui_seek_criteria -id ${Wave.2} {Any Edge}



gui_set_env TOGGLE::DEFAULT_WAVE_WINDOW ${Wave.2}
gui_set_pref_value -category Wave -key exclusiveSG -value $groupExD
gui_list_set_height -id Wave -height $origWaveHeight
if {$origGroupCreationState} {
	gui_list_create_group_when_add -wave -enable
}
if { $groupExD } {
 gui_msg_report -code DVWW028
}
gui_list_set_filter -id ${Wave.2} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Wave.2} -text {*}
gui_list_set_insertion_bar  -id ${Wave.2} -group Group2  -position in

gui_marker_move -id ${Wave.2} {C1} 12400
gui_view_scroll -id ${Wave.2} -vertical -set 0
gui_show_grid -id ${Wave.2} -enable false
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.2}]} {
	gui_set_active_window -window ${TopLevel.2}
	gui_set_active_window -window ${Wave.1}
}
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
	gui_set_active_window -window ${Console.1}
}
if {[gui_exist_window -window ${TopLevel.3}]} {
	gui_set_active_window -window ${TopLevel.3}
	gui_set_active_window -window ${Wave.2}
}
#</Session>

