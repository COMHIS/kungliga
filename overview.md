---
title: "Preprocessing overview"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2017-01-26"
output: markdown_document
---

# Preprocessing summary

The data spanning years 1457-2012 has been
included and contains 372136 documents (also other
filter may apply depending on the data collection, see the source code
for details.



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

  * 385771 documents in the original raw data
  * 372136 documents in the final preprocessed data (96.47%)

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


|field name                                | missing (%)| available (%)| available (n)| unique (n)|
|:-----------------------------------------|-----------:|-------------:|-------------:|----------:|
|volnumber                                 |       100.0|           0.0|             0|          1|
|parts                                     |       100.0|           0.0|             1|          2|
|holder                                    |       100.0|           0.0|             1|          2|
|uncontrolled                              |       100.0|           0.0|             3|          4|
|note_year                                 |       100.0|           0.0|             4|          5|
|note_granter                              |       100.0|           0.0|             8|          8|
|note_510c                                 |       100.0|           0.0|            47|         45|
|width.original                            |        99.9|           0.1|           326|         51|
|note_source                               |        99.8|           0.2|           725|        666|
|physical_accomppanied                     |        99.6|           0.4|          1308|        794|
|successor                                 |        99.5|           0.5|          1732|       1705|
|866x                                      |        99.4|           0.6|          2155|        269|
|publication_frequency_annual              |        99.2|           0.8|          2932|        192|
|publication_frequency_text                |        99.2|           0.8|          3130|         37|
|772c                                      |        99.1|           0.9|          3415|       1023|
|publication_interval_till                 |        99.0|           1.0|          3748|        227|
|publication_interval_from                 |        99.0|           1.0|          3785|        235|
|650y                                      |        98.9|           1.1|          4055|        951|
|subject_geography                         |        98.2|           1.8|          6578|       2214|
|height.original                           |        98.0|           2.0|          7569|         87|
|650x                                      |        97.8|           2.2|          8291|       2101|
|110a                                      |        97.6|           2.4|          8765|       6315|
|title_uniform                             |        97.4|           2.6|          9720|       6053|
|publication_year_till                     |        96.6|           3.4|         12517|        366|
|772d                                      |        96.4|           3.6|         13394|       3147|
|772t                                      |        96.4|           3.6|         13575|       4342|
|650z                                      |        95.8|           4.2|         15464|       2628|
|260e                                      |        93.4|           6.6|         24592|        705|
|uncontrolled_title                        |        92.0|           8.0|         29869|      26576|
|corporate                                 |        91.6|           8.4|         31122|       6425|
|440v                                      |        91.1|           8.9|         33293|      10131|
|700d                                      |        89.5|          10.5|         39053|      11670|
|subject_topic                             |        88.5|          11.5|         42676|      22187|
|first_edition                             |        87.8|          12.2|         45328|          3|
|physical_details                          |        87.3|          12.7|         47223|        825|
|440a                                      |        85.5|          14.5|         54039|      24955|
|700a                                      |        83.8|          16.2|         60293|      32485|
|260f                                      |        81.7|          18.3|         68046|       7224|
|obl                                       |        81.7|          18.3|         68131|          3|
|paper                                     |        80.6|          19.4|         72287|       4125|
|width                                     |        80.6|          19.4|         72305|         62|
|height                                    |        80.6|          19.4|         72305|         89|
|area                                      |        80.6|          19.4|         72305|        193|
|245c                                      |        73.0|          27.0|        100557|      76519|
|976a                                      |        71.9|          28.1|        104458|      29601|
|976b                                      |        71.9|          28.1|        104458|      30338|
|900d                                      |        66.2|          33.8|        125733|      19597|
|self_published                            |        65.6|          34.4|        127878|          3|
|note_general                              |        65.3|          34.7|        129317|      79165|
|900a                                      |        65.1|          34.9|        129807|      24298|
|900u                                      |        65.1|          34.9|        129807|      24019|
|author_age                                |        61.8|          38.2|        142106|        141|
|publisher                                 |        57.3|          42.7|        158996|      24603|
|title_remainder                           |        55.9|          44.1|        164089|     129757|
|author_death                              |        55.7|          44.3|        164933|        549|
|author_gender                             |        55.1|          44.9|        167045|          5|
|author_birth                              |        52.0|          48.0|        178563|        585|
|pagecount.orig                            |        36.3|          63.7|        237075|       1429|
|852z                                      |        36.2|          63.8|        237504|      15312|
|author_name                               |        26.3|          73.7|        274205|      86559|
|author                                    |        26.3|          73.7|        274205|      87798|
|country                                   |         9.5|          90.5|        336902|         38|
|852j                                      |         8.3|          91.7|        341323|     127788|
|dissertation                              |         1.9|          98.1|        365228|          3|
|synodal                                   |         1.9|          98.1|        365228|          2|
|language                                  |         1.5|          98.5|        366465|        100|
|publication_place                         |         1.5|          98.5|        366521|       2611|
|latitude                                  |         1.0|          99.0|        368318|       1500|
|longitude                                 |         1.0|          99.0|        368318|       1501|
|publication_year_from                     |         0.0|         100.0|        371999|        500|
|pagecount                                 |         0.0|         100.0|        371999|       1433|
|pagecount.sheet                           |         0.0|         100.0|        372074|       1141|
|title                                     |         0.0|         100.0|        372128|     326794|
|volcount                                  |         0.0|         100.0|        372128|         43|
|language.Swedish                          |         0.0|         100.0|        372136|          2|
|language.English                          |         0.0|         100.0|        372136|          2|
|language.French                           |         0.0|         100.0|        372136|          2|
|language.Danish                           |         0.0|         100.0|        372136|          2|
|language.Latin                            |         0.0|         100.0|        372136|          2|
|language.Icelandic                        |         0.0|         100.0|        372136|          2|
|language.Italian                          |         0.0|         100.0|        372136|          2|
|language.German                           |         0.0|         100.0|        372136|          2|
|language.Russian                          |         0.0|         100.0|        372136|          2|
|language.Norwegian                        |         0.0|         100.0|        372136|          2|
|language.Greek Ancient to 1453            |         0.0|         100.0|        372136|          2|
|language.Old Norse                        |         0.0|         100.0|        372136|          2|
|language.Finnish                          |         0.0|         100.0|        372136|          2|
|language.Pali                             |         0.0|         100.0|        372136|          2|
|language.Estonian                         |         0.0|         100.0|        372136|          2|
|language.Latvian                          |         0.0|         100.0|        372136|          2|
|language.Polish                           |         0.0|         100.0|        372136|          2|
|language.Arabic                           |         0.0|         100.0|        372136|          2|
|language.Esperanto                        |         0.0|         100.0|        372136|          2|
|language.Spanish                          |         0.0|         100.0|        372136|          2|
|language.Artificial Other                 |         0.0|         100.0|        372136|          2|
|language.Dutch                            |         0.0|         100.0|        372136|          2|
|language.Yiddish                          |         0.0|         100.0|        372136|          2|
|language.Swahili                          |         0.0|         100.0|        372136|          2|
|language.Hungarian                        |         0.0|         100.0|        372136|          2|
|language.Lithuanian                       |         0.0|         100.0|        372136|          2|
|language.Portuguese                       |         0.0|         100.0|        372136|          2|
|language.Hebrew                           |         0.0|         100.0|        372136|          2|
|language.Czech                            |         0.0|         100.0|        372136|          2|
|language.Lule Sami                        |         0.0|         100.0|        372136|          2|
|language.Ido                              |         0.0|         100.0|        372136|          2|
|language.Zulu                             |         0.0|         100.0|        372136|          2|
|language.Bulgarian                        |         0.0|         100.0|        372136|          2|
|language.Afrikaans                        |         0.0|         100.0|        372136|          2|
|language.Japanese                         |         0.0|         100.0|        372136|          2|
|language.Serbian                          |         0.0|         100.0|        372136|          2|
|language.Turkish                          |         0.0|         100.0|        372136|          2|
|language.Norwegian Nynorsk                |         0.0|         100.0|        372136|          2|
|language.Low German                       |         0.0|         100.0|        372136|          2|
|language.Gothic                           |         0.0|         100.0|        372136|          2|
|language.Sami                             |         0.0|         100.0|        372136|          2|
|language.Albanian                         |         0.0|         100.0|        372136|          2|
|language.No linguistic content            |         0.0|         100.0|        372136|          2|
|language.Occitan post-1500                |         0.0|         100.0|        372136|          2|
|language.Khotanese                        |         0.0|         100.0|        372136|          2|
|language.Chinese                          |         0.0|         100.0|        372136|          2|
|language.Ukrainian                        |         0.0|         100.0|        372136|          2|
|language.Ethiopic                         |         0.0|         100.0|        372136|          2|
|language.French Old ca. 842-1300          |         0.0|         100.0|        372136|          2|
|language.Syriac Modern                    |         0.0|         100.0|        372136|          2|
|language.Amharic                          |         0.0|         100.0|        372136|          2|
|language.Croatian                         |         0.0|         100.0|        372136|          2|
|language.Algonquian Other                 |         0.0|         100.0|        372136|          2|
|language.Greek Modern 1453-               |         0.0|         100.0|        372136|          2|
|language.Slovenian                        |         0.0|         100.0|        372136|          2|
|language.Romanian                         |         0.0|         100.0|        372136|          2|
|language.Tigrinya                         |         0.0|         100.0|        372136|          2|
|language.Faroese                          |         0.0|         100.0|        372136|          2|
|language.Catalan                          |         0.0|         100.0|        372136|          2|
|language.Provençal to 1500                |         0.0|         100.0|        372136|          2|
|language.Raeto-Romance                    |         0.0|         100.0|        372136|          2|
|language.Sanskrit                         |         0.0|         100.0|        372136|          2|
|language.Sorbian Other                    |         0.0|         100.0|        372136|          2|
|language.Georgian                         |         0.0|         100.0|        372136|          2|
|language.Slovak                           |         0.0|         100.0|        372136|          2|
|language.Tigré                            |         0.0|         100.0|        372136|          2|
|language.Kalâtdlisut                      |         0.0|         100.0|        372136|          2|
|language.Armenian                         |         0.0|         100.0|        372136|          2|
|language.Hindi                            |         0.0|         100.0|        372136|          2|
|language.Oriya                            |         0.0|         100.0|        372136|          2|
|language.Uighur                           |         0.0|         100.0|        372136|          2|
|language.Frisian                          |         0.0|         100.0|        372136|          2|
|language.Korean                           |         0.0|         100.0|        372136|          2|
|language.Kongo                            |         0.0|         100.0|        372136|          2|
|language.German Middle High ca. 1050-1500 |         0.0|         100.0|        372136|          2|
|language.Kinyarwanda                      |         0.0|         100.0|        372136|          2|
|language.Macedonian                       |         0.0|         100.0|        372136|          2|
|language.Nilo-Saharan Other               |         0.0|         100.0|        372136|          2|
|language.Aramaic                          |         0.0|         100.0|        372136|          2|
|language.English Middle 1100-1500         |         0.0|         100.0|        372136|          2|
|language.French Middle ca. 1300-1600      |         0.0|         100.0|        372136|          2|
|language.Oromo                            |         0.0|         100.0|        372136|          2|
|language.Finno-Ugrian Other               |         0.0|         100.0|        372136|          2|
|language.Southern Sami                    |         0.0|         100.0|        372136|          2|
|language.Cushitic Other                   |         0.0|         100.0|        372136|          2|
|language.Hiligaynon                       |         0.0|         100.0|        372136|          2|
|language.Bantu Other                      |         0.0|         100.0|        372136|          2|
|language.Somali                           |         0.0|         100.0|        372136|          2|
|language.Indonesian                       |         0.0|         100.0|        372136|          2|
|language.Romani                           |         0.0|         100.0|        372136|          2|
|language.Malayalam                        |         0.0|         100.0|        372136|          2|
|language.Berber Other                     |         0.0|         100.0|        372136|          2|
|language.Kuanyama                         |         0.0|         100.0|        372136|          2|
|language.Welsh                            |         0.0|         100.0|        372136|          2|
|language.Niger-Kordofanian Other          |         0.0|         100.0|        372136|          2|
|language.Malagasy                         |         0.0|         100.0|        372136|          2|
|language.Northern Sami                    |         0.0|         100.0|        372136|          2|
|language.Persian                          |         0.0|         100.0|        372136|          2|
|multilingual                              |         0.0|         100.0|        372136|          2|
|pagecount.multiplier                      |         0.0|         100.0|        372136|          1|
|pagecount.squarebracket                   |         0.0|         100.0|        372136|        243|
|pagecount.plate                           |         0.0|         100.0|        372136|        155|
|pagecount.arabic                          |         0.0|         100.0|        372136|       1212|
|pagecount.roman                           |         0.0|         100.0|        372136|        166|
|gatherings.original                       |         0.0|         100.0|        372136|         15|
|obl.original                              |         0.0|         100.0|        372136|          2|
|original_row                              |         0.0|         100.0|        372136|     372136|
|pagecount_from                            |         0.0|         100.0|        372136|          4|
|author_pseudonyme                         |         0.0|         100.0|        372136|          2|
|publication_year                          |         0.0|         100.0|        372136|        499|
|publication_decade                        |         0.0|         100.0|        372136|         56|
|gatherings                                |         0.0|         100.0|        372136|         16|
|singlevol                                 |         0.0|         100.0|        372136|          2|
|multivol                                  |         0.0|         100.0|        372136|          2|
|issue                                     |         0.0|         100.0|        372136|          2|

```
##             used   (Mb) gc trigger   (Mb)  max used   (Mb)
## Ncells   2573205  137.5    5684620  303.6   5684620  303.6
## Vcells 177093961 1351.2  415021328 3166.4 414945789 3165.8
```



## Histograms of all entries for numeric variables


```
## Error in freq && !equidist: invalid 'x' type in 'x && y'
```


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.




