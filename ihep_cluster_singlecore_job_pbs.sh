
#!/bin/bash

# """""""""""""""""""""""""""""""""""""""""""""""
 # Description: How to run GATE simulation for JD-PET?
 # Editor:Bo Ma
 # date:2020-03-30
 # Email:mabo@ihep.ac.cn
 # Tel:010-88235869
 # Cell:15210606357
# """"""""""""""""""""""""""""""""""""""""""""""""


## set your job name
#PBS -N human_tof_simu_sz
## set how many core you want use, this is the single job script, on both set to 1.
#PBS -l nodes=1:ppn=1

# PATH of your scripts.
#this parameters is also used inside the GATE main macros. 
#note: you have to use the absolute path in your GATE macros.So pass this parameter.
PATH_GATE_MACRO="/data/simulation/home/mabo/software/src/gate/ihep_human_tof_pet_sz"
GATE_MAIN_MACRO="/main_human_szpet_tof_multi_cpu.mac"
PATH_GATE_MAIN_MACRO=$PATH_GATE_MACRO$GATE_MAIN_MACRO

#Time resolution for TOF which is also a variable in the digitizer.mac.
TIME_RES=0
# GAMMA_NUM=20000000

#LOG name 
RUN_LOG_PART=$PATH_GATE_MACRO"/results/GATE_log"
RUN_LOG=$RUN_LOG_PART"_"$TIME_RES"_ps_"$RUN_NUMBER

#the output name of your simulation.Also, mustbe absolute path.
#OUTPUT_NAME_PART="/results/human_szpet_point_source_tof_"
# OUTPUT_NAME_PART="/results/human_szpet_point_source_offset_5cm_tof_"
# OUTPUT_NAME_PART="/results/human_szpet_point_source_central_single_slice_cry_len_15mm_ew_50kev_tof_"
# OUTPUT_NAME_PART="/results/human_szpet_derenzo_source_cry_len_15mm_ew_50kev_tof_"
# OUTPUT_NAME_PART="/results/chai_derenzo_source_cry_len_5mm_ew_50kev_tof_"
# OUTPUT_NAME_PART="/results/xuq_derenzo_source_cry_len_15mm_ew_50kev_tof_"
OUTPUT_NAME_PART="/results/cyl_to_sphere_1to8_cry_len_5mm_ew_350kev_noise_dtlambda_244ns_tof_"
# OUTPUT_NAME_PART="/results/cyl_to_sphere_1to8_cry_len_5mm_ew_50kev_noise_dtlambda_null_tof_"
# OUTPUT_NAME_PART="/results/human_szpet_cyl_to_sphere_1to8_cry_len_20mm_ew_350kev_tof_"
OUTPUT_NAME=$PATH_GATE_MACRO$OUTPUT_NAME_PART$TIME_RES"ps_"$RUN_NUMBER

 # Gate -a [RUN_NUMBER,$RUN_NUMBER][TOF,$TIME_RES][PATH_GATE_MACRO,$PATH_GATE_MACRO][OUTPUT_NAME,$OUTPUT_NAME][GAMMA_NUM,$GAMMA_NUM]  $PATH_GATE_MAIN_MACRO  >>$RUN_LOG
 Gate -a [RUN_NUMBER,$RUN_NUMBER][TOF,$TIME_RES][PATH_GATE_MACRO,$PATH_GATE_MACRO][OUTPUT_NAME,$OUTPUT_NAME]  $PATH_GATE_MAIN_MACRO  >>$RUN_LOG



