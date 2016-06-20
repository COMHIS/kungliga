---
title: "Publication place preprocessing summary"
author: "Lahti, Roivainen, Tolonen"
date: "2016-06-21"
output: markdown_document
---

### Publication places

 * 4916 [publication places](output.tables/publication_place_accepted.csv)
 * 37 [publication countries](output.tables/country_accepted.csv) 
 * Publication place is identified for 368800 documents (99%). 
 * Publication country is identified for 329987 documents (89%).
 * 1.5% of the documents could be matched to geographic coordinates (based on the [Geonames](http://download.geonames.org/export/dump/) database). See the [list of places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``98.49``% of the documents have missing geocoordinates.
 * [Places with unknown publication country](output.tables/publication_place_missingcountry.csv) (can be added to [country mappings](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/reg2country.csv))
 * [Ambiguous publication places](output.tables/publication_place_ambiguous.csv)
 * [Potentially ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv) (these may occur in the data in various synonymes and the country is not always clear when multiple countries have a similar place name; the default country is listed first)
 * [Discarded publication places](output.tables/publication_place_discarded.csv) (add to [synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) to accept; or add to [publication place stopwords](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/stopwords_for_place.csv) to completely discard the term)
 * [Conversions from the original to the accepted place names](output.tables/publication_place_conversion_nontrivial.csv)

Top-20 publication places are shown together with the number of documents.

<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />


### Top publication countries


```
## Error in Math.factor(structure(c(33L, 32L, 31L, 30L, 29L, 28L, 27L, 26L, : 'round' not meaningful for factors
```



|Country |Documents (n) |Fraction (%)      |
|:-------|:-------------|:-----------------|
|Sweden  |281050        |75.696567326986   |
|Finland |20921         |5.63475497259518  |
|Germany |7161          |1.92870705792047  |
|Denmark |4509          |1.21443096273752  |
|USA     |3255          |0.876685026327484 |
|Norway  |2950          |0.794537888683895 |

