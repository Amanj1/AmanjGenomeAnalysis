# Genome Analysis 

## Project Plan in activity diagram format

![activity diagram](https://user-images.githubusercontent.com/10686927/40333041-ff943cde-5d45-11e8-97de-5ae35d35df8d.png)

### Log:

2018 Apr 7-11: Sketching project plan and trying to find information about methods used.

2018 Apr 11: Adding activity diagram for the lab. The activity diagram simplifies a lot for me and is easier to follow. It contains most of the relevant information I gathered from the studentmanual provided in the student protal. 

2018 Apr 13-18: Created scripts SOAPdenovo genome assembly, FASTQC (quality controller for RNA files) and Trimmomatic (Trimming bad RNA data). These scripts could not be tested because uppmax was under maintenance.

2018 Apr 19: Removing old sbatch scripts and config file for SOAPdenovo and creating new scripts based on new information from lecture slides I found online, the manual for soapdenovo and with the help from teaching assistants. 

2018 Apr 23: fixing minor errors in the config and sbatch script for SOAPdenovo. sbatch script for SOAPdenovo is working now.

2018 Apr 29 - May 3: Had trouble running MUMmerplot, but FASTQC scirpt worked and Trimmonatic worked. I had 1 raw data of RNA which I used FASTAQC on to see the quality of. The results showed that it needed to be trimmed. After running trimmonatic the data was acceptable for futher analysis. Trinity was working fine, but the script took a bit of time to write because I chose to copy paste the reference for each RNA file. I used Quast to compare the results from SOAPdenovo with the reference genome the authors used in paper2. The reference genome was uploaded by the teacher assistants in uppmax. The results were not promising and I had some discussion with teacher assistants for what to use in further analysis. So I continued with using the reference genome the authors produced.

2018 May 4: Finished the script for TopHat, but like trinity, it took time to write it, but since I sorted the files several times manually it took more time. It consumed most of today's work. Batch script was not sent today. 

2018 May 5: Script for TopHat was not working. A new script was created but was still not working. 

2018 May 8: Sent a batch script for TopHat.

2018 May 9: Script for top-hat still not working (Time Out in Slurm). Another sbatch was sent today. The issue was the time I allocated in the script (3h). It needed 4h to finish. I also finished CHIP-seq using BWA. I had some issues with the results from BWA, because the output of the CHIP was in sam, after discussions with teacher assistant I was told it should be a sorted bam file. So I used a script with samtools to convert it to bam files and another samtools script to sort the bam files.  I also created another script for indexing the bam files.

2018 May 11: Running first maker script following manual and asking some questions to TAs. Making github files more structured by creating maps and moving files. 

2018 May 13: Following instructions and creating the script for second run of maker2.

2018 May 14: Running the second maker2 script in the morning and finishing 3rd and 4th run during the lab hours. Updating the activity diagram where I included samtools in the CHIP section and Quast in the WGS section.

2018 May 15: Structuring files in github again. Working on HTSeq script.

2018 May 16: Had trouble with HTSeq I got help from TAs where we modified the files from maker2 by removing the part which contained the fasta. I still had issues running it, but this time it was not the data from the annotation. After help from TAs and several testing the fault was found within the data I received from previous TopHat scripts. A new sbatch script for TopHat was created with 4 cores instead of the recommended 2 cores to finish the script faster (~1h). I also finished MUMmerplot today, but the result was not good. I did some work with lncRNA at the very end of the lab session today, but had trouble running the script. 

2018 May 17: The issue with lncRNA was missing some flags. The result from the annotation was zero hits, but when using the reference genome we got 4hits. DESeq was also finished today with the help from TAs and plots for heatmap was created from DESeq. I Was also working on IGV for CHIP sequence had some trouble with the gff file I got from the annotation because it contained a lot of information for were the CHIP peaks occurred. I got help modifying the gff file so it only contained the gene names of each area. 

2018 May 19: Structuring the files again. Uploading the modified gff (for CHIP). Got IGV to work on the interactive node in UPPMAX did some testing with CHIP seq data (not yet finished). I would need to look into the files and choose which to present. 

2018 May 21: I noticed functional annotation was missing. I used the EggNOGmapper online and used the maker protein fasta from maker2 and got an output. It gives a list of names of the genes that indicates the function and statistics. I also updated the activity diagram. 

2018 May 23: Today I was looking into IGV and was comparing diffrent tissue sample (Hindlimbs and Forelimbs) to see if they had any diffrences for the protein binding sites from the ChIP-seq data. Most of the samples I was looking into had the same pattern of ChIP-seq peaks. IGV was working very slow, so I did not do further checks like counting the areas and to see if the peaks occurred in all the genes or outside (by comparing it with the annotation data). I ended up comparing 2 hindlimbs and 2 forelimbs with two different positions inside two different genes. 
____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________

## Paper II - Eckalbar et al. 2016 

### Basic analyses:

● Genome assembly of Illumina reads.

● Assembly quality assessment.

● Transcriptome assembly.

● Structural and functional annotation.

● Differential expression analyses.

● Biological interpretation of the results.

### Extra analyses:

● Mapping of ChIP-seq reads and visualization.

● Analyses of long non-coding RNAs.


#-----------------2018-05-25----------------------

## Evaluation of assembly:
I made two assembly evalution one with Quast and the other one with MUMmerplot.

###Quast
So my N50 in comparison with the total lenght is very small (2916) of the total length which was 2103624.
The GC content looked good and was similar to the reference (49,27% to 49,44%).

###MUMmerplot
![MUMmerplot](https://github.com/Amanj1/AmanjGenomeAnalysis/blob/master/Assembly%20evaluation%20results/MUMmerplot/Screenshot_ref_qry.png?raw=true)

However the MUMmerplot result was very bad. The MUMmerplot showed that the assembly was far from diagonal. I continued using the reference genome in all of the next steps. 

###FastQC and Trimmonatic
The initial run of the raw data from RNA showed that it needed to be trimmed I used trimmonatic with the standard flags. The second run of FastQC should an improvement.

###Trinity
So, RNA I used where from the embroynic stage during, and trinity gave me a transcrimptome of the RNA expression during this stage. Now I had all the files to do the annotion. 

###Annotion maker2
The input was Mouse and human protein sequence, transcriptome assembly and genome assembly.
The output was various files that I could use for differential expression, lncRNA and the functional annotation.
The purpose of the annotation is finding which part of the genome is coding the proteins and what kind of proteins. 

The Authors found 24,239 genes in the annotion and I got 77 genes. This is because my selection 2 transcriptome is smaller and I also guess that maybe I don't have the whole WGS. 

Notes: 
The second run in annotion was messed up because I had zero genes in it. So I did ran agustus with the first maker run which was good. 

###TopHat
I did several runs with TopHat first I think I was using the command wrong and the 2 other runs was because I did not change the amount of time for the slurm job. When I did HTSeq I also had issues with it and I got help and then I had to redo TopHat again excluding the single-end. 

###HTSeq
Gave me some table with results for each tissue I did not look into it so much I just continued on to the next step. 

###DESeq
I Used library from R to create the diffrential expression hindlimbs vs forelimbs. I only collected the data that was 5% or less significant and created a heatmap. I got 7 genes of total 77 genes. 

###Functional annotion
I did functional annotion to find out what each gene from the table produced in DESeq had for function. One of the genes was not included in the functional annotion, 3 of them was for transmembrane proteins and 3 of them are active in embroyinc development of tissue. 

Transcription factor: This is important for gene expression and could have a function for limb development.

Homeobox genes: These genes usually deals with body architecture and are present during early embryonic development. This is both interesting and not surprising that they are overexpressed. 

Protein phosphatase-1: These are involved in a lot of developmental processes. This could be important, but may not be interesting, however, it is interesting  for bat wing development.

###lncRNA
For lncRNA I Used blast. 
My First try was with lncRNA from Human and Mouse as Database and transcript file from the annotation. 
This Gave 0 hits. 
And in my Second try I used the same DB and instead of the transcript file I used the WGS, which gave me 4 hits.

The first try is more important than the second because it involves the RNA expression during embryonic stage. Because I had only 77 genes from the annotion it could explain why I had 0 hits for my first try, compared with authors (227 hits). 

###ChIP-seq
I used the software BWA for ChIP-seq. I had some issues with the sam when trying it in IGV. Later I converted it to bam files, sorted the files and indexed them so I could use them for IGV. When I looked in NCBI I only found the tissue samples for ChIP-seq so I had no idea about the active and repessive proteins in the seqences. And I didnt not know what the diffrences between the peaks were to point out which one was the repressor and which was the activator. In this case the protein was part of a histone modication I think because they mentiond H3 in the paper. 

The pattern for all the samples I looked into in IGV was identical (peaks) and positions and IGV was very slow to run. 

I detected a number of Histone binding sites/regulatory regions which also the case for authors, but unfortunary lack of time and tools, no more analysis could be done on these results and data. I don't think IGV is good enough to make a proper analysis of the ChIP-seq, it helps me visualize the regulatory regions but not much more.









