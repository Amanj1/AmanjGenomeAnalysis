#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J HTSeq_RUN
#SBATCH --mail-type=ALL
#SBATCH --mail-user amanj.bajalan.6489@student.uu.se

# Load modules
module load bioinfo-tools
module load htseq/0.9.1

# Commands

htseq-count -i ID -f bam -s no /home/amanj/amanj/TopHat/tophat_out_dir/*/accepted_hits.bam /home/amanj/amanj/maker/augustus_results/NW_015504334%2E1.gff > HTseq_output.txt

