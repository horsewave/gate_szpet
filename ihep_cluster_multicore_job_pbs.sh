#!/bin/bash
# 
#Discription: How to use the IHEP cluster to submit your job
#Editor: Bo Ma
# 2020-03-28
#Note: for pbs, all the director must be the absolute directory. You can not use 
# relative path whith is really ridiculous.

# The path for single job submition.
#Note: you have to have the single job script which will save you a lot of time.
PATH_GATE_MACRO="/data/simulation/home/mabo/software/src/gate/ihep_human_tof_pet_sz"
SINGLE_CORE_JOB_SH="/ihep_cluster_singlecore_job_pbs.sh"
PATH_SINGLE_CORE_JOB_SH=$PATH_GATE_MACRO$SINGLE_CORE_JOB_SH

#set the cpu cores you want to use.
CPU_NUM=18
i=3
while(( ${i}<=$CPU_NUM ))
do
# NAME 表示要传到oneJob.sh里的文件名参数
    RUN_NUMBER="${i}"
    #echo $NAME
    sleep 2s
    #qsub -v RUN_NUMBER=$RUN_NUMBER,TIME_RES=$TIME_RES $PATH_GATE_MACRO"/ihep_cluster_singlecore_job_pbs.sh"
    
    #Submit your job with qsub, you can pass varialbes to your script.
    #NOTE: the varialbles can not be path, maybe I miss it.
    qsub -v RUN_NUMBER=$RUN_NUMBER $PATH_SINGLE_CORE_JOB_SH
    let i++
done

