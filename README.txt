"""""""""""""""""""""""""""""""""""""""""""""""
 Description: How to run GATE simulation for SZ-PET? 
 Editor:Bo Ma
 date:2020-03-30
 Email:mabo@ihep.ac.cn
 Tel:010-88235869
 Cell:15210606357
""""""""""""""""""""""""""""""""""""""""""""""""
1:This doc shows how to run GATE locally and using IHEP cluster, the detailed setup for GATE simulation can be found directely in the running macrso.

2: There is a bug for the following command:
 /gate/application/setTotalNumberOfPrimaries 100000
 althouth it will simulate the defined photon numbers, but the ratio from the source is not right.For example, if you use this command, and set the cylindrical phantom with the activity ration between the  backgrond and the spheres of 1:8, the actuall emitted photon ratios from these sources is not right. There is way too much photons coming out from the spheres. So don't use this command when you want to assess your image quantitivly.

 3: This is for the noise simulation for human PET. All the noise signals are generated in the crystals, with the same event ID of -2.

