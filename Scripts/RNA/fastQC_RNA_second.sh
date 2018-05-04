#!/bin/bash -L

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:20:00
#SBATCH -J fastQC_RNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user amanj.bajalan.6489@student.uu.se

# Load modules
module load bioinfo-tools
module load FastQC/0.11.5

# Commands
fastqc ./sel2_SRR1719013_P.1.fq
fastqc ./sel2_SRR1719013_P.2.fq


