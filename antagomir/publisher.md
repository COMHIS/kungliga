---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-06-28"
output: markdown_document
---


### Publishers

 * 17661 [unique publishers](output.tables/publisher_accepted.csv)

 * 347510 documents have unambiguous publisher information (100%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count


```
## Warning: Removed 5 rows containing missing values (position_stack).
```

![plot of chunk summaryTop10pubtimeline](figure/summaryTop10pubtimeline-1.png)



Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher             | titles| paper|
|:---------------------|------:|-----:|
|                      | 187194| 23.64|
|Bonnier               |  13533|  1.23|
|Förf                  |   2909|  0.08|
|Geber                 |   2416|  0.17|
|Gleerup               |   2671|  0.13|
|Lindblad              |   2089|  0.07|
|Natur & Coultur       |   2308|  0.19|
|Norstedt              |   6771|  0.94|
|Riksdagen             |   3465|  0.00|
|Wahlström & Widstrand |   3200|  0.23|
