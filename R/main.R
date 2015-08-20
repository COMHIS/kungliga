# Update the pkg
#library(devtools); install_github("ropengov/estc")
library(bibliographica)
library(ggplot)
library(knitr)
library(dplyr)

# Define here the input file and output folder
# The rest should then execute out-of-the box
source.data.file <- "C:/Users/Hege/Työ/Kungliga/Aineisto/Kungliga/kungliga_hf1.csv"
output.folder <- "C:/Users/Hege/Työ/Kungliga/Output/"

# Create the output directory if not yet exists
dir.create(output.folder)

print("Read raw data")
df.orig <- read_bibliographic_metadata(source.data.file)

# Preprocess the raw data
source("preprocessing.R")
