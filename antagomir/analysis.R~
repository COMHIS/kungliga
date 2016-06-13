source("analysis.init.R")

source("Shakespeare.R")

# Summarize the data and discarded entries
check = "summary tables"
tmp <- generate_summary_tables(df.preprocessed, df.orig, output.folder)

# ----------------------------------------

print("Generic summaries") # Markdown
#load_all("../bibliographica/");

sf <- generate_summaryfiles(df.preprocessed, author = author, output.folder = output.folder, ntop = ntop)

# ---------------------------------

# CERL-specific analyses
df = df.preprocessed
knit("docsizes.Rmd")
knit("digihum.Rmd")
source("20160423-WorldBookDay.R")
source("Shakespeare.R")

# ---------------------------------

system("git add -f figure/*.png")
# system("git add -f output.tables/*.csv")
system("git add output.tables/*.csv")
system("git add *.md")
system("git commit -a -m'Rmd update'")
system("git push origin master")
