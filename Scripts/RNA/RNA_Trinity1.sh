#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J RNA_assembly_Trinity
#SBATCH --mail-type=ALL
#SBATCH --mail-user amanj.bajalan.6489@student.uu.se

# Load modules
module load bioinfo-tools
module load trinity/2.4.0

# Commands


Trinity --seqType fq --max_memory 10G \
	 --left sel2_SRR1719204.trim_1P.fastq,sel2_SRR1719204.trim_1U.fastq,sel2_SRR1719206.trim_1P.fastq,sel2_SRR1719206.trim_1U.fastq,sel2_SRR1719207.trim_1P.fastq,sel2_SRR1719207.trim_1U.fastq,sel2_SRR1719208.trim_1P.fastq,sel2_SRR1719208.trim_1U.fastq,sel2_SRR1719209.trim_1P.fastq,sel2_SRR1719209.trim_1U.fastq,sel2_SRR1719013_1P.fq,sel2_SRR1719013_1U.fq,sel2_SRR1719014.trim_1P.fastq,sel2_SRR1719014.trim_1U.fastq,sel2_SRR1719015.trim_1P.fastq,sel2_SRR1719015.trim_1U.fastq,sel2_SRR1719016.trim_1P.fastq,sel2_SRR1719016.trim_1U.fastq,sel2_SRR1719017.trim_1P.fastq,sel2_SRR1719017.trim_1U.fastq,sel2_SRR1719018.trim_1P.fastq,sel2_SRR1719018.trim_1U.fastq,sel2_SRR1719211.trim_1P.fastq,sel2_SRR1719211.trim_1U.fastq,sel2_SRR1719212.trim_1P.fastq,sel2_SRR1719212.trim_1U.fastq,sel2_SRR1719213.trim_1P.fastq,sel2_SRR1719213.trim_1U.fastq,sel2_SRR1719214.trim_1P.fastq,sel2_SRR1719214.trim_1U.fastq,sel2_SRR1719241.trim_1P.fastq,sel2_SRR1719241.trim_1U.fastq,sel2_SRR1719242.trim_1P.fastq,sel2_SRR1719242.trim_1U.fastq,sel2_SRR1719266.trim_1P.fastq,sel2_SRR1719266.trim_1U.fastq \
	 --right sel2_SRR1719204.trim_2P.fastq,sel2_SRR1719204.trim_2U.fastq,sel2_SRR1719206.trim_2P.fastq,sel2_SRR1719206.trim_2U.fastq,sel2_SRR1719207.trim_2P.fastq,sel2_SRR1719207.trim_2U.fastq,sel2_SRR1719208.trim_2P.fastq,sel2_SRR1719208.trim_2U.fastq,sel2_SRR1719209.trim_2P.fastq,sel2_SRR1719209.trim_2U.fastq,sel2_SRR1719013_2P.fq,sel2_SRR1719013_2U.fq,sel2_SRR1719014.trim_2P.fastq,sel2_SRR1719014.trim_2U.fastq,sel2_SRR1719015.trim_2P.fastq,sel2_SRR1719015.trim_2U.fastq,sel2_SRR1719016.trim_2P.fastq,sel2_SRR1719016.trim_2U.fastq,sel2_SRR1719017.trim_2P.fastq,sel2_SRR1719017.trim_2U.fastq,sel2_SRR1719018.trim_2P.fastq,sel2_SRR1719018.trim_2U.fastq,sel2_SRR1719211.trim_2P.fastq,sel2_SRR1719211.trim_2U.fastq,sel2_SRR1719212.trim_2P.fastq,sel2_SRR1719212.trim_2U.fastq,sel2_SRR1719213.trim_2P.fastq,sel2_SRR1719213.trim_2U.fastq,sel2_SRR1719214.trim_2P.fastq,sel2_SRR1719214.trim_2U.fastq,sel2_SRR1719241.trim_2P.fastq,sel2_SRR1719241.trim_2U.fastq,sel2_SRR1719242.trim_2P.fastq,sel2_SRR1719242.trim_2U.fastq,sel2_SRR1719266.trim_2P.fastq,sel2_SRR1719266.trim_2U.fastq \
	 --CPU 2 


   
  
  
  

 

 























