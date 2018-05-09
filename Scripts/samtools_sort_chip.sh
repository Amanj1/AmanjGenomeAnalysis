#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J CHIP_sort_BAM
#SBATCH --mail-type=ALL
#SBATCH --mail-user amanj.bajalan.6489@student.uu.se

# Load modules
module load bioinfo-tools
module load samtools/1.6

# Commands
#bwa index sel2_NW_015504334.fna

samtools sort sam_to_bam/sel2_SRR1724092_aln-se.bam sorted_bam/sel2_SRR1724092_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724095_aln-se.bam sorted_bam/sel2_SRR1724095_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724098_aln-se.bam sorted_bam/sel2_SRR1724098_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724101_aln-se.bam sorted_bam/sel2_SRR1724101_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724104_aln-se.bam sorted_bam/sel2_SRR1724104_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724108_aln-se.bam sorted_bam/sel2_SRR1724108_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724093_aln-se.bam sorted_bam/sel2_SRR1724093_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724096_aln-se.bam sorted_bam/sel2_SRR1724096_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724099_aln-se.bam sorted_bam/sel2_SRR1724099_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724102_aln-se.bam sorted_bam/sel2_SRR1724102_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724105_aln-se.bam sorted_bam/sel2_SRR1724105_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724109_aln-se.bam sorted_bam/sel2_SRR1724109_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724094_aln-se.bam sorted_bam/sel2_SRR1724094_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724097_aln-se.bam sorted_bam/sel2_SRR1724097_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724100_aln-se.bam sorted_bam/sel2_SRR1724100_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724103_aln-se.bam sorted_bam/sel2_SRR1724103_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724107_aln-se.bam sorted_bam/sel2_SRR1724107_aln-se-sorted.bam

samtools sort sam_to_bam/sel2_SRR1724110_aln-se.bam sorted_bam/sel2_SRR1724110_aln-se-sorted.bam

