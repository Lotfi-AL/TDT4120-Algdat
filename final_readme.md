
# **Problemer og algoritmer**
### Forelesning 1 - video 1,2

-   [x] Video 1
-   [x] Video 2

### _Forståelse nivå L-Lav M- Medium H- Høy_

### _Første gang jeg skrev det --> **13.11**_
### _Sist gang jeg leste på det --> **13.11**_



# Pensum
> Vi starter med fagfeltets grunnleggende byggesteiner, og skisserer et rammeverk for
å tilegne seg resten av stoffet. Spesielt viktig er ideen bak induksjon og rekursjon:
Vi trenger bare se på siste trinn , og kan anta at resten er på plass.


- [x] Kap. 1. The role of algorithms in computing

- [x] Kap. 2. Getting started: Innledning, 2.1–2.2

- [x] Kap. 3. Growth of functions: Innledning og 3.1

# **Læringsmål:**

- [x] A1 Forstå bokas pseudokode -konvensjoner
- [x] Kjenne egenskapene til random-access machine -modellen (RAM)
- [x] Kunne definere problem , instans og problemstørrelse

- [x] ! Kunne definere _asymptotisk notasjon_ ,O,Ω,Θ, _o_ og _ω_.

- [x] ! Kunne definere _best-case_ , _average-case_ og _worst-case_

- [x] ! Forstå _løkkeinvarianter_ og _induksjon_

- [x] ! Forstå _rekursiv dekomponering_ og _induksjon over delproblemer_


- [x] Forstå Insertion-Sort
# **Datastrukturer**
### Forelesning 2 -video 3,4
- [x] Video 3
- [x] Video 4 
  
### _Forståelse nivå L-Lav M- Medium H- Høy_

### _Dato skrevet ferdig --> **14.11**_
### _Sist gang jeg leste på det --> **14.11**_



For å unngå grunnleggende kjøretidsfeller er det viktig å kunne organisere og strukturere data fornuftig. Her skal vi se på hvordan enkle strukturer kan implementeres
i praksis, og hva vi vinner på å bruke dem i algoritmene våre.


# Pensum

- [x] Kap. 10. Elementary data structures: Innledning og 10.1–10.3
  
- [x] Kap. 11. Hash tables: s. 253–264

  
- [x]  Kap. 17. Amortized analysis: Innledning og s. 463–465 (tom. «at most 3»)




# **Læringsmål:**

- [x] Forstå hvordan stakker og køer fungerer
(Stack-Empty, Push, Pop, Enqueue, Dequeue)

- [x] Forstå hvordan lenkede lister fungerer
(List-Search, List-Insert, List-Delete, List-Delete0
, List-Search0
, List-Insert0
)

  
- [x] Forstå hvordan pekere og objekter kan implementeres
  
- [x]  ! Forstå hvordan direkte adressering og hashtabeller fungerer
(Hash-Insert, Hash-Search)

- [x]  Forstå konfliktløsing ved kjeding (chaining)
(Chained-Hash-Insert, Chained-Hash-Search, Chained-Hash-Delete)
  
- [x]  Kjenne til grunnleggende hashfunksjoner

- [x]   Vite at man for statiske datasett kan ha worst-case O(1) for søk
  
- [x]    Kunne definere amortisert analyse
  
- [x]    Forstå hvordan dynamiske tabeller fungerer
(Table-Insert)
# **Splitt og hersk**
### Forelesning 3 -video 5,6
- [x] Video 5
- [x] Video 6 
  
### _Forståelse nivå L-Lav M- Medium H- Høy_

### _Dato skrevet ferdig --> **14.11**_
### _Sist gang jeg leste på det --> **14.11**_



Rekursiv dekomponering er kanskje den viktigste ideen i hele faget, og designmetoden splitt og hersk er en grunnleggende utgave av det: Del instansen i mindre biter,
løs problemet rekursivt for disse, og kombinér løsningene.


# Pensum

