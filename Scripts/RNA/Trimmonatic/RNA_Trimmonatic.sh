#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:10:00
#SBATCH -J RNA_TRIMMOMATIC
#SBATCH --mail-type=ALL
#SBATCH --mail-user amanj.bajalan.6489@student.uu.se

# Load modules
module load bioinfo-tools
module load trimmomatic/0.36

# Commands

java -jar $TRIMMOMATIC_HOME/trimmomatic-0.36.jar PE raw_data/sel2_SRR1719013.1.fastq raw_data/sel2_SRR1719013.2.fastq sel2_SRR1719013_P.1.fq.gz sel2_SRR1719013_U.1.fq.gz sel2_SRR1719013_P.2.fq.gz sel2_SRR1719013_U.2fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

