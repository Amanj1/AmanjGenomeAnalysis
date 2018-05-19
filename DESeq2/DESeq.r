#source("http://bioconductor.org/biocLite.R")
#biocLite("DESeq2")
#
#Load DESeq2 library
#library("DESeq2")

# Set the working directory
directory <- "/home/amanbaja/Documents/DESeq2/"
setwd(directory)

# Set the prefix for each output file name
outputPrefix <- "DESeq2_result"

sampleFiles<- c("a1.txt","a2.txt","a3.txt","a4.txt","a5.txt","a6.txt","a7.txt","a8.txt","a9.txt","a10.txt","a11.txt","a12.txt","a13.txt","a14.txt","a15.txt","a16.txt","a17.txt","a18.txt")
sampleNames <- c("sel2_SRR1719013","sel2_SRR1719014","sel2_SRR1719015","sel2_SRR1719016","sel2_SRR1719017","sel2_SRR1719018","sel2_SRR1719204","sel2_SRR1719206","sel2_SRR1719207","sel2_SRR1719208","sel2_SRR1719209","sel2_SRR1719211","sel2_SRR1719212","sel2_SRR1719213","sel2_SRR1719214","sel2_SRR1719241","sel2_SRR1719242","sel2_SRR1719266")
sampleCondition <- c("Forelimbs","Forelimbs","Forelimbs","Hindlimbs","Hindlimbs","Hindlimbs","Forelimbs","Forelimbs","Forelimbs","Forelimbs","Forelimbs","Forelimbs","Forelimbs","Hindlimbs","Hindlimbs","Hindlimbs","Hindlimbs","Hindlimbs")
sampleTable <- data.frame(sampleName = sampleNames, fileName = sampleFiles, condition = sampleCondition)

treatments = c("Hindlimbs","Forelimbs")


library("DESeq2")
ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable,
                                       directory = directory,
                                       design = ~ condition)
colData(ddsHTSeq)$condition <- factor(colData(ddsHTSeq)$condition,
                                      levels = treatments)

#guts
dds <- DESeq(ddsHTSeq)
res <- results(dds)

# copied from: https://benchtobioinformatics.wordpress.com/category/dexseq/
# order results by padj value (most significant to least)
res_0.05= subset(res, padj<0.05)
res_0.05_ordered <- res_0.05[order(res_0.05$padj),]
# should see DataFrame of baseMean, log2Foldchange, stat, pval, padj

# save data results and normalized reads to csv with res_0.05 and res
resdata <- merge(as.data.frame(res_0.05_ordered), as.data.frame(counts(dds,normalized =TRUE)), by = 'row.names', sort = FALSE)
names(resdata)[1] <- 'gene'
write.csv(resdata, file = paste0(outputPrefix, "0.05_DESeq2-results-with-normalized.csv"))

#Creating heatmap
rld <- rlog(dds, blind=FALSE)
source("http://bioconductor.org/biocLite.R") #adds bioconductor site as a package source
biocLite("pheatmap") #downloads and install pheatmap package from bioconductor
library("pheatmap") #loads pheatmap package
select <- order(rowMeans(counts(dds,normalized=TRUE)),
                decreasing=TRUE)[1:7]
df <- as.data.frame(colData(dds))

pheatmap(assay(rld)[select,], cluster_rows=TRUE, show_rownames=TRUE,
         cluster_cols=TRUE)






#####################
library("gplots")
library("genefilter")
library("RColorBrewer")
topVarGenes <- head( order( rowVars( assay(rld) ), decreasing=TRUE ), 35 )
heatmap.2( assay(rld)[ topVarGenes, ], scale="row",
           trace="none", dendrogram="both",
           col = colorRampPalette( rev(brewer.pal(9, "RdBu")) )(255))

heatmap.2( assay(rld)[ select, ], scale="row",
           trace="none", dendrogram="both",
           col = colorRampPalette( rev(brewer.pal(9, "RdBu")) )(255))



vsd <- vst(dds, blind=FALSE)
pheatmap(assay(vsd)[select,], cluster_rows=FALSE, show_rownames=FALSE,
         cluster_cols=FALSE)



