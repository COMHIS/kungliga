library(devtools)
load_all("bibliographica")
#library(bibliographica)

# I/O definitions
# make daily output folders TODO convert into function -vv
today.str <- as.character(Sys.Date())
output.folder <- paste("output.tables/", today.str, "/", sep = '')
# old version:
# output.folder <- "output.tables/"
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
# all the source calls just load functions now

# load initial data
df.orig <- load_initial_datafile(fs, ignore.fields, reload.data)

print(paste("Total documents:", nrow(df.orig)))

# Testing the pipeline with a smaller data subset
# df.orig <- df.orig[sample(nrow(df.orig), 2e4), ] # random
df.orig <- df.orig[1:1000, ] # first 1000

# load data for preprocessing
data.preprocessing <- get_preprocessing_data(df.orig, 
                                             update.fields,
                                             ignore.fields)
# returns list of 3 (df.preprocessed, update.fields, conversions)

# obs!: All following functions now return lists of 3 or 2, with generally 
#       the same objects- we could make this neater by packaking all in S3
#       object. Functions could take as both input and output an instance of
#       that class then.

#       For now decided to input&output same list of 3:
#       (df.preprocessed, update.fields, conversions)

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

source(system.file("extdata/validation.R", package = "bibliographica"))
data.validated <- validate_preprocessed_data(data.preprocessed)
rm(data.preprocessed)

# ----------------------------------------------------
#           ENRICH VALIDATED DATA
# ----------------------------------------------------

source(system.file("extdata/enrich.R", package = "bibliographica"))
data.enriched <- enrich_preprocessed_data(data.validated, df.orig)
# some function(s) need df.orig. Should tidy that up? -vv

source("enrich.kungliga.R")
data.enriched.kungliga <- enrich_kungliga(data.enriched)

write.table(dim.estimates, sep = ",", row.names = F,
  file = paste(output.folder, "sheetsize_means.csv", sep = "/"),
  quote = FALSE)

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
