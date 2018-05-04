#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:20:00
#SBATCH -J MUMmerPlot
#SBATCH --mail-type=ALL
#SBATCH --mail-user amanj.bajalan.6489@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer/3.23

# Commands
mummer -mum -b -c sel2_NW_015504334.fna /home/amanj/amanj/WGS/soapdenovoK49_result.scafSeq > ref_qry.mums

mummerplot -R sel2_NW_015504334.fna -Q /home/amanj/amanj/WGS/soapdenovoK49_result.scafSeq --postscript --prefix=ref_qry ref_qry.mums

gnuplot ref_qry.gp

