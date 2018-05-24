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






