#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 07:00:00
#SBATCH -J Maker2_THIRD_RUN
#SBATCH --mail-type=ALL
#SBATCH --mail-user amanj.bajalan.6489@student.uu.se

# Load modules
module load bioinfo-tools
module load maker/3.01.1-beta 

# Commands

#Creating second sel2_NW_015504334.hmm and setting est2genome=0 and protein2genome=0 in maker_opts.ctl
maker
