# Convert to polished language names as in
# http://www.loc.gov/marc/languages/language_code.html
# TODO: XML version available, read directly in R:
# see http://www.loc.gov/marc/languages/
abrv <- read.csv("language_abbreviations.csv", sep = "\t", header = TRUE, encoding = "UTF-8")
m008 <- mark_languages(df.orig$language_008, abrv)
m041 <- mark_languages(df.orig$language_041a, abrv)

df.polished$language_primary <- m008$language_primary
df.polished$language_all <- apply(cbind(as.character(m008$languages), as.character(m041$languages)), 1, function (x) {paste(unlist(unique(strsplit(paste(na.omit(x), collapse =";"),";"))), collapse=";")})
df.polished$language_other <- gsub(";", ";", stringr::str_split_fixed(df.polished$language_all, ";", n = 2)[,2])
df.polished$language_vernacular_all <- grepl("Swedish", df.polished$language_all)
df.polished$language_vernacular_primary <- grepl("Swedish", df.polished$language_primary)
df.polished$language_vernacular_secondary <- grepl("Swedish", df.polished$language_other)
df.polished$language_latin_primary <- grepl("Latin", df.polished$language_primary)
df.polished$language_latin_secondary <- grepl("Latin", df.polished$language_other)

df.polished$multilingual <- grepl(";", df.polished$language_all)

