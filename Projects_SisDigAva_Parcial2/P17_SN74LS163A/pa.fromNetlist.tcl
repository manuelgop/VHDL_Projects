
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name P17_SN74LS163A -dir "D:/Projects_SisDigAva/P17_SN74LS163A/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Projects_SisDigAva/P17_SN74LS163A/SN74LS163A.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Projects_SisDigAva/P17_SN74LS163A} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "SN74LS163A.ucf" [current_fileset -constrset]
add_files [list {SN74LS163A.ucf}] -fileset [get_property constrset [current_run]]
link_design
