 #!/bin/bash
 #Para este experimento planteo diferentes proporciones en la interpolacion entre los modelos castellano/ingles
mkdir wav_d_exp
for i in {1..9}
do
   cmd="./htlang -m models/cmu_us_arctic_slt.htsvoice -m models/loc1_pal.htsvoice -o wav_d_exp/interpolacion$i-$((10-$i)).wav -l labs/sus_p_00004.lab -d '0.$i 0.$((10-$i))' -p '0.6 0.4' -g '0.6 0.4'"
   echo $cmd
   eval $cmd
done