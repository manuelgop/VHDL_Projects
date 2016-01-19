
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name P008b_Comparator -dir "D:/Projects_SisDigAva/P008b_Comparator/planAhead_run_2" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Projects_SisDigAva/P008b_Comparator/Comparator.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Projects_SisDigAva/P008b_Comparator} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Comparator.ucf" [current_fileset -constrset]
add_files [list {Comparator.ucf}] -fileset [get_property constrset [current_run]]
link_design
