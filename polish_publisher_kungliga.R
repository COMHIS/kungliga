#' @title Polish Publisher Kungliga
#' @description Main handler for publisher fields.
#' @param datasource String denoting catalog: "fennica", "kungliga"...
#' @param df.orig Data frame with raw data
#' @return Data frame with orig, mod
#' @export
#' @author Hege Roivainen \email{hege.roivainen@@gmail.com}
#' @references See citation("bibliographica")
#' @keywords utilities
polish_publisher_kungliga <- function (df.orig) {

  # TODO : one way to speed up is to only consider unique entries. 

  # TODO: Get necessary function names, tables etc. from a single csv-file!
    languages <- c("swedish")
    inds <- integer(length(0))
    publication_year <- df.orig[, c("publication_year", "publication_year_from", "publication_year_from")]
    raw_publishers <- df.orig$publisher
    raw_publishers[which(is.na(raw_publishers))] <- df.orig$corporate[which(is.na(raw_publishers))]
  
  df <- data.frame(list(row.index = 1:nrow(df.orig)))
  
  # Initiate pubs
  pubs <- data.frame(alt=character(length=nrow(df.orig)),
       	             pref=character(length=nrow(df.orig)),
		     match_method=integer(length=nrow(df.orig)),
		     stringsAsFactors = FALSE)
  
  # The enrichment part
  # TODO: enrichments should be in a separate function for clarity, as with the other fields in the pipeline.
  # But this is ok an very useful for now  
  enriched_pubs <- data.frame(alt=character(length=0),
                              pref=character(length=0),
			      match_methods=character(length=0),
			      stringsAsFactors=FALSE)
  enriched_inds <- which(enriched_pubs$alt!="")
  
  # Check if this is valid
  pubs$alt[enriched_inds] <- enriched_pubs$alt[enriched_inds]
  
  # CHECK THE contents of pubs$alt[1:10] !!!!
  # The combination of enriched part & the unprocessed part
  combined_pubs <- clean_publisher(raw_publishers, languages=languages)

  # CHECK so far we use Fennica processing also with kungliga
  combined_pubs <- harmonize_publisher_fennica2(combined_pubs, publication_year, languages=languages)[,1:2]

  # Convert S.N. into NA 
  f <- "NA_publishers.csv"
  synonymes <- read.csv(file=f, sep="\t", fileEncoding="UTF-8")
  combined_pubs$mod <- map(combined_pubs$mod, synonymes, mode="recursive")
  mod <- combined_pubs$mod
  mod[mod == ""] <- NA

  # Capitalize
  mod <- capitalize(mod)

  return(mod)

}
