---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-07-21"
output: markdown_document
---


### Publishers

 * 19889 [unique publishers](output.tables/publisher_accepted.csv)

 * 182803 documents have unambiguous publisher information (47%). 

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

|publisher             | titles|     paper|
|:---------------------|------:|---------:|
|3815                  |   3450|       0.0|
|5486                  |  10390| 4417180.5|
|Bonnier               |  13616| 2325437.1|
|författare            |   3835|  189329.4|
|Geber                 |   2428|  290857.0|
|Gleerup               |   2699|  232355.3|
|kungliga              |   5305| 1014763.5|
|Natur & Coultur       |   2316|  329256.3|
|Norstedt              |   6825| 1705638.9|
|Wahlström & Widstrand |   3237|  407840.8|


