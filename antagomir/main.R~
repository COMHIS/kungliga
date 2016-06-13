library(devtools)
#load_all("~/proj/2014-Aatelouhinta/bibliographica")

# I/O definitions
fs <- list.files("~/data/CERL/preprocessed", full.names = TRUE, pattern = ".csv")
output.folder <- "output.tables/"

# Remove selected fields (almost empty and hence rather uninformative)
ignore.fields <- c("publication_frequency", "publication_interval") # CERL

# —--------------------------------------------

# Initialize and read raw data
reload.data <- FALSE
mc.cores <- 8
source(system.file("extdata/init.R", package = "bibliographica"))

# ---------------------------------------------

# Selected subsets of the raw data
check <- "filtering"
source("filtering.R") 

# -----------------------------------------------

# Preprocess raw data
check <- "preprocess1"
source(system.file("extdata/preprocessing.R", package = "bibliographica"))
df.preprocessed <- readRDS("df0.Rds")

# -------------------------------------------------

# Validating and fixing fields
check <- "validation"
source(system.file("extdata/validation.R", package = "bibliographica"))

# -------------------------------------------------

check <- "enrich"
source(system.file("extdata/enrich.R", package = "bibliographica"))
write.table(dim.estimates, sep = ",", row.names = F, file = paste(output.folder, "sheetsize_means.csv", sep = "/"), quote = FALSE)

# -------------------------------------------------

check <- "save"
print("Saving preprocessed data")
saveRDS(df.preprocessed, file = "df.Rds", compress = TRUE)
# df.preprocessed <- readRDS("df.Rds")

# --------------------------------------------------

# Analyze the preprocessed data
check <- "analysis"
source("analysis.R")

date()

# Test map visualizations
# source("map.R")
