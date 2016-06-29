---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-06-29"
output: markdown_document
---


### Publishers

 * 19746 [unique publishers](output.tables/publisher_accepted.csv)

 * 384188 documents have unambiguous publisher information (100%). 

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
|                      | 201245| 35.31|
|Bonnier               |  13623|  1.34|
|Förf                  |   2917|  0.08|
|Geber                 |   2427|  0.17|
|Gleerup               |   2696|  0.13|
|Kongl. tryckeriet     |   5123|  0.51|
|Norstedt              |   6840|  1.01|
|Riksdagen             |   3466|  0.00|
|Sverige               |  11644|  2.85|
|Wahlström & Widstrand |   3205|  0.23|
