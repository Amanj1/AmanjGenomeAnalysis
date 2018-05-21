# Genome Analysis 

## Project Plan in activity diagram format

![activity diagram_new](https://user-images.githubusercontent.com/10686927/40007959-a43c58de-578d-11e8-9e8f-2d1f1c625701.png)

Log:

2018 Apr 7-11: Sketching project plan and trying to find information about methods used.

2018 Apr 11: Adding activity diagram for the lab. The activity diagram simplifies a lot for me and is easier to follow. It contains most of the relevant information I gathered from the studentmanual provided in the student protal. 

2018 Apr 13-18: Created scripts SOAPdenovo genome assembly, FASTQC (quality controller for RNA files) and Trimmomatic (Trimming bad RNA data). These script could not be tested because uppmax was under maintenance.

2018 Apr 19: Removing old sbatch scripts and config file for SOAPdenovo and creating new scripts based on new information from leacture slides I found online, the manual for soapdenovo and help from the teaching assistants. 

2018 Apr 23: fixing minor errors in the config and sbatch script for SOAPdenovo. sbatch script for SOAPdenovo is working now.

2018 Apr 29 - May 3: Had trouble running MUMmerplot, but FASTQC scirpt worked and Trimmonatic worked. I had 1 raw data of RNA which I used FASTAQC on to see the quality of. The results showed that it needed to be trimmed. After running trimmonatic the data was acceptable for futher analysis. Trinity was working fine but the script took a bit of time to write because I choose to copy paste the reference for each RNA file. I used Quast to compare the results from SOAPdenovo with the reference genome the authours used in paper2. The reference genome was uploaded by the teacher assistants in uppmax. The results were not promising and I had some discussion with teacher assistans for what to use in futher analysis. So I continued with using the reference genome the authors produced.

2018 May 4: Finished teh script for TopHat but like trinity, it took time to write it, but since I sorted the files several times manually it took more time. It consumed most of today's work. Batch script was not sent today. 

2018 May 5: Script for TopHat was not working. A new script was created but was still not working. 

2018 May 8: Sent a batch script for TopHat.

2018 May 9: Script for TopHat still not working (Time out in slurm). Several sbatch were sent today. The issue was the time I allocated in the script (3h). It needed 4h to finish. I also finished CHIP sequence. I had some issues with because the output of the CHIP was sam, after discussitions with teacher assistant I was told it should be a sorted bam file. So I used a script with samtools to convert it to bam files and another samtools script to sort the bam files.  I also created another script for indexing the bam files (uncessary work because I did not need it for running IGV).

2018 May 11: Running first maker script fellowing manual and asking some questions to TAs. Making github files more structured by creating maps and moving files. 

2018 May 13: Following instructions and creating the script for second run of maker2.

2018 May 14: Running the second maker2 script in the morning and finishing 3rd and 4th run during the lab hours. Updating the activity diagram where I included samtools in the CHIP section and Quast in the WGS section.

2018 May 15: Structuring files in github again. Working on HTSeq script.

2018 May 16: Had trouble with HTSeq I got help form TAs where we modified the the files form maker removing the part wich contains the fasta. I still had issues running it but this time it was not the data from the annotation. After help from TAs and several testing methods the fault was found within the data I recived from previous TopHat script. A new sbatch script for TopHat was created with 4 cores instead of the recomended 2 cores to finish the script faster (~1h). I also did some work with incRNA today but had trouble running the script. I also got help to finish MUMmerplot today, but results were not good. 

2018 May 17: The issue with incRNA was missing some flags. The result from the annotation was zero hits, but when using the reference genome we got 4hits. DESeq was also finished today with the help from TAs and plots for heatmap from DESeq. Was also working on IGV for CHIP sequence had some trouble with the gff file from the annotation because it contained alot of information for were the CHIP peaks occured. I got help for modifing it so it only contains the gene names of each area. 

2018 May 19: Structuring the files again. Uploading the modified gff. Got IGV to work on interactive node in UPPMAX did some testing with CHIP seq data (not yet finished). I would need to look into the files and choose which to present. 






