#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 07:00:00
#SBATCH -J Maker2_transcriptome assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user amanj.bajalan.6489@student.uu.se

# Load modules
module load bioinfo-tools
module load maker/3.01.1-beta 

# Commands

#maker -CTL

#Open the maker_opts.ctl file in your favorite text editor (eg. nano). The lines you will want to change now #are:
#genome=/home/my_assembly.fasta #genome sequence (fasta file or fasta embeded in GFF3 file) the path to your #organisms genome assembly

#Change inputs in the maker_opt.ctl file
# https://reslp.github.io/blog/My-MAKER-Pipeline/

maker
