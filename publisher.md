---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-07-21"
output: markdown_document
---


### Publishers

 * 2658 [unique publishers](output.tables/publisher_accepted.csv)

 * 6270 documents have unambiguous publisher information (31%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count


```
## Warning: Removed 3 rows containing missing values (position_stack).
```

![plot of chunk summaryTop10pubtimeline](figure/summaryTop10pubtimeline-1.png)



Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher             | titles|    paper|
|:---------------------|------:|--------:|
|488                   |    172| 92985.07|
|Almqvist & Wiksell    |     47|     0.00|
|Bonnier               |    125| 39633.20|
|författare            |     80|  2850.00|
|Geber                 |     53|     0.00|
|Gleerup               |     60| 13835.94|
|kungliga              |    149| 31330.90|
|Lindblad              |     46|     0.00|
|Norstedt              |    103| 11441.23|
|Wahlström & Widstrand |     63| 11236.20|


