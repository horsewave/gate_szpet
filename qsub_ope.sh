#!/bin/bash

# Description:write your Description
# Editor:Bo Ma
# date:2019/10/21
# Email:mabo@ihep.ac.cn
# Tel:010-88235869
# Cell:15210606357

CPU_NUM=9047
i=9028
while(( ${i}<=$CPU_NUM ))
do
  qdel ${i}
  let i++
done
