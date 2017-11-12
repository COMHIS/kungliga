library(devtools)
#load_all("bibliographica")
library(bibliographica)
library(fennica)
library(stringdist)
library(stringi)
library(stringr)

# I/O definitions
# make daily output folders TODO convert into function -vv
# today.str <- as.character(Sys.Date())
# output.folder <- paste("output.tables/", today.str, "/", sep = '')
# old version:
output.folder <- "output.tables/"
dir.create(output.folder)

fs <- list.files("data", full.names = TRUE, pattern = ".csv.gz")
catalog <- "kungliga"

# Languages to consider in cleanup.
# TODO: recognize the necessary languages automatically ?
languages <- c("swedish")

mc.cores <- 1

# Remove selected fields
# ignore.fields <- c("publisher") 
# update.fields <- "language"
update.fields <- NULL
ignore.fields <- c()

# ----------------------------------------------------
#            LOAD DATA FOR PREPROCESSING
# ----------------------------------------------------

reload.data <- FALSE
if (!"df.raw.Rds" %in% dir()) {
  reload.data <- TRUE
}

source(system.file("extdata/init.R", package = "bibliographica"))
df.orig <- load_initial_datafile(fs, ignore.fields, reload.data)

print(paste("Total documents:", nrow(df.orig)))

# Testing the pipeline with a smaller data subset
# df.orig <- df.orig[sample(nrow(df.orig), 2e4), ] # random
# df.orig <- df.orig[1:1000, ] # first 1000

data.preprocessing <- get_preprocessing_data(df.orig, 
                                             update.fields,
                                             ignore.fields)

# ----------------------------------------------------
#           PREPROCESS DATA
# ----------------------------------------------------

source(system.file("extdata/preprocessing.R", package = "bibliographica"))
data.preprocessed <- preprocess_data(data.preprocessing, 
                                     df.orig,
                                     languages, 
                                     mc.cores = 4)
rm(data.preprocessing)

# ----------------------------------------------------
#           VALIDATE PREPROCESSED DATA
# ----------------------------------------------------

data.validated <- validate_preprocessed_data(data.preprocessed)
rm(data.preprocessed)

# ----------------------------------------------------
#           ENRICH VALIDATED DATA
# ----------------------------------------------------

data.enriched <- enrich_preprocessed_data(data.validated, df.orig)

source("enrich.kungliga.R")
data.enriched.kungliga <- enrich_kungliga(data.enriched)

source("validation.kungliga.R") # Year checks: must come after enrich
data.validated.kungliga <- validation_kungliga(data.enriched.kungliga)

df.preprocessed <- data.validated.kungliga$df.preprocessed
# -------------------------------------------------

print("Saving preprocessed data")
saveRDS(df.preprocessed, file = "df.Rds", compress = TRUE)

# --------------------------------------------------

print("Analyze the preprocessed data")
source("analysis.R")

print("All OK.")
