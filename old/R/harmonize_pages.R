harmonize_pages <- function (x) {

  # Remove dimension info
  s <- remove_dimension(x)

  # ie harmonization (handle comma; otherwise ie handled later)
  s <- harmonize_ie(s)

  # Romans
  s <- harmonize_romans(s) 

  # Read the mapping table
  f <- system.file("extdata/harmonize_pages.csv", package = "bibliographica")
  harm <- as.data.frame(read.csv(f, sep = "\t", stringsAsFactors = FALSE))  
  # Harmonize
  for (i in 1:nrow(harm)) {
    s <- gsub(harm$synonyme[[i]], harm$name[[i]], s)
  }  

  s <- condense_spaces(s)

  # Remove endings
  for (i in 1:5) {
    s <- str_trim(remove_endings(s, c(" ", "\\.", "\\,", "\\;", "\\:")))
  }

  # Harmonize sheet, plate and table info
  s <- harmonize_sheets(s)

  # Pp. -> p etc.
  s <- harmonize_page_info(s)
  
  # Remove spaces around dashes and parentheses
  s <- gsub(" -", "-", s)
  s <- gsub("- ", "-", s)
  s <- str_trim(gsub("\\)", " ", gsub("\\(", " ", s)))
  s <- gsub(" \\(", ",(", s)
  s <- gsub("\\,\\,", ",", s)
  s <- gsub("^\\(", "", s)
  s <- gsub("\\)$", "", s)
  s <- condense_spaces(s)

  # Add commas
  # "[2] 4 p." -> "[2], 4 p."
  inds <- setdiff(1:length(s), grep("\\[i", s))
  s[inds] <- gsub(" \\[", "\\,[", s[inds])
  for (n in 0:9) {
    s <- gsub(paste("] ", n, sep = ""), paste("], ", n, sep = ""), s)
  }

  # p3 -> 3
  if (length(grep("^p[0-9]", s))) {
    s <- substr(s, 2, nchar(s))
  }

  # [24 } -> 24
  if (length(grep("^[[({][0-9]*[])}]$", gsub(" ", "", s)))) {
    s <- gsub("\\[", "", s)
    s <- gsub("\\]", "", s)
    s <- gsub("\\(", "", s)
    s <- gsub("\\)", "", s)
    s <- gsub("\\{", "", s)
    s <- gsub("\\}", "", s)
    s <- str_trim(s)
  }

  s <- str_trim(gsub("^,", "", s))
  if (is.na(s) || s == "") { s <- NA }



  s

}