#Name: Madison Stafford; Date: 2/17/26; Purpose: Practice Microarray Assignment

#Load the library Affy
library(affy)

#Sets working directory to a folder where .CEL files are 
setwd("/Users/madisonstafford/Desktop")

#Read the 4 .CEL files in R
data <- ReadAffy()

#Generate boxplot to visualize dataset
boxplot(data)

#Normalize the data set to remove any outliers and stable the median for all .CEl files
normalizeddata<-rma(data)

#Generate boxplot to visualize normalized dataset
boxplot(exprs(normalizeddata))

#Fold change analysis for comparing treatment vs control samples
#GSM4844 & GSM4845 samples are to be cancer & GSM4846 & GSM4847 are to be Normal blood samples

#Take meamd/average on each row
Newdata<-exprs(normalizeddata)
Treatment<-Newdata[,c(1,2)]
Control<-Newdata[,c(3,4)]

#Apply the rowmena function to calculate the averages
Treatmentaverage<-rowMeans(Treatment)
Controlaverage<-rowMeans(Control)

#Apply fold change by subtraction 
foldchange<-Treatmentaverage - Controlaverage

#if genes fold change value >2 its an upregulated gene, and if its <-2 its a downregulated gene and if genes are between -2 and +2 they are insignificant genes

#Export variable foldchange in a CSV file
write.csv(foldchange, "foldchange.csv")