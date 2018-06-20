
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

  message("-- Kungliga publishers")
  source("polish_publisher_kungliga.R")
  df.preprocessed$publisher <- polish_publisher_kungliga(df.preprocessed)

  # -----------------------------------------------

  # Updated geomappings. This is now based on the polished place names.
  # TODO check if original raw data has any country information
  geoinfo <- read.csv("geo/Kungliga.places.csv", fileEncoding = "latin1")
  # Quick manual fixes
  df.preprocessed$publication_place <- gsub("Żary", "Zary", df.preprocessed$publication_place)
  df.preprocessed$publication_place <- gsub("Gdańsk", "Gdansk", df.preprocessed$publication_place)
  df.preprocessed$publication_place <- gsub("Poznań", "Poznan", df.preprocessed$publication_place)    

  # not1 <- setdiff(df.preprocessed$publication_place, geoinfo$publication_place)
  # not2 <- setdiff(geoinfo$publication_place, df.preprocessed$publication_place)
  inds <- match(df.preprocessed$publication_place, geoinfo$publication_place)
  df.preprocessed$publication_country <- factor(geoinfo[inds, "country"])
  df.preprocessed$longitude <- geoinfo[inds, "longitude"]
  df.preprocessed$latitude <- geoinfo[inds, "latitude"]  
  
  # -----------------------------------------------

  data.enriched.kungliga <- list(df.preprocessed = df.preprocessed,
                                 update.fields = update.fields,
                                 conversions = conversions) 


  return (data.enriched.kungliga)

}
