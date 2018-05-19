#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J incRNA_RUN
#SBATCH --mail-type=ALL
#SBATCH --mail-user amanj.bajalan.6489@student.uu.se

# Load modules
module load bioinfo-tools
module load blast/2.6.0+

# Commands

makeblastdb -in NW_015504334%2E1.maker.transcripts.fasta -dbtype nucl 

blastn -query Sequences_lncrnadb_27Jan2015.fasta -db NW_015504334%2E1.maker.transcripts.fasta -out incRNA_Blast_out -evalue 0.001 -outfmt 7 -perc_identity 80 -qcov_hsp_perc 75 


