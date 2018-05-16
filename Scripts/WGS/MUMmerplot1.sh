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
module load MUMmer/3.9.4alpha 

# Commands



#which mummerplot
#/sw/apps/bioinfo/MUMmer/3.9.4alpha/rackham/bin/mummerplot
#cp /sw/apps/bioinfo/MUMmer/3.9.4alpha/rackham/bin/mummerplot mummerplot_mod
#echo ">concat" > soapdenovoK49_concat.fasta
#grep -v "^>" soapdenovoK49_result.scafSeq >> soapdenovoK49_concat.fasta
#sed -i "/clipboardformat/d" mummerplot_mod

nucmer --mum sel2_NW_015504334.fna soapdenovoK49_concat.fasta

./mummerplot_mod -R sel2_NW_015504334.fna -Q soapdenovoK49_concat.fasta --postscript --prefix=ref_qry out.delta



