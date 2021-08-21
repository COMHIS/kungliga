library(devtools)
library(dplyr)
library(tm)
library(stringr)
library(knitr)
library(R.utils)
library(ggplot2)

# Install latest version from Github
# install_github("comhis/fennica") # or
# devtools::load_all() # if you are working from the clone and modifying it
# library(fennica) 

# Install latest version from Github
# install_github("comhis/comhis")        
library(comhis)  

# Load misc functions needed for harmonization
source("funcs.R")

# Define create the output folder
output.folder <- "output.tables/"
dir.create(output.folder)

# List the preprocessed data file and read the data
df.orig <- read_bibliographic_metadata(
              c("../originals/kungliga_hf1.csv.gz",
	        "../originals/kungliga_hf2.csv.gz"),
              verbose = TRUE, sep = "|")

ntop <- 20
author <- "Helsinki Computational History Group (COMHIS)"

# Visualization options
theme_set(theme_bw(20))