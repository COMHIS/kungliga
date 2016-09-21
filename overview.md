---
title: "Preprocessing overview"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-09-22"
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

  * 385771 documents in the original raw data
  * 385771 documents in the final preprocessed data (100%)

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
|note_510c                                 |       100.0|           0.0|            50|         48|
|width.original                            |        99.9|           0.1|           333|         53|
|note_source                               |        99.8|           0.2|           732|        672|
|physical_accomppanied                     |        99.7|           0.3|          1310|        795|
|successor                                 |        99.5|           0.5|          1737|       1710|
|volcount                                  |        99.4|           0.6|          2232|         40|
|866x                                      |        99.4|           0.6|          2257|        273|
|publication_frequency_annual              |        99.2|           0.8|          2939|        192|
|publication_frequency_text                |        99.2|           0.8|          3137|         37|
|772c                                      |        99.1|           0.9|          3491|       1049|
|publication_interval_till                 |        99.0|           1.0|          3753|        227|
|publication_interval_from                 |        99.0|           1.0|          3790|        235|
|650y                                      |        98.9|           1.1|          4071|        954|
|subject_geography                         |        98.3|           1.7|          6626|       2225|
|height.original                           |        97.9|           2.1|          7970|         88|
|650x                                      |        97.8|           2.2|          8334|       2108|
|110a                                      |        97.7|           2.3|          8868|       6373|
|title_uniform                             |        97.4|           2.6|          9862|       6078|
|publication_year_till                     |        96.7|           3.3|         12543|        374|
|772d                                      |        96.4|           3.6|         13724|       3221|
|772t                                      |        96.4|           3.6|         13904|       4420|
|650z                                      |        96.0|           4.0|         15554|       2636|
|260e                                      |        93.6|           6.4|         24770|        715|
|440v                                      |        91.3|           8.7|         33566|      10198|
|uncontrolled_title                        |        91.2|           8.8|         34003|      30026|
|corporate                                 |        90.9|           9.1|         35002|       6474|
|700d                                      |        89.8|          10.2|         39409|      11748|
|subject_topic                             |        88.9|          11.1|         42890|      22254|
|first_edition                             |        88.2|          11.8|         45400|          3|
|physical_details                          |        87.7|          12.3|         47515|        834|
|440a                                      |        85.9|          14.1|         54552|      25284|
|paper                                     |        84.2|          15.8|         60773|       4049|
|paper.check                               |        84.2|          15.8|         60773|       4049|
|700a                                      |        84.2|          15.8|         61108|      32895|
|obl                                       |        83.0|          17.0|         65653|          3|
|260f                                      |        82.2|          17.8|         68733|       7362|
|width                                     |        80.9|          19.1|         73551|         64|
|height                                    |        80.9|          19.1|         73551|         91|
|area                                      |        80.9|          19.1|         73551|        196|
|245c                                      |        73.7|          26.3|        101465|      77222|
|976a                                      |        72.6|          27.4|        105689|      29699|
|976b                                      |        72.6|          27.4|        105689|      30434|
|900d                                      |        66.8|          33.2|        127919|      19778|
|self_published                            |        66.8|          33.2|        128196|          3|
|900u                                      |        65.8|          34.2|        132073|      24249|
|900a                                      |        65.8|          34.2|        132074|      24535|
|note_general                              |        65.3|          34.7|        133786|      82777|
|publisher                                 |        56.7|          43.3|        166857|      16687|
|title_remainder                           |        56.7|          43.3|        166992|     132055|
|author_death                              |        56.5|          43.5|        167800|        551|
|author_gender                             |        55.7|          44.3|        170875|          5|
|author_birth                              |        52.8|          47.2|        182262|        593|
|pagecount.orig                            |        38.7|          61.3|        236400|       1415|
|pagecount                                 |        38.2|          61.8|        238431|       1415|
|852z                                      |        38.0|          62.0|        239278|      15781|
|author_name                               |        27.3|          72.7|        280293|      88144|
|author                                    |        27.3|          72.7|        280293|      89416|
|country                                   |        12.1|          87.9|        339223|         38|
|852j                                      |         8.7|          91.3|        352283|     133906|
|publication_place                         |         4.3|          95.7|        369108|       2628|
|publication_year_from                     |         3.4|          96.6|        372801|        502|
|publication_year                          |         3.4|          96.6|        372837|        502|
|publication_decade                        |         3.4|          96.6|        372837|         57|
|language                                  |         2.8|          97.2|        375030|        100|
|dissertation                              |         1.8|          98.2|        378851|          3|
|synodal                                   |         1.8|          98.2|        378851|          2|
|latitude                                  |         1.0|          99.0|        381795|       1505|
|longitude                                 |         1.0|          99.0|        381795|       1506|
|title                                     |         0.6|          99.4|        383297|     333332|
|language.Swedish                          |         0.0|         100.0|        385771|          2|
|language.English                          |         0.0|         100.0|        385771|          2|
|language.French                           |         0.0|         100.0|        385771|          2|
|language.Danish                           |         0.0|         100.0|        385771|          2|
|language.Latin                            |         0.0|         100.0|        385771|          2|
|language.Icelandic                        |         0.0|         100.0|        385771|          2|
|language.Italian                          |         0.0|         100.0|        385771|          2|
|language.German                           |         0.0|         100.0|        385771|          2|
|language.Russian                          |         0.0|         100.0|        385771|          2|
|language.Norwegian                        |         0.0|         100.0|        385771|          2|
|language.Greek Ancient to 1453            |         0.0|         100.0|        385771|          2|
|language.Old Norse                        |         0.0|         100.0|        385771|          2|
|language.Finnish                          |         0.0|         100.0|        385771|          2|
|language.Pali                             |         0.0|         100.0|        385771|          2|
|language.Estonian                         |         0.0|         100.0|        385771|          2|
|language.Latvian                          |         0.0|         100.0|        385771|          2|
|language.Polish                           |         0.0|         100.0|        385771|          2|
|language.Arabic                           |         0.0|         100.0|        385771|          2|
|language.Esperanto                        |         0.0|         100.0|        385771|          2|
|language.Spanish                          |         0.0|         100.0|        385771|          2|
|language.Artificial Other                 |         0.0|         100.0|        385771|          2|
|language.Dutch                            |         0.0|         100.0|        385771|          2|
|language.Yiddish                          |         0.0|         100.0|        385771|          2|
|language.Swahili                          |         0.0|         100.0|        385771|          2|
|language.Hungarian                        |         0.0|         100.0|        385771|          2|
|language.Lithuanian                       |         0.0|         100.0|        385771|          2|
|language.Portuguese                       |         0.0|         100.0|        385771|          2|
|language.Hebrew                           |         0.0|         100.0|        385771|          2|
|language.Czech                            |         0.0|         100.0|        385771|          2|
|language.Lule Sami                        |         0.0|         100.0|        385771|          2|
|language.Ido                              |         0.0|         100.0|        385771|          2|
|language.Zulu                             |         0.0|         100.0|        385771|          2|
|language.Bulgarian                        |         0.0|         100.0|        385771|          2|
|language.Afrikaans                        |         0.0|         100.0|        385771|          2|
|language.Japanese                         |         0.0|         100.0|        385771|          2|
|language.Serbian                          |         0.0|         100.0|        385771|          2|
|language.Turkish                          |         0.0|         100.0|        385771|          2|
|language.Norwegian Nynorsk                |         0.0|         100.0|        385771|          2|
|language.Low German                       |         0.0|         100.0|        385771|          2|
|language.Gothic                           |         0.0|         100.0|        385771|          2|
|language.Sami                             |         0.0|         100.0|        385771|          2|
|language.Albanian                         |         0.0|         100.0|        385771|          2|
|language.No linguistic content            |         0.0|         100.0|        385771|          2|
|language.Occitan post-1500                |         0.0|         100.0|        385771|          2|
|language.Khotanese                        |         0.0|         100.0|        385771|          2|
|language.Chinese                          |         0.0|         100.0|        385771|          2|
|language.Ukrainian                        |         0.0|         100.0|        385771|          2|
|language.Ethiopic                         |         0.0|         100.0|        385771|          2|
|language.French Old ca. 842-1300          |         0.0|         100.0|        385771|          2|
|language.Syriac Modern                    |         0.0|         100.0|        385771|          2|
|language.Amharic                          |         0.0|         100.0|        385771|          2|
|language.Croatian                         |         0.0|         100.0|        385771|          2|
|language.Algonquian Other                 |         0.0|         100.0|        385771|          2|
|language.Greek Modern 1453-               |         0.0|         100.0|        385771|          2|
|language.Slovenian                        |         0.0|         100.0|        385771|          2|
|language.Romanian                         |         0.0|         100.0|        385771|          2|
|language.Tigrinya                         |         0.0|         100.0|        385771|          2|
|language.Faroese                          |         0.0|         100.0|        385771|          2|
|language.Catalan                          |         0.0|         100.0|        385771|          2|
|language.Provençal to 1500                |         0.0|         100.0|        385771|          2|
|language.Raeto-Romance                    |         0.0|         100.0|        385771|          2|
|language.Sanskrit                         |         0.0|         100.0|        385771|          2|
|language.Sorbian Other                    |         0.0|         100.0|        385771|          2|
|language.Georgian                         |         0.0|         100.0|        385771|          2|
|language.Slovak                           |         0.0|         100.0|        385771|          2|
|language.Tigré                            |         0.0|         100.0|        385771|          2|
|language.Kalâtdlisut                      |         0.0|         100.0|        385771|          2|
|language.Armenian                         |         0.0|         100.0|        385771|          2|
|language.Hindi                            |         0.0|         100.0|        385771|          2|
|language.Oriya                            |         0.0|         100.0|        385771|          2|
|language.Uighur                           |         0.0|         100.0|        385771|          2|
|language.Frisian                          |         0.0|         100.0|        385771|          2|
|language.Korean                           |         0.0|         100.0|        385771|          2|
|language.Kongo                            |         0.0|         100.0|        385771|          2|
|language.German Middle High ca. 1050-1500 |         0.0|         100.0|        385771|          2|
|language.Kinyarwanda                      |         0.0|         100.0|        385771|          2|
|language.Macedonian                       |         0.0|         100.0|        385771|          2|
|language.Nilo-Saharan Other               |         0.0|         100.0|        385771|          2|
|language.Aramaic                          |         0.0|         100.0|        385771|          2|
|language.English Middle 1100-1500         |         0.0|         100.0|        385771|          2|
|language.French Middle ca. 1300-1600      |         0.0|         100.0|        385771|          2|
|language.Oromo                            |         0.0|         100.0|        385771|          2|
|language.Finno-Ugrian Other               |         0.0|         100.0|        385771|          2|
|language.Southern Sami                    |         0.0|         100.0|        385771|          2|
|language.Cushitic Other                   |         0.0|         100.0|        385771|          2|
|language.Hiligaynon                       |         0.0|         100.0|        385771|          2|
|language.Bantu Other                      |         0.0|         100.0|        385771|          2|
|language.Somali                           |         0.0|         100.0|        385771|          2|
|language.Indonesian                       |         0.0|         100.0|        385771|          2|
|language.Romani                           |         0.0|         100.0|        385771|          2|
|language.Malayalam                        |         0.0|         100.0|        385771|          2|
|language.Berber Other                     |         0.0|         100.0|        385771|          2|
|language.Kuanyama                         |         0.0|         100.0|        385771|          2|
|language.Welsh                            |         0.0|         100.0|        385771|          2|
|language.Niger-Kordofanian Other          |         0.0|         100.0|        385771|          2|
|language.Malagasy                         |         0.0|         100.0|        385771|          2|
|language.Northern Sami                    |         0.0|         100.0|        385771|          2|
|language.Persian                          |         0.0|         100.0|        385771|          2|
|multilingual                              |         0.0|         100.0|        385771|          2|
|gatherings.original                       |         0.0|         100.0|        385771|         15|
|obl.original                              |         0.0|         100.0|        385771|          2|
|original_row                              |         0.0|         100.0|        385771|     385771|
|author_pseudonyme                         |         0.0|         100.0|        385771|          2|
|singlevol                                 |         0.0|         100.0|        385771|          2|
|multivol                                  |         0.0|         100.0|        385771|          2|
|issue                                     |         0.0|         100.0|        385771|          2|
|gatherings                                |         0.0|         100.0|        385771|         15|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-19.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-20.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-21.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-22.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-23.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-24.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.




