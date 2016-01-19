
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name P06_Mux_4to1 -dir "D:/Projects_SisDigAva/P06_Mux_4to1/planAhead_run_1" -part xc3s200ft256-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Projects_SisDigAva/P06_Mux_4to1/Mux_4to1.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Projects_SisDigAva/P06_Mux_4to1} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Mux_4to1.ucf" [current_fileset -constrset]
add_files [list {Mux_4to1.ucf}] -fileset [get_property constrset [current_run]]
link_design
