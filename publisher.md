---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-07-20"
output: markdown_document
---


### Publishers

 * 18118 [unique publishers](output.tables/publisher_accepted.csv)

 * 166376 documents have unambiguous publisher information (43%). 

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
|Almqvist & Wiksell    |   2139|  339788.9|
|Bonnier               |  13643| 2327530.9|
|författare            |   3835|  189329.4|
|Geber                 |   2428|  290857.0|
|Gleerup               |   2701|  232355.3|
|kungliga              |   5333| 1095709.6|
|Natur & Coultur       |   2316|  329256.3|
|Norstedt              |   7370| 1767017.4|
|Riksdagen             |   3453|       0.0|
|Wahlström & Widstrand |   3237|  407840.8|


