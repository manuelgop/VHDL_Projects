
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name P02_Mayority_Detector_VHDL -dir "D:/Projects_SisDigAva/P02_Mayority_Detector_VHDL/planAhead_run_1" -part xc3s100ecp132-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Projects_SisDigAva/P02_Mayority_Detector_VHDL/Mayority_Detector.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Projects_SisDigAva/P02_Mayority_Detector_VHDL} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Mayority_Detector.ucf" [current_fileset -constrset]
add_files [list {Mayority_Detector.ucf}] -fileset [get_property constrset [current_run]]
link_design
