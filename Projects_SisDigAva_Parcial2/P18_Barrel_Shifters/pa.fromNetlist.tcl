
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name P18_Barrel_Shifters -dir "D:/Projects_SisDigAva/P18_Barrel_Shifters/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Projects_SisDigAva/P18_Barrel_Shifters/Barrel_Shifter.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Projects_SisDigAva/P18_Barrel_Shifters} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Barrel_Shifter.ucf" [current_fileset -constrset]
add_files [list {Barrel_Shifter.ucf}] -fileset [get_property constrset [current_run]]
link_design
