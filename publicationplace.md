---
title: "Publication place preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-06-30"
output: markdown_document
---

### Publication places

 * 302 [publication places](output.tables/publication_place_accepted.csv)
 * 25 [publication countries](output.tables/country_accepted.csv) 
 * Publication place is identified for 70687 documents (97%). 
 * Publication country is identified for 68783 documents (94%).
 * 1.1% of the documents could be matched to geographic coordinates (based on the [Geonames](http://download.geonames.org/export/dump/) database). See the [list of places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``98.88``% of the documents have missing geocoordinates.
 * [Places with unknown publication country](output.tables/publication_place_missingcountry.csv) (can be added to [country mappings](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/reg2country.csv))
 * [Ambiguous publication places](output.tables/publication_place_ambiguous.csv)
 * [Potentially ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv) (these may occur in the data in various synonymes and the country is not always clear when multiple countries have a similar place name; the default country is listed first)
 * [Conversions from the original to the accepted place names](output.tables/publication_place_conversion_nontrivial.csv)
 * [Unknown place names](output.tables/publication_place_todo.csv) These terms do not map to any known place on the [synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv); either because they require further cleaning or have not yet been encountered in the analyses
 * [Discarded place names](output.tables/publication_place_discarded.csv) These terms are potential place names but with a closer check explicitly rejected on the [synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv)
 * [Unit tests for place names](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/tests_place.csv) are automatically checked during package build

Top-20 publication places are shown together with the number of documents.

<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />


### Top publication countries	


|Country | Documents (n)| Fraction (%)|
|:-------|-------------:|------------:|
|Sweden  |         63561|         86.9|
|Finland |          1797|          2.5|
|Germany |          1364|          1.9|
|England |           477|          0.7|
|Denmark |           411|          0.6|
|France  |           240|          0.3|

