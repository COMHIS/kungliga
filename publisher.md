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

|publisher           | titles|      paper|
|:-------------------|------:|----------:|
|norstedt            |   7251| 3544323.35|
|ahlen akerlund      |   2110|  499099.65|
|almqvist viksell    |   2073|  633013.19|
|b vahlström         |   1901|   30410.76|
|geber               |   2414|  581714.06|
|gleerup             |   2670|  464496.18|
|lindblad            |   2160|  347976.22|
|natur kultur        |   2313|  658512.67|
|tiden               |   1786|  360247.22|
|vahlström vidstrand |   3208|  777831.94|


