
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name project_work3 -dir "C:/2020020910019/project_work3/planAhead_run_2" -part xc3s100ecp132-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "top99.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {counter10.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {top99.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top top99 $srcset
add_files [list {top99.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-5
