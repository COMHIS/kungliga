library(devtools)
#load_all("~/proj/2014-Aatelouhinta/bibliographica")
# install_github("ropengov/bibliographica")

library(bibliographica)
#load_all("~/proj/2014-Aatelouhinta/bibliographica")
#load_all("~/proj/2014-Aatelouhinta/bibliographica")

# I/O definitions
fs <- list.files("~/data/Kungliga/preprocessed", full.names = TRUE, pattern = ".csv.gz")
output.folder <- "output.tables/"
catalog <- "kungliga"

# Remove selected fields
ignore.fields <- c("publisher") 

# —--------------------------------------------

# Initialize and read raw data
# Only needs to be once unless reading functions are updated
reload.data <- FALSE
source(system.file("extdata/init.R", package = "bibliographica"))
print(paste("Total documents:", nrow(df.orig)))

# -----------------------------------------------

# Preprocess raw data
source(system.file("extdata/preprocessing.R", package = "bibliographica"))
df.preprocessed <- readRDS("df0.Rds")

# -------------------------------------------------

# Validating and fixing fields
source(system.file("extdata/validation.R", package = "bibliographica"))

# -------------------------------------------------

source(system.file("extdata/enrich.R", package = "bibliographica"))
write.table(dim.estimates, sep = ",", row.names = F, file = paste(output.folder, "sheetsize_means.csv", sep = "/"), quote = FALSE)

# -------------------------------------------------

print("Saving preprocessed data")
saveRDS(df.preprocessed, file = "df.Rds", compress = TRUE)

# --------------------------------------------------

print("Analyze the preprocessed data")
source("analysis.R")

date()

