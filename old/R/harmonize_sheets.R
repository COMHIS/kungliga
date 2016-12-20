harmonize_sheets <- function (s) {

  #s <- gsub("[0-9]leaf", paste0(substr(s, 1, 1), " leaf"), s)
  s <- gsub("([0-9]+)(leaf)", "\\1 \\2", s)
  s <- gsub("([0-9]+)[ ]*blad", "\\1 leaf", s)

  # Read the mapping table
  f <- system.file("extdata/harmonize_sheets.csv", package = "bibliographica")
  harm <- as.data.frame(read.csv(f, sep = "\t", stringsAsFactors = FALSE))

  # Harmonize
  for (i in 1:nrow(harm)) {
    s <- gsub(harm$synonyme[[i]], harm$name[[i]], s)
  }  

  # Harmonize '* sheets'
  spl <- unlist(strsplit(s, ","))

  sheet.inds <- grep("sheet", spl)

  # Reworked this part compeletely
  # blabla,[n] ark -> blabla, n sheets
  # blabla; [xvi] ark -> blabla, 16 sheets
  # possible brackets are removed, leading space is not
  sheet.inds <- grep("ark", s)
  b = gsub(".*([ ]|\\b)[[]*([ivxlcdm]+)[]]* (vikt |prov|)ark", "\\2", s)
  b = as.numeric(as.roman(b))

  for (i in sheet.inds) {
    s[i] <- gsub("([ ]*)[[]*([0-9]+)[]]* (vikt |prov|)ark", "\\1\\2 sheets", s[i])
    s[i] <- gsub(".*([ ]|b)[[]*([ivxlcdm]+)[]]* (vikt |prov|)ark", paste("\\1", b[i], " sheets", sep=""), s[i])
  }

  
  # blabla,[n] sheets -> blabla, n sheets
  # blabla; [xvi] sheets -> blabla, 16 sheets
  # possible brackets are removed, leading space is not
  sheet.inds <- grep("sheet", s)
  b = gsub(".*([ ]|\\b)[[]*([ivxlcdm]+)[]]* (p. of |)(sheets)", "\\2", s)
  b = as.numeric(as.roman(b))

  for (i in sheet.inds) {
    s[i] <- gsub("([ ]*)[[]*([0-9]+)[]]* (p. of |)(sheets)", "\\1\\2 sheets", s[i])
    s[i] <- gsub("([ ]*)[[]*([ivxlcdm]+)[]]* (p. of |)(sheets)", paste("\\1", b[i], " sheets", sep=""), s[i])
  }
  
  s <- gsub("[^0-9]1 (sheets)", "sheet", s)

  for (i in sheet.inds) {

    if (length(grep("^[0-9] sheet", s)) > 0) {
      n <- as.numeric(str_trim(unlist(strsplit(spl[[i]], "sheet"))[[1]]))
      spl[[i]] <- paste(n, "sheets", sep = " ")
    }

    if (length(grep("\\[^[0-9]|[a-z]\\] sheets", s)) > 0) {
      n <- as.numeric(as.roman(str_trim(gsub("\\[", "", gsub("\\]", "", unlist(strsplit(spl[[i]], "sheet"))[[1]])))))
      spl[[i]] <- paste(n, "sheets", sep = " ")
    }

    # After this, length(s) would've been 1
    #s <- paste(spl, collapse = ",")
    #s <- gsub("1 sheets", "1 sheet", s)

  }

  s 

}