library(ggplot2)
library(tidyr)
library(dplyr)
library(stringr)
library(devtools); load_all("~/Rpackages/bibliographica")
library(bibliographica)
library(magrittr)
library(sorvi)
library(reshape2)
library(gridExtra)
library(knitr)

# ---------------------------------

# Set global parameters
data.path <- "data/unified/polished"
datafile <- paste(data.path, "df.Rds", sep = "/")
datafile.orig <- paste(data.path, "df.raw.Rds", sep = "/")

ntop <- 20
author <- "Lahti, Marjanen, Roivainen, Tolonen"

# already in main.R - yes but we want to be able to run
# analysis.R independently since main.R takes hours to complete..
output.folder <- "output.tables/"

# Read the preprocessed data
df0 <- readRDS(datafile)
df.orig <- readRDS(datafile.orig)

print("Prepare the final data set")
# Year limits
df <- df0
if (exists("timespan")) {
  df <- filter(df,
        publication_year >=  min(timespan) & publication_year <= max(timespan))
}

# Store
df.preprocessed <- df.preprocessed.orig <- df
rm(df)

