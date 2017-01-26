---
title: "Language summaries"
author: "Leo Lahti"
date: "2017-01-26"
output: markdown_document
---

## Language

 * 97 [unique languages](output.tables/language_accepted.csv)
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 362 multilingual documents (0.1%)  
 * 5671 docs (1.52%) with empty or [unrecognized language](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages

Number of documents assigned with each language. For a complete list,
see [accepted languages](output.tables/language_accepted.csv).


|Language | Documents (n)| Fraction (%)|
|:--------|-------------:|------------:|
|Swedish  |        311317|         85.0|
|German   |         13852|          3.8|
|English  |         10566|          2.9|
|Latin    |          6985|          1.9|
|French   |          5829|          1.6|
|Finnish  |          4404|          1.2|

