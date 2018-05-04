#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J Quast
#SBATCH --mail-type=ALL
#SBATCH --mail-user amanj.bajalan.6489@student.uu.se

# Load modules
module load bioinfo-tools
module load quast/4.5.4

# Commands

quast.py -o quast_results -R sel2_NW_015504334.fna /home/amanj/amanj/WGS/soapdenovoK49_result.contig


   
  
  
  

 

 























