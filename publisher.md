---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2017-11-14"
output: markdown_document
---


### Publishers

 * 16968 [unique publishers](output.tables/publisher_accepted.csv)

 * 167212 documents have unambiguous publisher information (43.3%). This includes documents identified as self-published; the author name is used as the publisher in those cases (if known).

 * 11 documents are identified as self-published (0%). 

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

|publisher             | titles|       paper|
|:---------------------|------:|-----------:|
|<Author>              |   3834|   190476.17|
|Almqvist & Wiksell    |   2133|   373330.38|
|Bonnier               |  13381|  2424862.41|
|Geber                 |   2368|   296413.54|
|Gleerup               |   2698|   240271.18|
|Kungliga et           |   5332| 22618864.32|
|Natur & kultur        |   2323|   346846.96|
|Norstedt              |   6696|  1900777.91|
|Riksdagen             |   3453|     2638.89|
|Wahlström & Widstrand |   3239|   432169.70|


### Corporates

Summaries of the corporate field.

 * 6474 [unique corporates](output.tables/corporate_accepted.csv)

 * 35002 documents have unambiguous corporate information (9.1%). 

 * [Discarded corporate entries](output.tables/corporate_discarded.csv)

 * [Conversions from original to final names](output.tables/corporate_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common corporates are shown with the number of documents. 

![plot of chunk summarycorporate2](figure/summarycorporate2-1.png)



