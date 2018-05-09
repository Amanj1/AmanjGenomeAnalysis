#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J RNA_mapping_TopHat
#SBATCH --mail-type=ALL
#SBATCH --mail-user amanj.bajalan.6489@student.uu.se

# Load modules
module load bioinfo-tools
module load tophat/2.1.1

# Commands

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719013_P_thout sel2_SRR1719013_1P.fq sel2_SRR1719013_2P.fq
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719013_U_thout sel2_SRR1719013_1U.fq sel2_SRR1719013_2U.fq

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719204_trim_P_thout sel2_SRR1719204.trim_1P.fastq sel2_SRR1719204.trim_2P.fastq
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719204_trim_U_thout sel2_SRR1719204.trim_1U.fastq sel2_SRR1719204.trim_2U.fastq

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719206_trim_P_thout sel2_SRR1719206.trim_1P.fastq sel2_SRR1719206.trim_2P.fastq  
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719206_trim_U_thout sel2_SRR1719206.trim_1U.fastq sel2_SRR1719206.trim_2U.fastq 

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719207_trim_P_thout sel2_SRR1719207.trim_1P.fastq sel2_SRR1719207.trim_2P.fastq
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719207_trim_U_thout sel2_SRR1719207.trim_1U.fastq sel2_SRR1719207.trim_2U.fastq

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719208_trim_P_thout sel2_SRR1719208.trim_1P.fastq sel2_SRR1719208.trim_2P.fastq
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719208_trim_U_thout sel2_SRR1719208.trim_1U.fastq sel2_SRR1719208.trim_2U.fastq

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719209_trim_P_thout sel2_SRR1719209.trim_1P.fastq sel2_SRR1719209.trim_2P.fastq 
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719209_trim_U_thout sel2_SRR1719209.trim_1U.fastq sel2_SRR1719209.trim_2U.fastq 

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719014_trim_P_thout sel2_SRR1719014.trim_1P.fastq sel2_SRR1719014.trim_2P.fastq 
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719014_trim_U_thout sel2_SRR1719014.trim_1U.fastq sel2_SRR1719014.trim_2U.fastq 

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719015_trim_P_thout sel2_SRR1719015.trim_1P.fastq sel2_SRR1719015.trim_2P.fastq
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719015_trim_U_thout sel2_SRR1719015.trim_1U.fastq sel2_SRR1719015.trim_2U.fastq

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719016_trim_P_thout sel2_SRR1719016.trim_1P.fastq sel2_SRR1719016.trim_2P.fastq
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719016_trim_U_thout sel2_SRR1719016.trim_1U.fastq sel2_SRR1719016.trim_2U.fastq 

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719017_trim_P_thout sel2_SRR1719017.trim_1P.fastq sel2_SRR1719017.trim_2P.fastq
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719017_trim_U_thout sel2_SRR1719017.trim_1U.fastq sel2_SRR1719017.trim_2U.fastq 

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719018_trim_P_thout sel2_SRR1719018.trim_1P.fastq sel2_SRR1719018.trim_2P.fastq 
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719018_trim_U_thout sel2_SRR1719018.trim_1U.fastq sel2_SRR1719018.trim_2U.fastq

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719211_trim_P_thout sel2_SRR1719211.trim_1P.fastq sel2_SRR1719211.trim_2P.fastq
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719211_trim_U_thout sel2_SRR1719211.trim_1U.fastq sel2_SRR1719211.trim_2U.fastq

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719212_trim_P_thout sel2_SRR1719212.trim_1P.fastq sel2_SRR1719212.trim_2P.fastq
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719212_trim_U_thout sel2_SRR1719212.trim_1U.fastq sel2_SRR1719212.trim_2U.fastq 

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719213_trim_P_thout sel2_SRR1719213.trim_1P.fastq sel2_SRR1719213.trim_2P.fastq
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719213_trim_U_thout sel2_SRR1719213.trim_1U.fastq sel2_SRR1719213.trim_2U.fastq
 
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719214_trim_P_thout sel2_SRR1719214.trim_1P.fastq sel2_SRR1719214.trim_2P.fastq
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719214_trim_U_thout sel2_SRR1719214.trim_1U.fastq sel2_SRR1719214.trim_2U.fastq

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719241_trim_P_thout sel2_SRR1719241.trim_1P.fastq sel2_SRR1719241.trim_2P.fastq
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719241_trim_U_thout sel2_SRR1719241.trim_1U.fastq sel2_SRR1719241.trim_2U.fastq

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719242_trim_P_thout sel2_SRR1719242.trim_1P.fastq sel2_SRR1719242.trim_2P.fastq
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719242_trim_U_thout sel2_SRR1719242.trim_1U.fastq sel2_SRR1719242.trim_2U.fastq

tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719266_trim_P_thout sel2_SRR1719266.trim_1P.fastq sel2_SRR1719266.trim_2P.fastq
tophat -p 2 -r 200 -G sel2_NW_015504334.fna -o tophat_out_dir/sel2_SRR1719266_trim_U_thout sel2_SRR1719266.trim_1U.fastq sel2_SRR1719266.trim_2U.fastq


   
  
  
  

 

 






















