---
title: "Language summaries"
author: "Leo Lahti"
date: "2016-07-21"
output: markdown_document
---

## Language

 * 44 unique languages
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 22 multilingual documents (0.11%)  
 * 533 docs (2.66%) with no recognized language 
 * [Discarded languages](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages


|Language | Documents (n)| Fraction (%)|
|:--------|-------------:|------------:|
|Swedish  |         16481|         84.7|
|German   |           724|          3.7|
|English  |           601|          3.1|
|Latin    |           379|          1.9|
|French   |           292|          1.5|
|Finnish  |           252|          1.3|

