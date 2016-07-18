---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-07-18"
output: markdown_document
---


### Publishers

 * 17751 [unique publishers](output.tables/publisher_accepted.csv)

 * 133439 documents have unambiguous publisher information (35%). 

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

|publisher           | titles|    paper|
|:-------------------|------:|--------:|
|norstedt            |   7251| 17002.13|
|ahlen akerlund      |   2110|  4244.44|
|almqvist viksell    |   2073|  4157.12|
|b vahlström         |   1901|   252.26|
|geber               |   2414|  2458.16|
|gleerup             |   2670|  2560.07|
|lindblad            |   2160|  1662.33|
|natur kultur        |   2313|  3089.58|
|tiden               |   1786|  2245.49|
|vahlström vidstrand |   3208|  5049.83|


