#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 07:00:00
#SBATCH -J Maker2_4th_RUN
#SBATCH --mail-type=ALL
#SBATCH --mail-user amanj.bajalan.6489@student.uu.se

# Load modules
module load bioinfo-tools
module load maker/3.01.1-beta 

# Commands

#augustus_species=my_species #Augustus gene prediction species model
#keep_preds=1 #Concordance threshold to add unsupported gene prediction (bound by 0 and 1)
maker
