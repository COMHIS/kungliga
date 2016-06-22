## TODO

Subject topics: mielenkiintoista kuinka erilaiselta tämä näyttää
Fennican suhteen. miten yliopistokaupungeissa yliopistojulkaisuissa
toimii sekä kungligassa että fennicassa asiasanat. Tuleeko top-listaan
eri paikkakunnilla ja eri aikoina samat asiasanat vai onko tässä
suurtakin heittoa?

### Technical

Add tests

polish_physical_extent("viii, 99.s")            8 + 99
polish_physical_extent("[A4-B4], [16] s.")      16
polish_physical_extent("[4], [40] s. [(2) bl. A4-E4.]") # 4 + 40 + 2x2
polish_physical_extent("[A4-E4] ; [40] s.")     40
polish_physical_extent("[32] s. ; [A2B4-C4D2]") 32
polish_physical_extent("2 vol. (451. s.)")      451
polish_physical_extent("[A4]-C4-?")             NA
polish_physical_extent("[a]2b4-c4d2 ; [24] s.") NA
polish_physical_extent("[A4]B8-K8.")            NA
polish_physical_extent("[A8]-B8")               NA
polish_physical_extent("[A]2B4-C4.")            NA




### Fields to be added (?), less urgent

Some of these are available in the data but may not have preprocessing
functions yet (check):

740a (Uncontrolled related/analytical title)

852z [TÄSSÄ MERKITTY KIRJAKOKO! ELI SIIS 4:o, 8:o jne. Tärkeää, pitää
miettiä miten yhdistää sinne kirjakoko kenttään]

110a (Corporate name or jurisdiction name as entry element) [tärkeä
     kenttä, nyt siis osittain ainakin eroteltuna “Yhteisö” kirjan
     kirjoittajana.
     
700a 

700d 

