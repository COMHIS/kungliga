library(ggplot2)
library(tidyr)
library(dplyr)
library(stringr)
library(bibliographica)
library(estc)
library(magrittr)
library(sorvi)
library(reshape2)
library(gridExtra)
library(knitr)

# ---------------------------------

# Set global parameters
timespan <- c(1470, 1828)
#timespan <- c(1470, Inf)
#timespan <- c(-Inf, Inf)
datafile <- "df.Rds"
ntop <- 20
author <- "Lahti, Marjanen, Roivainen, Tolonen"
output.folder <- "output.tables/"

print("Prepare the final data set")
# Read preprocessed data
df <- readRDS(datafile)
# Year limits
df.preprocessed <- filter(df, publication_year >=  min(timespan) & publication_year <= max(timespan))
rm(df)

