
enrich_kungliga <- function(data.enriched) {

  df.preprocessed <- data.enriched$df.preprocessed
  update.fields   <- data.enriched$update.fields
  conversions     <- data.enriched$conversions

  message("Enriching Kungliga")

  message("Updating publication times")

  # Use from field; if from year not available, then use till year
  df.preprocessed$publication_year <- df.preprocessed$publication_year_from
  inds <- which(is.na(df.preprocessed$publication_year))
  df.preprocessed$publication_year[inds] <- df.preprocessed$publication_year_till[inds]

  # publication_decade
  df.preprocessed$publication_decade <- floor(df.preprocessed$publication_year/10) * 10 # 1790: 1790-1799

  # ------------------------------------------------------

  # ĹL 25.1.2017 switch off temporarily
  #message("-- Kungliga publishers")
  #source("polish_publisher_kungliga.R") # TODO
  #df.preprocessed$publisher <- polish_publisher_kungliga(df.preprocessed)

  data.enriched.kungliga <- list(df.preprocessed = df.preprocessed,
                                 update.fields = update.fields,
                                 conversions = conversions) 
  
  return (data.enriched.kungliga)

}

