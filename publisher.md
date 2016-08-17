---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-08-17"
output: markdown_document
---


### Publishers

 * 16699 [unique publishers](output.tables/publisher_accepted.csv)

 * 159230 documents have unambiguous publisher information (41%). 

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
|<Author>              |   3848|  194712.7|
|åhlen & åkerlund      |   2117|  352297.4|
|almqvist & viksell    |   2131|  330622.2|
|bonnier               |  13635| 2325437.1|
|geber                 |   2430|  290857.0|
|gleerup               |   2699|  230833.0|
|kungliga              |   5339| 1014763.5|
|natur & Coultur       |   2318|  329256.3|
|norstedt              |   6869| 1721512.9|
|vahlström & vidstrand |   3240|  407840.8|


