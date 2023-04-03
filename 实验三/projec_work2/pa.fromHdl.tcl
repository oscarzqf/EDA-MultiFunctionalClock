
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name projec_work2 -dir "C:/2020020910019/projec_work2/planAhead_run_4" -part xc3s100ecp132-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "work_2.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {work_2.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top work_2 $srcset
add_files [list {work_2.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-5
