# Update the pkg
#library(devtools); install_github("ropengov/estc")

#install_github("ropengov/kungliga")
library(bibliographica)
library(stringr)
library(ggplot)
library(knitr)
library(dplyr)
#library(estc)
library(kungliga)
source("polish_titles.R")
source("utils.R")
#install.packages("kungliga")
source("harmonize_volume.R")
source("volume.R")
source("harmonize_pages.R")
source("harmonize_romans.R")
source("harmonize_sheets.R")
source("harmonize_page_info.R")
source("polish_page.R")
source("estimate_pages.R")
source("roman.R")
source("remove.squarebrackets.R")
source("harmonize_per_comma.R")
source("harmonize_pages_by_comma.R")
source("harmonize_ie.R")
source("plates2pages.R")
source("attribute_tables.R")
source("position.R")
source("sheets2pages.R")
source("sumrule.R")
source("count_pages.R")
source("seqtype.R")
source("is.increasing.R")
source("rules.R")
source("polish_pages.R")

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
