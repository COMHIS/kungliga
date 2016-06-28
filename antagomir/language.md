---
title: "Language summaries"
author: "Leo Lahti"
date: "2016-06-28"
output: markdown_document
---

## Language

 * 97 unique languages
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 235 docs (0.07%) with multiple languages
 * 123289 docs (35.35%) with no recognized language 
 * [Discarded languages](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages


|Language | Documents (n)| Fraction (%)|
|:--------|-------------:|------------:|
|Swedish  |        179555|         79.7|
|German   |         11826|          5.2|
|English  |          7490|          3.3|
|French   |          4941|          2.2|
|Latin    |          4446|          2.0|
|Danish   |          4254|          1.9|

