---
title: "Language summaries"
author: "Leo Lahti"
date: "2016-09-19"
output: markdown_document
---

## Language

 * 97 [unique languages](output.tables/language_accepted.csv)
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 367 multilingual documents (0.1%)  
 * 10741 docs (2.78%) with empty or [unrecognized language](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages

Number of documents assigned with each language. For a complete list,
see [accepted languages](output.tables/language_accepted.csv).


|Language | Documents (n)| Fraction (%)|
|:--------|-------------:|------------:|
|Swedish  |        318288|         84.9|
|German   |         14341|          3.8|
|English  |         10795|          2.9|
|Latin    |          7351|          2.0|
|French   |          5972|          1.6|
|Finnish  |          4434|          1.2|

