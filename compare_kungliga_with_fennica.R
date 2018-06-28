library(stringdist)
decades <- list()
kungligas <- list()

for (decade in unique(finskit$publication_decade[order(finskit$publication_decade)])) {
  inds_to_remove <- c()
  
  f_t <- fennica[which(fennica$publication_decade==decade)
                 ,c("author_name", "title", "title_remainder", "publication_year", "publication_decade", "publication_place", "publisher", "language")]
  if (nrow(f_t) == 0) {
    next
  }
  if (is.na(decade)) {
    decade <- "NA"
  }
  print(nrow(f_t))
  print(decade)
  print("________")
  f_t$catalog <- "fennica"
  k_t <- finskit[which(finskit$publication_decade==decade)
                 ,c("author_name", "title", "title_remainder","publication_year", "publication_decade", "publication_place", "publisher", "language")]
  k_t$catalog <- "kungliga"
  f_t_short_title <- substr(f_t$title, start=1, stop=40)
  k_t_short_title <- substr(k_t$title, start=1, stop=40)
  #f_must_match <- paste0(f_t$publication_year, " ::: ", f_t$language, " ::: ", f_t$publication_place, " ::: ", f_t$author_name, " ::: ", f_t_short_title)
  #k_must_match <- paste0(k_t$publication_year, " ::: ", k_t$language, " ::: ", k_t$publication_place, " ::: ", k_t$author_name, " ::: ", k_t_short_title)
  f_must_match <- paste0(f_t$publication_year, " ::: ", f_t$language, " ::: ", f_t$publication_place)
  k_must_match <- paste0(k_t$publication_year, " ::: ", k_t$language, " ::: ", k_t$publication_place)
  
  f_fuzzy <- paste0(f_t$author_name, " ::: ", f_t_short_title)
  k_fuzzy <- paste0(k_t$author_name, " ::: ", k_t_short_title)
  #unique_f_must_match <- unique(f_must_match)
  
  # Remove exact and really close matches
  for (i in 1:length(k_must_match)) {
    inds_to_match <- which(f_must_match==k_must_match[i])
    matched <- f_fuzzy[amatch(x=k_fuzzy[i], table=f_fuzzy, method="lv", maxDist=4)]
    if ((!is.null(matched)) & (!is.na(matched)) & (matched != "")) {
      print(matched)
      inds_to_remove <- union(inds_to_remove, i)
    }
  }
  if (length(inds_to_remove) < 0) {
    print(inds_to_remove)
    k_t[inds_to_remove] <- NULL
    k_must_match[inds_to_remove] <- NULL
  }
  if (nrow(k_t) > 0 ) {
    #which((k_must_match %in% f_must_match)==FALSE)
    combo <- rbind(f_t, k_t)
    combo <- combo[,c("publication_year", "language", "publication_place", "catalog", "author_name", "title", "publisher")][with(combo,order(publication_year, language, publication_place, catalog, author_name, title, publisher)),]
    decades[[as.character(decade)]] <- combo
    kungligas[[as.character(decade)]] <- k_must_match
    write.csv2(combo, paste0("C:\\Users\\Hege\\Työ\\Kungliga\\Output\\tracking_missing_fennica_", decade, ".csv"))
  }
}


for (i in 1:length(decades)) {
  l <- (names(decades[i]))
#lapply(decades, FUN=function(l) {
 # print(eval.parent)
  write.csv2(data.frame(decades[i]), paste0("C:\\Users\\Hege\\Työ\\Kungliga\\Output\\tracking_missing_fennica_", l, ".csv"))
}

saveRDS(finskit, "C:\\Users\\Hege\\Työ\\Kungliga\\finskit_puuttuu_Kungligasta.RDS")
nrow(finskit)
finskit <- finskit[!finskit$publication_place=="Kristiinankaupunki",]
finskit <- finskit[!finskit$publication_place=="Haunia",]
finskit <- finskit[!finskit$publication_place=="Messina",]
finskit <- finskit[!finskit$publication_place=="Haaparanta",]

library(tidyr)

for (decade in seq(1770, 1890, by=10)) {print(length(which(fennica$publication_decade==decade)))}
for (decade in seq(1770, 1890, by=10)) {print(length(which(finskit$publication_decade==decade)))}

fennicas <- c(1833, 2005, 2054, 2354, 515, 576, 391, 552, 911, 1117, 2105, 4435, 9432)
finskit_kpl <- c(134,119,121,254,139,247,131,279,355,484,531,967,1416)
not_kpl <- c(10, 11, 11, 84, 96, 204,107,217,269,346,392,523,428)
df_kpl <- data.frame(Fennica=fennicas, Kungliga=finskit_kpl, prev_unknown=not_kpl)
row.names(df_kpl) <- c("1770", "1780", "1790", "1800", "1810", "1820", "1830", "1840", "1850", "1860", "1870", "1880", "1890") 
df <- cbind(decade=row.names(df_kpl), df_kpl)
data_long <- gather(df, a, kpl, Fennica:prev_unknown, factor_key = TRUE )


