seqtype <- function (z) {

  # series does not have any
  if (length(z)==0) {
    sequence.type <- "empty"
  } else {

    # Determine page count categories 
    # increasing / series / etc.
    sequence.type <- NA

    # Recognize increasing sequence
    increasing <- is.increasing(z)

    # Recognize series (ie. sequences with dashes)
    series <- length(grep("-", z))>0 

    # Recognize single number

    single.number <- length(z) == 1 && is.numeric(suppressWarnings(as.numeric(z[[1]])) )

    # sequence has numbers without dashes
    if (!series && !increasing) { sequence.type <- "sequence" }
    if (!series && increasing)  { sequence.type <- "increasing.sequence" }
    if (single.number) { sequence.type <- "sequence"}

    # series has dashes
    if (series && !increasing) { sequence.type <- "series" } 
    if (series && increasing) { sequence.type <- "increasing.series" }

    # If there are several arabic elements and at least one dash among them, then use maximum
    multiple <- length(z) > 1
    if (series && multiple) { sequence.type <- "series" }

  }

  sequence.type
}