- [ ]  Kap. 2. Getting started: 2.3
- [ ]  Kap. 4. Divide-and-conquer: Innledning, 4.1 og 4.3–4.5  
- [ ]  Kap. 7. Quicksort
- [ ]   Oppgaver 2.3-5 og 4.5-3 med løsning (binærsøk)
- [x]    Appendiks B og C i dette heftet

  

# **Læringsmål:**

- [x] Forstå designmetoden divide-and-conquer (splitt og hersk)
- [x]  Forstå maximum-subarray-problemet med løsninger
- [x]  Forstå Bisect og Bisect0 (se appendiks C i dette heftet)
- [x]  Forstå Merge-Sort
- [x]   Forstå Quicksort og Randomized-Quicksort
- [x]    ! Kunne løse rekurrenser med substitusjon, rekursjonstrær og masterteoremet
- [x]    ! Kunne løse rekurrenser med iterasjonsmetoden (se appendiks B i dette heftet)
- [x]     Forstå hvordan variabelskifte fungerer
# **Rangering i linærtid**
### Forelesning 4 - video 7,8

-   [x] Video 7
-   [x] Video 8

### _Forståelse nivå L-Lav M- Medium H- Høy_

### _Første gang jeg skrev det --> **.11**_
### _Sist gang jeg leste på det --> **.11**_



# Pensum
Vi kan ofte få bedre løsninger ved å styrke kravene til input eller ved å svekke
kravene til output. Sortering basert på sammenligninger (x 6 y) er et klassisk
eksempel: I verste tilfelle må vi bruke lg n! sammenligninger,men om vi antar mer
om elementene eller bare sorterer noen av dem så kan vi gjøre det bedre.



- [ ] Kap. 8. Sorting in linear time
- [ ] Kap. 9. Medians and order statistics




