---
title: "Pagecount preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-09-18"
output: markdown_document
---




## Page counts

  * Page count missing and estimated for 2031 documents (0.5%).

  * Page count missing and could not be estimated for 147340 documents (38.2%).

  * Page count updated for 0 documents.
  
  * [Conversions from raw data to final page count estimates](output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](output.tables/page_conversion_table_full.csv)-->

  * [Discarded pagecount info](output.tables/pagecount_discarded.csv) For these cases the missing/discarded page count was estimated based on average page count estimates for [single volume](mean_pagecounts_singlevol.csv), [multi-volume](mean_pagecounts_multivol.csv) and [issues](mean_pagecounts_issue.csv), calculated from those documents where original pagecount info is available.

  * [Automated tests for page count conversions](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/tests_polish_physical_extent.csv)


Left: Gatherings vs. overall pagecounts (original + estimated). Right: Only the estimated page counts (for the 2031 documents that have missing pagecount info in the original data):

<img src="figure/pagecount-size-estimated-1.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" /><img src="figure/pagecount-size-estimated-2.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" />


<!--

## Average page counts (only works in CERL now)

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol|median.pages.singlevol | n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|:----------------------|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|2fo           |                  NaN|NA                     |        1858|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|4to           |                  NaN|NA                     |       32051|                  NA|                    NA|         NA|              NaN|                 NA|       7|
|6to           |                  NaN|NA                     |          28|                  NA|                    NA|         NA|              NaN|                 NA|       1|
|8long         |                  NaN|NA                     |          14|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|8vo           |                  NaN|NA                     |       25060|                   1|                     1|         95|                1|                  1|      29|
|12long        |                  NaN|NA                     |           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|12mo          |                  NaN|NA                     |        3288|                 NaN|                    NA|         20|              NaN|                 NA|       3|
|16mo          |                  NaN|NA                     |        1599|                 NaN|                    NA|          6|               NA|                 NA|      NA|
|18mo          |                  NaN|NA                     |          95|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|24mo          |                  NaN|NA                     |         171|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|32mo          |                  NaN|NA                     |          32|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|48mo          |                  NaN|NA                     |           7|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|64mo          |                  NaN|NA                     |          35|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|NA            |                  NaN|NA                     |      318072|                   1|                     1|       1941|                1|                  1|     622|

![plot of chunk size-pagecountsmulti2](figure/pagecount-size-pagecountsmulti2-1.png)

-->
