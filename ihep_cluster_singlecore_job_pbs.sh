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
TIME_RES=30
#LOG name 
RUN_LOG_PART=$PATH_GATE_MACRO"/results/GATE_log"
RUN_LOG=$RUN_LOG_PART"_"$TIME_RES"_ps"$RUN_NUMBER

#the output name of your simulation.Also, mustbe absolute path.
OUTPUT_NAME_PART="/results/human_jdpet_tof_"
OUTPUT_NAME=$PATH_GATE_MACRO$OUTPUT_NAME_PART$TIME_RES"ps_"$RUN_NUMBER

Gate -a [RUN_NUMBER,$RUN_NUMBER][TOF,$TIME_RES][PATH_GATE_MACRO,$PATH_GATE_MACRO][OUTPUT_NAME,$OUTPUT_NAME]  $PATH_GATE_MAIN_MACRO  >>$RUN_LOG



