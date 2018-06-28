  
validation_kungliga <- function(data.enriched.kungliga) {

  df.preprocessed <- data.enriched.kungliga$df.preprocessed
  update.fields   <- data.enriched.kungliga$update.fields
  conversions     <- data.enriched.kungliga$conversions

  # Manually checked for Kungliga - 35 publications before 1400;
  # close looks suggest misspellings in time field and the original year cant be inferred from the entry
  # hence removing years before that
  max.year <- as.numeric(format(Sys.time(), "%Y")) # this.year
  min.year <- 1400
  df.preprocessed$publication_year_from[which(df.preprocessed$publication_year_from > max.year)] <- NA
  df.preprocessed$publication_year_from[which(df.preprocessed$publication_year_from < min.year)] <- NA
  df.preprocessed$publication_year_till[which(df.preprocessed$publication_year_till > max.year)] <- NA
  df.preprocessed$publication_year_till[which(df.preprocessed$publication_year_till < min.year)] <- NA

  # Subsequent correction to the publication year fields
  print("Publication times")
  # Use from field; if from year not available, then use till year
  df.preprocessed$publication_year <- df.preprocessed$publication_year_from
  inds <- which(is.na(df.preprocessed$publication_year))
  df.preprocessed$publication_year[inds] <- df.preprocessed$publication_year_till[inds]
  # publication_decade
  df.preprocessed$publication_decade <- floor(df.preprocessed$publication_year/10) * 10 # 1790: 1790-1799

  # Publication interval must be within 1400-2000
  df.preprocessed$publication_interval_from[df.preprocessed$publication_interval_from < 1400] <- NA
  df.preprocessed$publication_interval_from[df.preprocessed$publication_interval_from > 2000] <- NA
  df.preprocessed$publication_interval_till[df.preprocessed$publication_interval_till < 1400] <- NA
  df.preprocessed$publication_interval_till[df.preprocessed$publication_interval_till > 2000] <- NA

  data.validated.kungliga <- list(df.preprocessed = df.preprocessed,
                                  update.fields = update.fields,
                                  conversions = conversions) 

  return (data.validated.kungliga)
}