df_addition <- data.frame(Fennica=fennicas, nas1=rep("", 8), nas2=rep("", 8))
df_addition <- cbind(decade=row.names(df_kpl), df_addition)
data_addition <- gather(df_addition, a, kpl, Fennica:nas2, factor_key=TRUE)

gain <- paste0(as.integer(10000 * (df$prev_unknown / (df$Fennica + df$prev_unknown))), "%")
#data_add <- c("", "", "576", "", "", "391", "", "", "552", "", "", "911", "", "", "1117", "", "", "2105", "", "", "4435", "", "", "9432")
gain <- c("","", "0.5%", "", "", "0.5%", "", "", "0.5%", "", "", "3.4%", "", "", "15.7%", "", "", "26.2%", "", "", "21.5%", "", "", "28.2%", "", "", "22.8%", "", "", "23.7%", "", "", "15.7%", "", "", "10.5%", "", "", "4.3%")
data_long2 <- cbind(data_long, gain)
png(filename = "C:\\Users\\Hege\\Työ\\Kungliga\\Output\\Number of records in Fennica and Kungliga4.png", width = 1000)
p <- ggplot(data=data_long2, aes(x=decade, y=kpl, fill=a)) +
  geom_bar(stat="identity", position = "dodge") +
  
  theme(legend.title=element_text(size=12, color="red"), axis.title.x = element_text(size=18), axis.title.y = element_text(size=18),
        legend.text = element_text(size=14), 
        axis.text.x = element_text(size=12), 
        axis.text.y = element_text(size=12),
        plot.title = element_text(size=20),
        plot.subtitle = element_text(size=14)
        ) +
  
  geom_text(data=data_long2, aes(x=data_long2$decade, y=as.integer(data_long2$kpl)+500, group=data_long2$a),
            label = format(data_long2$gain, nsmall = 0, digits=1, scientific = FALSE),
            position=position_dodge(0.9)) +

  scale_fill_discrete("", labels=c("Fennica (printed anywhere)", "Kungliga (printed in Finland)", "In Kungliga, but not in Fennica")) +
    labs(title="Number of records in Fennica and Kungliga", 
       x="Decade", y="Number of records")
plot.new()
plot(p)
text("Percentages on top of the bars\nindicate the potential \nincrease of Fennica records\nif Kungliga records were added.", x=0.82, y=0.8, adj=0, col="red")
#text("indicate the potential increase of\nFennica records", x=0.8, y=0.75, adj=0, col="red")
#text("if Kungliga records were added", x=0.8, y=0.7, adj=0, col="red")
dev.off()
#pdf(ret,file = "C:\\Users\\Hege\\Työ\\Kungliga\\Output\\Number of records in Fennica and Kungliga.pdf")




missing <- read.csv("C:\\Users\\Hege\\Työ\\Kungliga\\Output\\In_Kungliga_but_missing_from_Fennica - pre1820.csv", fileEncoding = "UTF-8", sep="\t")
missing$Author.name <- as.character(missing$Author.name)
missing$Author.name[which(is.na(as.character(missing$Author.name)))] <- "NA"
missing$Language <- as.character(missing$Language)
missing$Language[which(is.na(missing$Language))] <- "NA"
missing$Publication.place <- as.character(missing$Publication.place)
missing$Publication.place[which(is.na(missing$Publication.place))] <- "NA"

kb$author_name <- as.character(kb$author_name)
kb$author_name[which(is.na(as.character(kb$author_name)))] <- "NA"
kb$language <- as.character(kb$language)
kb$language[which(is.na(kb$language))] <- "NA"
kb$publication_place <- as.character(kb$publication_place)
kb$publication_place[which(is.na(kb$publication_place))] <- "NA"


pagecount <- data.frame(Pages=rep("", nrow(missing)), stringsAsFactors = FALSE)
for (i in 1:nrow(missing)) {
  
    #print(x)
    
    pagec <- kb$pagecount[which(kb$publication_year==x$Publication.year[i] & 
                                      kb$author_name==x$Author.name[i] & 
                                      kb$title==x$Title[i] & 
                                      kb$publisher==x$Publisher[i] & 
                                      kb$language==x$Language[i] & 
                                      kb$publication_place == x$Publication.place[i])][1]
    print(paste0(pagec, " :::: ", i))
    pagecount$Pages[i] <- pagec
}
missing2 <- cbind(missing, Pages=pagecount$Pages)
write.csv(missing2, file = "C:\\Users\\Hege\\Työ\\Kungliga\\Output\\In_Kungliga_but_missing_from_Fennica - pre1820b.csv",fileEncoding = "UTF-8")
