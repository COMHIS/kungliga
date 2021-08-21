
# ----------------------------------------------------
#            INITIALIZE AND LOAD DATA
# ----------------------------------------------------

source("init.R")

# ----------------------------------------------------
#           PREPROCESS DATA'
# ----------------------------------------------------

# Previously polished data set
df.polished <- readRDS("../unified/polished/df.Rds")
df.polished$language <- NULL

# Language
source("language.R")

# -----------------------------------------------------

saveRDS(df.polished, file = "../unified/polished/df_augmented.Rds")

