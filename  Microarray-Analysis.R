#Name: Madison Stafford; Date: 1/27/26; Purpose: Microarray Analysis 

# Install Affymetrix library/Package

if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("affy")

library(affy)

setwd("/Users/madisonstafford/Desktop")