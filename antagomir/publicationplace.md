---
title: "Publication place preprocessing summary"
author: "Lahti, Roivainen, Tolonen"
date: "2016-06-20"
output: markdown_document
---

### Publication places

 * 4919 [publication places](output.tables/publication_place_accepted.csv)
 * 37 [publication countries](output.tables/country_accepted.csv) 
 * Publication place is identified for 368834 documents (99%). 
 * Publication country is identified for 330013 documents (89%).
 * 1.5% of the documents could be matched to geographic coordinates (based on the [Geonames](http://download.geonames.org/export/dump/) database). See the [list of places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``98.49``% of the documents have missing geocoordinates.
 * [Places with unknown publication country](output.tables/publication_place_missingcountry.csv) (can be added to [country mappings](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/reg2country.csv))
 * [Ambiguous publication places](output.tables/publication_place_ambiguous.csv)
 * [Potentially ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv) (these may occur in the data in various synonymes and the country is not always clear when multiple countries have a similar place name; the default country is listed first)
 * [Discarded publication places](output.tables/publication_place_discarded.csv) (add to [synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) to accept; or add to [publication place stopwords](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/stopwords_for_place.csv) to completely discard the term)
 * [Conversions from the original to the accepted place names](output.tables/publication_place_conversion_nontrivial.csv)

Top-20 publication places are shown together with the number of documents.

<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />


### Top publication countries


|Country |Documents (n) | Fraction (%)|NA |         NA|
|:-------|:-------------|------------:|:--|----------:|
|Sweden  |A             |       281068|A  | 75.6940760|
|Finland |B             |        20922|B  |  5.6344780|
|Germany |C             |         7163|C  |  1.9290587|
|Denmark |D             |         4510|D  |  1.2145825|
|USA     |E             |         3255|E  |  0.8766000|
|Norway  |F             |         2950|F  |  0.7944609|

