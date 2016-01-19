
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name P04_BinaryToGrey -dir "C:/Projectos_VHDL/P04_BinaryToGrey/planAhead_run_1" -part xc3s100ecp132-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "BinaryToGrey.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {BinaryToGrey.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top BinaryToGrey $srcset
add_files [list {BinaryToGrey.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-5
