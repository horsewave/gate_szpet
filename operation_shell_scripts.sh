#!/bin/bash

# Description:write your Description
# Editor:Bo Ma
# date:2020-03-31
# Email:mabo@ihep.ac.cn
# Tel:010-88235869
# Cell:15210606357

####################copy gate results from cluster to local##############################
 # scp -v  mabo@192.168.180.21:/data/simulation/home/mabo/software/src/gate/ihep_human_tof_pet_sz/results/cyl_sphere_activ_ration_1to8_tof_200ps/*.dat  ./cyl_sphere_activ_ration_1to8_tof_200ps/

###########find and delete recursivly########################
# find -type f -name '*.dat' -exec rm {} \;

####################copy gate macros from local to ihep cluster ##############################
  scp -v  * mabo@192.168.180.21:/data/simulation/home/mabo/software/src/gate/ihep_human_tof_pet_sz/

#################### operations in ihep cluster ##############################

# ## remove all gate macros in gate_macros
# rm  gate_macros/*
#
# ## copy the new macros to  gate_macros
# cp *  gate_macros/
#
# # # copy the new  gate_macros to results
# cp -r gate_macros  results/gate_macros_200ps_point_source_offset_5cm
#
#
# # ## remove all gate macros
# # rm *
# #



