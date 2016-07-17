source("analysis.init.R")

print("Summary tables")
tmp <- generate_summary_tables(df.preprocessed, df.orig, output.folder)

print("Summary docs") # Markdown
sf <- generate_summaryfiles(df.preprocessed, df.orig, author = author, output.folder = output.folder, ntop = ntop)

system("git add -f figure/*.png")
# system("git add -f output.tables/*.csv")
system("git add output.tables/*.csv")
system("git add *.md")
system("git commit -a -m'Rmd update'")
system("git push origin master")
