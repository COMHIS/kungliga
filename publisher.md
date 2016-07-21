---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-07-21"
output: markdown_document
---


### Publishers

 * 19923 [unique publishers](output.tables/publisher_accepted.csv)

 * 56799 documents have unambiguous publisher information (15%). 

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

|publisher          | titles|     paper|
|:------------------|------:|---------:|
|5486               |    373| 227541.32|
|5525               |    186|  98072.22|
|Almqvist & Wiksell |    212| 111289.06|
|Bonnier            |    405| 137718.19|
|författare         |    166|  33897.48|
|Fritze             |    158|  30734.38|
|Gleerup            |    228|  60234.81|
|Häggström          |    169| 104965.62|
|kungliga           |    311|  69104.51|
|Norstedt           |    362| 187040.62|


