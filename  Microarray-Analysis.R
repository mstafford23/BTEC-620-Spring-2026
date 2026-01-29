#Name: Madison Stafford; Date: 1/27/26; Purpose: Microarray Analysis 

# Install Affymetrix library/Package

if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("affy")

# Load the library Affy
library(affy)

# Sets working directory to a folder where .CEL files are 
setwd("/Users/madisonstafford/Desktop")

# Read the 4 .CEL files in R 
data <-ReadAffy()

# Generate boxplot to visualize dataset
boxplot(data)

# Normalize the dataset to remove any outliers and stable the median for all .CEL files
