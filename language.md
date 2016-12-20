---
title: "Language summaries"
author: "Leo Lahti"
date: "2016-09-30"
output: markdown_document
---

## Language

 * 96 [unique languages](output.tables/language_accepted.csv)
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 275 multilingual documents (0.07%)  
 * 124502 docs (32.27%) with empty or [unrecognized language](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages

Number of documents assigned with each language. For a complete list,
see [accepted languages](output.tables/language_accepted.csv).


|Language | Documents (n)| Fraction (%)|
|:--------|-------------:|------------:|
|Swedish  |        210902|         80.8|
|German   |         12588|          4.8|
|English  |          7572|          2.9|
|Latin    |          7208|          2.8|
|French   |          5326|          2.0|
|Finnish  |          4421|          1.7|

