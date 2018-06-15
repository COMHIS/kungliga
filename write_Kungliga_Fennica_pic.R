library(tidyr)
library(ggplot2)

write_Kungliga_Fennica_pic <- function(fennica, 
                           kungliga, 
                           not_in_fennica,
                           row_names,
                           outputfile,
                           legend_labels=c("Fennica (printed anywhere)", "Kungliga (printed in Finland)", "In Kungliga, but not in Fennica"),
                           title="Number of records in Fennica and Kungliga",
                           subtitle="Potential gain to Fennica by adding records from Kungliga shown on top of the bars",
                           xtitle="Decade",
                           ytitle="Number of records"
                           
                           ) {

  df_kpl <- data.frame(Fennica=fennica, Kungliga=kungliga, prev_unknown=not_in_fennica)
  row.names(df_kpl) <- row_names
  df <- cbind(decade=row.names(df_kpl), df_kpl)
  data_long <- gather(df, a, kpl, Fennica:prev_unknown, factor_key = TRUE )
  
  
  options(digits = 4)
  gain <- df$prev_unknown / (df$Fennica + df$prev_unknown)
  
  
  gain <- unlist(lapply(gain, FUN = function(x) {c("", "", paste0(formatC(100*x,digits = 1, format="f"), "%"))}))

  data_long2 <- cbind(data_long, gain)

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
    
    scale_fill_discrete("", labels=legend_labels) +
    labs(title=title, 
         subtitle=subtitle,
         x=xtitle, 
         y=ytitle)
  png(filename = outputfile, width = 1000)
  plot.new()
  plot(p)
  
  dev.off()
  
  
}