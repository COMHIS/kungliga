---
title: "Preprocessing overview"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-06-28"
output: markdown_document
---

# Preprocessing summary

## Specific fields

  * [Author info](author.md)
  * [Gender info](gender.md)
  * [Publisher info](publisher.md)
  * [Publication geography](publicationplace.md)
  * [Publication year info](publicationyear.md)
  * [Titles](title.md)  
  * [Page counts](pagecount.md)
  * [Physical dimension](dimension.md)    
  * [Document and subject topics](topic.md)
  * [Languages](language.md)

## Field conversions

This documents the conversions from raw data to the final preprocessed version (accepted, discarded, conversions). Only some of the key tables are explicitly linked below. The complete list of all summary tables is [here](output.tables/).

## Annotated documents

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


|field name                                   | missing (%)| available (%)| available (n)| unique (n)|
|:--------------------------------------------|-----------:|-------------:|-------------:|----------:|
|volnumber                                    |       100.0|           0.0|             0|          1|
|publication_frequency                        |       100.0|           0.0|             0|          1|
|holder                                       |       100.0|           0.0|             0|          1|
|parts                                        |       100.0|           0.0|             1|          2|
|note_year                                    |       100.0|           0.0|             3|          4|
|uncontrolled                                 |       100.0|           0.0|             3|          4|
|note_granter                                 |       100.0|           0.0|             7|          7|
|note_510c                                    |       100.0|           0.0|            17|         17|
|width.original                               |        99.9|           0.1|           323|         50|
|successor                                    |        99.8|           0.2|           601|        599|
|note_source                                  |        99.8|           0.2|           678|        643|
|physical_accomppanied                        |        99.6|           0.4|          1303|        791|
|volcount                                     |        99.6|           0.4|          1563|         25|
|publication_interval                         |        99.5|           0.5|          1849|       1490|
|866x                                         |        99.4|           0.6|          2120|        209|
|772c                                         |        99.0|           1.0|          3483|       1048|
|650y                                         |        98.9|           1.1|          3852|        939|
|subject_geography                            |        98.6|           1.4|          5026|       1673|
|height.original                              |        98.5|           1.5|          5295|         83|
|latitude                                     |        98.4|           1.6|          5556|         18|
|longitude                                    |        98.4|           1.6|          5556|         18|
|650x                                         |        98.2|           1.8|          6178|       1870|
|publication_year_till                        |        97.5|           2.5|          8597|        338|
|110a                                         |        97.5|           2.5|          8844|       6370|
|title_uniform                                |        97.2|           2.8|          9712|       5999|
|650z                                         |        96.6|           3.4|         11749|       2166|
|772d                                         |        96.1|           3.9|         13588|       3190|
|772t                                         |        96.1|           3.9|         13670|       4284|
|corporate                                    |        95.2|           4.8|         16575|       4946|
|260e                                         |        93.7|           6.3|         21935|        661|
|subject_topic                                |        92.5|           7.5|         26258|      12834|
|uncontrolled_title                           |        91.5|           8.5|         29798|      26171|
|700d                                         |        90.7|           9.3|         32266|      10131|
|obl                                          |        90.7|           9.3|         32282|          3|
|paper.consumption.km2                        |        90.5|           9.5|         33135|       3596|
|440v                                         |        90.4|           9.6|         33504|      10174|
|width                                        |        89.2|          10.8|         37514|         60|
|height                                       |        89.2|          10.8|         37514|         85|
|area                                         |        89.2|          10.8|         37514|        181|
|first_edition                                |        87.8|          12.2|         42435|          3|
|physical_details                             |        86.5|          13.5|         47163|        816|
|260f                                         |        85.1|          14.9|         52076|       6107|
|700a                                         |        85.0|          15.0|         52494|      29578|
|440a                                         |        84.4|          15.6|         54434|      25265|
|976a                                         |        73.2|          26.8|         93332|      26760|
|976b                                         |        73.2|          26.8|         93332|      27413|
|245c                                         |        71.4|          28.6|         99920|      75910|
|note_general                                 |        70.8|          29.2|        102001|      66880|
|900d                                         |        65.9|          34.1|        118990|      18451|
|900u                                         |        64.7|          35.3|        123090|      22803|
|900a                                         |        64.7|          35.3|        123091|      23077|
|title_remainder                              |        55.2|          44.8|        156294|     122045|
|author_death                                 |        55.0|          45.0|        157044|        534|
|author_gender                                |        53.5|          46.5|        162265|          4|
|author_birth                                 |        51.0|          49.0|        170811|        570|
|pagecount.orig                               |        40.1|          59.9|        208773|       1385|
|pagecount                                    |        39.7|          60.3|        210226|       1385|
|language                                     |        35.3|          64.7|        225515|         99|
|852z                                         |        32.8|          67.2|        234555|      14867|
|self_published                               |        23.4|          76.6|        267214|          2|
|author_name                                  |        23.1|          76.9|        268152|      85606|
|author                                       |        23.1|          76.9|        268152|      86780|
|country                                      |        12.7|          87.3|        304551|         38|
|852j                                         |         7.3|          92.7|        323204|     127342|
|publication_place                            |         4.3|          95.7|        333786|       2645|
|publication_year_from                        |         3.8|          96.2|        335616|        461|
|publication_year                             |         3.8|          96.2|        335635|        461|
|publication_decade                           |         3.8|          96.2|        335635|         57|
|dissertation                                 |         1.5|          98.5|        343450|          3|
|synodal                                      |         1.5|          98.5|        343450|          2|
|title                                        |         0.7|          99.3|        346330|     298694|
|publisher                                    |         0.4|          99.6|        347510|      17661|
|language.Swedish                             |         0.0|         100.0|        348804|          2|
|language.English                             |         0.0|         100.0|        348804|          2|
|language.French                              |         0.0|         100.0|        348804|          2|
|language.Danish                              |         0.0|         100.0|        348804|          2|
|language.Latin                               |         0.0|         100.0|        348804|          2|
|language.Icelandic                           |         0.0|         100.0|        348804|          2|
|language.Italian                             |         0.0|         100.0|        348804|          2|
|language.German                              |         0.0|         100.0|        348804|          2|
|language.Russian                             |         0.0|         100.0|        348804|          2|
|language.Norwegian                           |         0.0|         100.0|        348804|          2|
|language.Greek, Ancient (to 1453)            |         0.0|         100.0|        348804|          1|
|language.Old Norse                           |         0.0|         100.0|        348804|          2|
|language.Finnish                             |         0.0|         100.0|        348804|          2|
|language.Pali                                |         0.0|         100.0|        348804|          2|
|language.Estonian                            |         0.0|         100.0|        348804|          2|
|language.Polish                              |         0.0|         100.0|        348804|          2|
|language.Arabic                              |         0.0|         100.0|        348804|          2|
|language.Esperanto                           |         0.0|         100.0|        348804|          2|
|language.Dutch                               |         0.0|         100.0|        348804|          2|
|language.Spanish                             |         0.0|         100.0|        348804|          2|
|language.Latvian                             |         0.0|         100.0|        348804|          2|
|language.Bulgarian                           |         0.0|         100.0|        348804|          2|
|language.Hungarian                           |         0.0|         100.0|        348804|          2|
|language.Afrikaans                           |         0.0|         100.0|        348804|          2|
|language.Japanese                            |         0.0|         100.0|        348804|          2|
|language.Czech                               |         0.0|         100.0|        348804|          2|
|language.Portuguese                          |         0.0|         100.0|        348804|          2|
|language.Serbian                             |         0.0|         100.0|        348804|          2|
|language.Turkish                             |         0.0|         100.0|        348804|          2|
|language.Norwegian (Nynorsk)                 |         0.0|         100.0|        348804|          1|
|language.Low German                          |         0.0|         100.0|        348804|          2|
|language.Gothic                              |         0.0|         100.0|        348804|          2|
|language.Sami                                |         0.0|         100.0|        348804|          2|
|language.Albanian                            |         0.0|         100.0|        348804|          2|
|language.Hebrew                              |         0.0|         100.0|        348804|          2|
|language.No linguistic content               |         0.0|         100.0|        348804|          2|
|language.Khotanese                           |         0.0|         100.0|        348804|          2|
|language.Chinese                             |         0.0|         100.0|        348804|          2|
|language.Ukrainian                           |         0.0|         100.0|        348804|          2|
|language.Ethiopic                            |         0.0|         100.0|        348804|          2|
|language.French, Old (ca. 842-1300)          |         0.0|         100.0|        348804|          1|
|language.Syriac, Modern                      |         0.0|         100.0|        348804|          2|
|language.Amharic                             |         0.0|         100.0|        348804|          2|
|language.Croatian                            |         0.0|         100.0|        348804|          2|
|language.Algonquian (Other)                  |         0.0|         100.0|        348804|          1|
|language.Greek, Modern (1453-)               |         0.0|         100.0|        348804|          1|
|language.Slovenian                           |         0.0|         100.0|        348804|          2|
|language.Romanian                            |         0.0|         100.0|        348804|          2|
|language.Tigrinya                            |         0.0|         100.0|        348804|          2|
|language.Faroese                             |         0.0|         100.0|        348804|          2|
|language.Catalan                             |         0.0|         100.0|        348804|          2|
|language.Provençal (to 1500)                 |         0.0|         100.0|        348804|          1|
|language.Raeto-Romance                       |         0.0|         100.0|        348804|          2|
|language.Sanskrit                            |         0.0|         100.0|        348804|          2|
|language.Lithuanian                          |         0.0|         100.0|        348804|          2|
|language.Zulu                                |         0.0|         100.0|        348804|          2|
|language.Sorbian (Other)                     |         0.0|         100.0|        348804|          1|
|language.Georgian                            |         0.0|         100.0|        348804|          2|
|language.Slovak                              |         0.0|         100.0|        348804|          2|
|language.Yiddish                             |         0.0|         100.0|        348804|          2|
|language.Tigré                               |         0.0|         100.0|        348804|          2|
|language.Lule Sami                           |         0.0|         100.0|        348804|          2|
|language.Kalâtdlisut                         |         0.0|         100.0|        348804|          2|
|language.Armenian                            |         0.0|         100.0|        348804|          2|
|language.Hindi                               |         0.0|         100.0|        348804|          2|
|language.Oriya                               |         0.0|         100.0|        348804|          2|
|language.Ido                                 |         0.0|         100.0|        348804|          2|
|language.Uighur                              |         0.0|         100.0|        348804|          2|
|language.Frisian                             |         0.0|         100.0|        348804|          2|
|language.Korean                              |         0.0|         100.0|        348804|          2|
|language.Kongo                               |         0.0|         100.0|        348804|          2|
|language.Swahili                             |         0.0|         100.0|        348804|          2|
|language.German, Middle High (ca. 1050-1500) |         0.0|         100.0|        348804|          1|
|language.Kinyarwanda                         |         0.0|         100.0|        348804|          2|
|language.Artificial (Other)                  |         0.0|         100.0|        348804|          1|
|language.Macedonian                          |         0.0|         100.0|        348804|          2|
|language.Nilo-Saharan (Other)                |         0.0|         100.0|        348804|          1|
|language.Aramaic                             |         0.0|         100.0|        348804|          2|
|language.English, Middle (1100-1500)         |         0.0|         100.0|        348804|          1|
|language.French, Middle (ca. 1300-1600)      |         0.0|         100.0|        348804|          1|
|language.Oromo                               |         0.0|         100.0|        348804|          2|
|language.Finno-Ugrian (Other)                |         0.0|         100.0|        348804|          1|
|language.Southern Sami                       |         0.0|         100.0|        348804|          2|
|language.Cushitic (Other)                    |         0.0|         100.0|        348804|          1|
|language.Hiligaynon                          |         0.0|         100.0|        348804|          2|
|language.Bantu (Other)                       |         0.0|         100.0|        348804|          1|
|language.Somali                              |         0.0|         100.0|        348804|          2|
|language.Indonesian                          |         0.0|         100.0|        348804|          2|
|language.Romani                              |         0.0|         100.0|        348804|          2|
|language.Malayalam                           |         0.0|         100.0|        348804|          2|
|language.Berber (Other)                      |         0.0|         100.0|        348804|          1|
|language.Kuanyama                            |         0.0|         100.0|        348804|          2|
|language.Welsh                               |         0.0|         100.0|        348804|          2|
|language.Niger-Kordofanian (Other)           |         0.0|         100.0|        348804|          1|
|language.Malagasy                            |         0.0|         100.0|        348804|          2|
|language.Northern Sami                       |         0.0|         100.0|        348804|          2|
|language.Persian                             |         0.0|         100.0|        348804|          2|
|language.Multiple languages                  |         0.0|         100.0|        348804|          2|
|gatherings.original                          |         0.0|         100.0|        348804|         13|
|obl.original                                 |         0.0|         100.0|        348804|          2|
|original_row                                 |         0.0|         100.0|        348804|     348804|
|author_pseudonyme                            |         0.0|         100.0|        348804|          2|
|gatherings                                   |         0.0|         100.0|        348804|         13|
|singlevol                                    |         0.0|         100.0|        348804|          2|
|multivol                                     |         0.0|         100.0|        348804|          2|
|issue                                        |         0.0|         100.0|        348804|          1|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-19.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-20.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.





