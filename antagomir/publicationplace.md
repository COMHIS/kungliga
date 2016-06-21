---
title: "Publication place preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-06-21"
output: markdown_document
---

### Publication places

 * 1104 [publication places](output.tables/publication_place_accepted.csv)
 * 23 [publication countries](output.tables/country_accepted.csv) 
 * Publication place is identified for 71947 documents (98%). 
 * Publication country is identified for 67623 documents (92%).
 * 1.1% of the documents could be matched to geographic coordinates (based on the [Geonames](http://download.geonames.org/export/dump/) database). See the [list of places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``98.88``% of the documents have missing geocoordinates.
 * [Places with unknown publication country](output.tables/publication_place_missingcountry.csv) (can be added to [country mappings](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/reg2country.csv))
 * [Ambiguous publication places](output.tables/publication_place_ambiguous.csv)
 * [Potentially ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv) (these may occur in the data in various synonymes and the country is not always clear when multiple countries have a similar place name; the default country is listed first)
 * [Discarded publication places](output.tables/publication_place_discarded.csv) (add to [synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) to accept; or add to [publication place stopwords](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/stopwords_for_place.csv) to completely discard the term)
 * [Conversions from the original to the accepted place names](output.tables/publication_place_conversion_nontrivial.csv)

Top-20 publication places are shown together with the number of documents.

<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />


### Top publication countries	


```
## Error in .check_names_df(x, j): undefined columns: country
```



|Country      | Documents (n)| Fraction (%)| NA| NA|
|:------------|-------------:|------------:|--:|--:|
|volnumber    |     0.0000000|    100.00000|  0|  1|
|parts        |     0.0000000|    100.00000|  0|  1|
|uncontrolled |     0.0000000|    100.00000|  0|  1|
|note_granter |     0.0013666|     99.99863|  1|  2|
|note_year    |     0.0013666|     99.99863|  1|  2|
|holder       |     0.0013666|     99.99863|  1|  2|