# **Læringsmål:**
- [x] ! [D1] Forstå hvorfor sammenligningsbasert sortering har en worst-case på Ω(n lg n
- [x] [D2] Vite hva en stabil sorteringsalgoritme er
- [x]  Forstå Counting-Sort, og hvorfor den er stabil
- [x] Forstå Radix-Sort, og hvorfor den trenger en stabil subrutine
- [x] Forstå Bucket-Sort
- [ ] Forstå Randomized-Select 
- [x] [D7] Kjenne til Select

Merk: Det kreves ikke grundig forståelse av virkemåten til Select.

  
Merk: Noe av stoffet vil kanskje dekkes i forelesning 11.

# **Rotfaste trestrukturer**
### Forelesning 5 -video 9,10
- [x] Video 9
- [x] Video 10 
  
### _Forståelse nivå L-Lav M- Medium H- Høy_

### _Dato skrevet ferdig --> **12.11**_
### _Sist gang jeg leste på det --> **12.11**_



Rotfaste trær gjenspeiler rekursiv dekomponering. I binære søketrær er alt i venstre deltre mindre enn rota, mens alt i høyre deltre er større, og det gjelder rekursivt
for alle deltrær! Hauger er enklere: Alt er mindre enn rota. Det begrenser funksjonaliteten, men gjør dem billigere å bygge og balansere

# Pensum

- [x] Kap. 6. Heapsort
  
- [x] Kap. 10. Elementary data structures: 10.4
  
- [x] Kap. 12. Binary search trees: Innledning og 12.1–12.3



# **Læringsmål:**

- [x] ! E1 Forstå hvordan heaps fungerer, og hvordan de kan brukes som prioritetskøer
(Parent, Left, Right, Max-Heapify, Build-Max-Heap, Heapsort, Max-Heap-Insert,
Heap-Extract-Max, Heap-Increase-Key, Heap-Maximum. Også tilsvarende for minheaps, f.eks., Build-Min-Heap og Heap-Extract-Min.)

- [x] E2 Forstå Heapsort
  
- [x] E3 Forstå hvordan rotfaste trær kan implementeres
  
- [x] ! E4 Forstå hvordan binære søketrær fungerer
(Inorder-Tree-Walk, Tree-Search, Iterative-Tree-Search, Tree-Minimum, TreeMaximum, Tree-Successor, Tree-Predecessor, Tree-Insert, Transplant, Tree-Delete)

- [x] E5 Vite at forventet høyde for et tilfeldig binært søketre er Θ(lg n)
  
- [x] E6 Vite at det finnes søketrær med garantert høyde på Θ(lg n)
Merk: Det kreves ikke grundig forståelse av Transplant og Tree-Delete.

# **Dynamisk programmering**
## Forelesning 6, video litt av 14

- [x] video 11 
- [x] video 12 
- [x] video 13
# **LAV FORSTÅELSE++**

### _Dato skrevet ferdig --> **08.11**_
### _Sist gang jeg leste på det --> **08.11**_




> På sett og vis en generalisering av splitt og hersk , der delprobler kan overlappe:
I stedet for et tre av delproblem-avhengigheter har vi en rettet asyklisk graf. Vi
finner og lagrer del-løsninger i en rekkefølge som stemmer med avhengighetene.

# **Pensum:**

- [x] Kap. 15. Dynamic programming: Innledning og 15.1, 15.3–15.4
- [x] Oppgave 16.2-2 med løsning (0-1 knapsack)
- [x] Appendiks D i dette heftet
- [x] Delkapitler 15.2 og 15.5 kan være nyttige som støttelitteratur.



# **Læringsmål:**

- [x] !Forstå ideen om en _delproblemgraf_

- [x] !Forstå designmetoden _dynamisk programmering_

- [ ] !Forstå løsning ved _memoisering_ ( _top-down_ )


- [x] Forstå løsning ved iterasjon ( bottom-up )
- [x] Forstå hvordan man rekonstruerer en løsning fra lagrede beslutninger
- [x] Forstå hva optimal delstruktur er
- [x] Forstå hva overlappende delproblemer er
- [x] Forstå eksemplene stavkutting og LCS
- [x] Forstå løsningen på 0-1-ryggsekkproblemet (se appendiks D i dette heftet)
(Knapsack,Knapsack′)

# **Grådige algoritmer**
## Forelesning 7, video 13,14
- [x] video 13
- [x] video 14



> Grådige algoritmer består av en serie med valg, og hvert valg tas lokalt : Algorit-
men gjør alltid det som ser best ut her og nå, uten noe større perspektiv. Slike
algoritmer er ofte enkle; utfordringen ligger i å finne ut om de gir rett svar.

# **Pensum:**

- [x] Kap. 16. Greedy algorithms: Innledning og 16.1–16.3

# **Læringsmål:**

- [x] !Forstå designmetoden _grådighet_

- [x] !Forstå _grådighetsegenskapen_ ( _the greedy-choice property_ )


- [x] Forstå eksemplene aktivitet-utvelgelse og det fraksjonelle ryggsekkproblemet
- [x] Forstå Huffmanog Huffman-koder


# **Traversering av grafer**

### Forelesning 8 -video 15,16, litt av video 17
- [x] Video 15 
- [x] Video 16
- [x] Video 17 
  
### _Forståelse nivå L-Lav M- Medium H- Høy_

### _Dato skrevet ferdig --> **03.11**_
### _Sist gang jeg leste på det --> **07.11**_


# Pensum

- [x] Kap. 22. Elementary graph algorithms: Innledning og 22.1–22.4

- [x] Appendisk E i dette heftet

# **Læringsmål:**

- [x] Forstå hvordan grafer kan implementeres

- [x] Forstå BFS, også for å finne korteste vei uten vekter

- [x] Forstå DFS og parentesteoremet

- [x] Forstå hvordan DFS klassifiserer kanter

- [x] Forstå Topological-Sort

- [x] Forstå hvordan DFS kan implementeres med
en stakk

- [x] Forstå hva traverseringstrær (som bredde-først- og dybde-først-trær) er

- [x] ! Forstå traversering med vilkårlig prioritetskø 

### Forelesning 9 -litt av video 17,video 18

-   [x] Video 17
-   [x] Video 18

### _Forståelse nivå L-Lav M- Medium H- Høy_

### _Dato jeg skrev det først --> **04.11**_
### _Sist gang jeg leste på det --> **07.11**_

# **Minimale spenntrær**

# Pensum

Her har vi en graf med vekter på kantene, og ønsker å bare beholde akkurat de
kantene vi må for å koble sammen alle nodene, med en så lav vektsum som mulig.
Erke-eksempel på grådighet: Velg én og én kant, alltid den billigste lovlige.

-   [x] Kap. 21. Data structures for disjoint sets: Innledning, 21.1 og 21.

-   [x] Kap. 23. Minimum spanning trees

# **Læringsmål:**

-   [x] Forstå skog -implementasjonen av disjunkte mengder
        (Connected-Components,Same-Component,Make-Set,Union,Link,Find-Set)

-   [x] Vite hva spenntrær og minimale spenntrær er

-   [x] ! Forstå Generic-MST

*   [x] Forstå hvorfor lette kanter er trygge kanter

*   [x] Forstå MST-Kruskal

*   [x] Forstå MST-Prim

# **Korteste vei fra en til alle**
### Forelesning 10 -video 19,video 20, video 21 (litt)

-   [x] Video 19
-   [x] Video 20
-   [ ] litt av video 21

### _Forståelse nivå L-Lav M- Medium H- Høy_

### _Første gang jeg skrev det --> **05.11**_
### _Sist gang jeg leste på det --> **07.11**_


# Pensum
Bredde-først-søk kan finne stier med færrest mulig kanter, men hva om kantene
har ulik lengde? Det generelle problemet er uløst, men vi kan løse problemet med
gradvis bedre kjøretid for grafer (1) uten negative sykler; (2) uten negative kanter;
og (3) uten sykler. Og vi bruker samme prinsipp for alle tre!

- [x] Kap. 24. Single-source shortest paths: Innledning og 24.1–24.
  

# **Læringsmål:**
- [x] Forstå ulike varianter av korteste-vei - eller korteste-sti -problemet
( Single-source , single-destination , single-pair , all-pairs )
- [x] Forstå strukturen til korteste-vei -problemet
- [x] Forstå at negative sykler gir mening for korteste enkle vei ( simple path )
- [x] Forstå at korteste enkle vei kan løses vha. lengste enkle vei og omvendt
- [x] Forstå hvordan man kan representere et korteste-vei-tre

- [x] ! Forstå _kant-slakking_ ( _edge relaxation_ ) og Relax ! 

- [x] Forstå ulike egenskaper ved korteste veier og slakking
( Triangle inequality , upper-bound property , no-path property , convergence property , path-
relaxation property , predecessor-subgraph property )
- [x] Forstå Bellman-Ford
- [x] Forstå DAG-Shortest-Path

- [x] ! Forstå kobling mellom DAG-Shortest-Path og dynamiskprogrammering !
- [x] Forstå Dijkstra


# **Korteste vei fra alle til alle**
Merk: Noe av stoffet vil kanskje forskyves til forelesning 11.

Husk også læringsmålZ 1 – Z 10 på side iv, som gjelder hver forelesning.

## Forelesning 11 - video 21,22 

-   [x] Video 21
-   [x] Video 22

### _Forståelse nivå L-Lav M- Medium H- Høy_

### _Første gang jeg skrev det --> **18.11**_
### _Sist gang jeg leste på det --> **18.11**_



# Pensum

>Vi kan finne de korteste veiene fra hver node etter tur, men mange av delproble-
mene vil overlappe – om vi har mange nok kanter lønner det seg å bruke dynamisk
programmering med dekomponeringen «Skal vi innom k eller ikke?»


- [ ] Kap. 25. All-pairs shortest paths: Innledning, 25.2 og 25.3

# **Læringsmål:**

- [x] Forstå _forgjengerstrukturen_ for _alle-til-alle_ -varianten av korteste vei-problemet
(Print-All-Pairs-Shortest-Path) 

- [x] Forstå Floyd-Warshall

- [x] Forstå Transitive-Closure

- [x] Forstå Johnson

*Merk: Noe stoff fra forelesning 12 vil kanskje dekkes her.*

_Husk også læringsmålZ 1 – Z 10 på side iv, som gjelder hver forelesning._
# **Maksimal flyt**
### Forelesning 12 - video f_001,f_

-   [x] Video f_001
-   [x] Video f_002

### _Forståelse nivå L-Lav M- Medium H- Høy_

### _Første gang jeg skrev det --> **19.11**_
### _Sist gang jeg leste på det --> **19.11**_



# Pensum
Et stort skritt i retning av generell lineær optimering (såkalt lineær programmering). Her ser vi på to tilsynelatende forskjellige problemer, som viser seg å være
duale av hverandre, noe som hjelper oss med å finne en løsning.



- [x]   Kap. 26. Maximum flow: Innledning og 26.1–26.3




# **Læringsmål:**

- [x] Kunne definere flytnett, flyt og maks-flyt-problemet
- [x] Kunne håndtere antiparallelle kanter og flere kilder og sluk
- [x] ! Kunne definere restnettet til et flytnett med en gitt flyt
- [x] Forstå hvordan man kan oppheve (cancel) flyt
- [x] Forstå hva en forøkende sti (augmenting path) er
- [x] Forstå hva snitt, snitt-kapasitet og minimalt snitt er
- [x] !Forstå maks-flyt/min-snitt-teoremet
- [x] Forstå Ford-Fulkerson-Method og Ford-Fulkersons
- [x] Vite at Ford-Fulkerson med BFS kalles Edmonds-Karp-algoritmen
- [x]  Forstå hvordan maks-flyt kan finne en maksimum bipartitt matching
- [x]  ! Forstå heltallsteoremet (integrality theorem)
Merk: Noe av stoffet vil kanskje dekkes i forelesning 11.

# **NP-kompletthet**
### Forelesning 13 - video 25,26

-   [x] Video 23
-   [x] Video 24

### _Forståelse nivå L-Lav M- Medium H- Høy_

### _Første gang jeg skrev det --> **22.11**_
### _Sist gang jeg leste på det --> **22.11**_


# Pensum
NP er den enorme klassen av ja-nei-problemer der ethvert ja-svar har et bevis som
kan sjekkes i polynomisk tid. Alle problemer i NP kan i polynomisk tid reduseres
til de såkalt komplette problemene i NP. Dermed kan ikke disse løses i polynomisk
tid, med mindre alt i NP kan det. Ingen har klart det så langt . . .


- [ ]  Kap. 34. NP-completeness
- [ ]  Oppgave 34.1-4 med løsning (0 -1 knapsack)
Se også appendiks D i dette heftet.




# **Læringsmål:**
- [ ] [M1] Forstå sammenhengen mellom optimerings- og beslutnings-problemer
- [ ] [M2] Forstå koding (encoding) av en instans
- [ ] [M3] Forstå hvorfor løsningen vår på 0 -1-ryggsekkproblemet ikke er polynomisk
- [ ] [M4] Forstå forskjellen på konkrete og abstrakte problemer
 - [ ] [M5] Forstå representasjonen av beslutningsproblemer som formelle språk
- [ ] [M6] Forstå definisjonen av klassene P, NP og co-NP
- [ ] [M7] Forstå redusibilitets-relasjonen 6P
- [ ] ! [M8] Forstå definisjonen av NP-hardhet og NP-kompletthet
- [ ] [M9] Forstå den konvensjonelle hypotesen om forholdet mellom P, NP og NPC
- [ ] ! [M10] Forstå hvordan NP-kompletthet kan bevises ved én reduksjon
- [ ] ! [M11] Kjenne de NP-komplette problemene CIRCUIT-SAT, SAT, 3-CNF-SAT,
CLIQUE, VERTEX-COVER, HAM-CYCLE, TSP og SUBSET-SUM
- [ ] [M12] Forstå at 0 -1-ryggsekkproblemet er NP-hardt
- [ ] [M13] Forstå at lengste enkle-vei-problemet er NP-hardt
- [ ] [M14] Være i stand til å konstruere enkle NP-kompletthetsbevis
Merk: Det kreves ikke grundig forståelse av de ulike NP-kompletthetsbevisene.


























































