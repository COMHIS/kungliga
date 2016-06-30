---
title: "Language summaries"
author: "Leo Lahti"
date: "2016-06-30"
output: markdown_document
---

## Language

 * 97 unique languages
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 14 docs (0.02%) with multiple languages
 * 4406 docs (6.02%) with no recognized language 
 * [Discarded languages](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages


|Language | Documents (n)| Fraction (%)|
|:--------|-------------:|------------:|
|Swedish  |         58016|         84.5|
|Latin    |          5896|          8.6|
|German   |          1888|          2.8|
|French   |          1310|          1.9|
|Finnish  |           403|          0.6|
|English  |           376|          0.5|

