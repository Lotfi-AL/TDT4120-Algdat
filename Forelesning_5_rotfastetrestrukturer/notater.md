# Rotfaste trestrukturer

Rotfaste har en utpekt node som er roten. vi sier det der er noden også ser vi resten utifra denne noden. 

Søke trær -> ordner ting horisonalt så det ene deltreet er mindre enn roten og den andre er større.

I en heap så ordner vi ting vertikalt så roten er større enn barna eller mindre nedover. 


A priority queue is a data structure for maintaing a set of elements S each with an associated value. A MAX PRIORITY QUEUE supporst the following operations

insert(S,x)

Maximum(S)
extract-max(S)
increasekey(s,x,k) increase the value of the element x's key to the new value k. which is assumed to be at least as large as x's current key value. 

min priority queue

insert() min() extract-min() decrease-key()

# Trær

![](images/1.png)
![](images/2.png)   

- **I et ordnet tre har barna en ordning. Så vi kan snakke om høyre og venstre f.eks**Hvis vi har et tre og peker ut en rot så har vi ikke en rekkefølge.
- I et posisjonstre har vi en ordning og hvert barn har en posisjon, barn kan dermed mangle. Går ann å bare ha en høyre og en venstre.
- Et binærtre er et posisjonstre der hver node har to barneposisjoner. 

![](images/3.png)
rota har dybde 0, barna dybde 1 så går det videre nedover.
**Den løvnoden som er helt ned definerer høyden til treet.**
Det treet her har høyde 3, ikke høyde 4.

![](images/4.png)
hver node har to barn så for hver generasjon så dobles populasjonen.
Det vil si at hvis vi har n løvnoder. 
så blir dybden på trærne log n
Det vil si at de trærne her er veldig flate. Hvis operasjonene bare er avhengige av høyden er de veldig effektive. 
![](images/5.png)
hvis vi har n noder så har vi n-1 interne noder.
Alle må tape i hver match unntatt den ene som vinner igjen som er n-1.

**Fullt binærtre: Alle interne har to barn**

**Balansert binærtre:**
-    Alle løvnoder har ca. samme dybde
-    Ulike definsjoner og varianter
-    Uansett: Samme asymptotiske dybde
  **Komplett binærtre: Alle løvnoder har nøyaktig samme dybde**

# Hauger

Max-heaps
Plasserer de største på toppen så foreldrene er større enn barna. 
**Struktur:**
Vanligvis er nodene i en tabell så regner vi ut hvor foreldre og barn er hen. 
![](images/6.png)
Left(i) = 2*i
Right(i) = 2*i +1 
Parent(i) = floor(i/2)

![](images/7.png)
![](images/8.png)
![](images/9.png)

#### Vedlikehold

Vi har max-heapify(A,i)
![](images/10.png)
![](images/11.png)

![](images/12.png)

VI går fra siste løvnode tilbake til roten og reparer en og en node. 

![](images/13.png)

### Hvorfor er haugbygning linært?
![](images/14.png)
En med høyde 3, to med høyde 2 4 med høyde 1 og 8 med høyde 0.

![](images/15.png)
![](images/16.png)
![](images/17.png)
Arbeidet vokser linært oppover, men antallet ganger vi kaller prosedyren halveres så det synker eksponensielt. 

![](images/18.png)
**Det tar linær tid å bygge en haug.**
# Hauger > prioritetskøer
**Finn maksimum**
![](images/19.png)

![](images/20.png)

![](images/21.png)

**Insetting**

![](images/22.png)



# Hauger > Heapsort

**Selection sort - med en haug.**
Speilbildet av insertion sort. 
Insertion sort setter vi hele tiden ut det første elementet i selection sort henter vi hele tiden ut det neste elementet vi ønsker. 

![](images/runningtime.png)

# Søketrær
Binærsøk blir veldig dyrt å sette inn og ta ut ting fordi v ibryr oss omhva som er til venstre og høyre. I en heap er vi ikke så veldig nøye. Vi bryr oss om at de over skal være større men ikke til venstre og høyre. 

Kan ha tusen barn i søketrær vil ha så flatt som mulig, liten dataaksess. 

**Traversering av trær.**
![](images/23.png)

![](images/24.png)


![](images/25.png)

![](images/26.png)

Hvordan sette inn? vi søker opp hvor noden skal være hen? I denne implementasjonen så bruker vi ikke den rekursive versjonen, vi gjør akkurat det samme bare at vi bruker en løkke. Dt er en litt enklere måte å gjøre det på. 

VI har laga en node så vi har en nøkkel, kanskje den vi er interessert i. 
![](images/27.png)

Man bare søker seg frem til første ledige plass hvor manoverholder det at man går til venstre hvis man er mindre og til høyre hvis man er større.

![](images/tidbin.png)

![](images/28.png)

![](images/29.png)



![](images/9999.png)