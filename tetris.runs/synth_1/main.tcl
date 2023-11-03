# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.cache/wt [current_project]
set_property parent.project_path C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/Oled_Display.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/T_to_m.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/block_color.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/flexi_clock.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/get_coords.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/oled_to_grid_coords.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/pix_index_to_rowcol.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/show_grid.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/tetrimino.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/main.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/yyx_to_grid_coords.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/new/display_tetrimino.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/block_spawn.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/currentblock.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/grid_to_pix_coords.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/nextblock.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/rng_block.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/new/slow_drop.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/new/get_next_state.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/tetris.srcs/sources_1/new/T_to_m.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/tetris.srcs/sim_1/new/sim_tetri.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/tetris.srcs/sources_1/new/pix_to_vertical_rowcol.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/tetris.srcs/sources_1/new/block_color.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/tetris.srcs/sources_1/new/get_coords.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/tetris.srcs/sources_1/new/Oled_Display.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/tetris.srcs/sources_1/new/show_grid.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/tetris.srcs/sources_1/new/flexi_clock.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/tetris.srcs/sources_1/new/oled_to_grid_coords.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/tetris.srcs/sources_1/new/tetrimino.v
  C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/sources_1/imports/tetris.srcs/sources_1/new/main.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/constrs_1/new/Constraint.xdc
set_property used_in_implementation false [get_files C:/Users/Administrator/Desktop/Yongjing_desktop_backup/NUS_Studies/Y2S1/EE2026/Lab/Tetris_EE2026_/tetris.srcs/constrs_1/new/Constraint.xdc]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top main -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef main.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file main_utilization_synth.rpt -pb main_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
