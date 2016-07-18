message("Enrich Kungliga")

# Publisher
df.preprocessed$publisher <- harmonize_publisher_generic(df.preprocessed, languages = c("swedish"))

