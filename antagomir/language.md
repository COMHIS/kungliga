---
title: "Language summaries"
author: "Leo Lahti"
date: "2016-06-26"
output: markdown_document
---

## Language

 * 97 unique languages
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 259 docs (0.07%) with multiple languages
 * 118256 docs (31.85%) with no recognized language 
 * [Discarded languages](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages


|Language | Documents (n)| Fraction (%)|
|:--------|-------------:|------------:|
|Swedish  |        203937|         80.7|
|German   |         12129|          4.8|
|English  |          7389|          2.9|
|Latin    |          7100|          2.8|
|French   |          5180|          2.0|
|Finnish  |          4390|          1.7|

