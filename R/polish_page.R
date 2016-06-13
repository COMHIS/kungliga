polish_page <- function (x) {

  # Convert to string 	    	    
  s <- as.character(x)

  # Remove volume info
  # "5v. 3-20, [5]" -> "3-20, [5]"
  s <- suppressWarnings(remove_volume_info(s))

  # Volumes are separated by semicolons
  # Split by semicolon to list each volume separately
  spl <- str_trim(unlist(strsplit(s, ";")))

  if (length(spl) > 0) {
    # Assess pages per volume
    pages <- sapply(spl, function (x) { estimate_pages(x) })
  } else {
    pages <- NA
  }

  list(raw = spl, pages = pages)
 
}