#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J CHIP_BWA_ALIGNER
#SBATCH --mail-type=ALL
#SBATCH --mail-user amanj.bajalan.6489@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa/0.7.17

# Commands
#bwa index sel2_NW_015504334.fna

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724092.trim.1.fastq > bwa_out_dir/sel2_SRR1724092_aln-se.sam 

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724095.trim.1.fastq > bwa_out_dir/sel2_SRR1724095_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724098.trim.1.fastq > bwa_out_dir/sel2_SRR1724098_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724101.trim.1.fastq > bwa_out_dir/sel2_SRR1724101_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724104.trim.1.fastq > bwa_out_dir/sel2_SRR1724104_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724108.trim.1.fastq > bwa_out_dir/sel2_SRR1724108_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724093.trim.1.fastq > bwa_out_dir/sel2_SRR1724093_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724096.trim.1.fastq > bwa_out_dir/sel2_SRR1724096_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724099.trim.1.fastq > bwa_out_dir/sel2_SRR1724099_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724102.trim.1.fastq > bwa_out_dir/sel2_SRR1724102_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724105.trim.1.fastq > bwa_out_dir/sel2_SRR1724105_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724109.trim.1.fastq > bwa_out_dir/sel2_SRR1724109_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724094.trim.1.fastq > bwa_out_dir/sel2_SRR1724094_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724097.trim.1.fastq > bwa_out_dir/sel2_SRR1724097_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724100.trim.1.fastq > bwa_out_dir/sel2_SRR1724100_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724103.trim.1.fastq > bwa_out_dir/sel2_SRR1724103_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724107.trim.1.fastq > bwa_out_dir/sel2_SRR1724107_aln-se.sam

bwa mem sel2_NW_015504334.fna ChIP_trimmed_data/sel2_SRR1724110.trim.1.fastq > bwa_out_dir/sel2_SRR1724110_aln-se.sam

