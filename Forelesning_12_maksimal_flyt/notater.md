# Maksimal flyt

# Problemet

Vi skal løse det mest infløkte problemet i pensum i dag.
Er et steg i retning linærprogrammering. 


Algoritme for å løse problemet. Hovedfokuset med flyt er at man reduserer et prolblem til noe annet. Tar et problem som ser ut til å ikke ha noe med flyt å gjøre så transformerer man input til å bli et flyt problem. 

Er på et høyt nivå man skal kunne algoritmen. Trenger ikke å mestre den biten helt.

Danne en god mental modell av problemet er viktig. Spesielt det såkalte heltallsproblemet. Teoremet er viktig, beviset er ikke viktig. 

Hvis vi har heltallskapasiteter egentlig det samme som det vi har brukt tidligere når vi brukte vekter. ER et tall på kantene. Hvis vi har heltallskapasiteter blir flyten et heltall. og flyten på hver kant blir et heltall. 

Hva er flyt? 



**Ford fulkerson er metoden vi skal bruke for å løse dette.**
**Ford fulkerson med breddeførstsøk er edmondskarp**

Hvis du løser maksflyt problemet får du også løsningen på minimalt snitt problemet. 

Et flytnett 
er en rettet graf. er i praksis en vektet rettet graf, men vi kaller vektene kapasitet. Hver kant har en kapasitet. I den versjonen vi ser på er det ikke negativ. 


Summerer alt som går inn i sluket og alt som går ut er samme flytverdi.

Samme hvor vi kutter av grafen og ser hvor mye som går ut og hvor mye som går inn så er det den samme. 
![](images/50.png)

![](images/51.png)

![](images/52.png)

Flyt / kapasitet.


# Ideer
![](images/2.png)


![](images/21.png)
**Retting av antiparallelle
og flere sluk.**
![](images/53.png)

Hvis vi har en kant med ledig kapasitet er det også en kant i flyt nettet. Det er en fremoverkant.
Vi har også bakoverkant hvis det er flyt i flytnettet. Hvis jeg allerede ha flyt i flytnettet så betyr det at vi kan ta tilbake den flyten og sende den et annet sted, og det indikerer vi ved at det er en kant som går baklengs som representerer opphevelse av flyt.


**Poenget er at hvis det finens en sti fra kilde til sluk i restnettet så kan flyten økes. En sånn sti kalles en forøkende sti eller en augmenting path.**

Det her er ikke en rekursiv dekomponering. Vi dekomponerer flytproblemet i en serie med traverseringsproblemer. 

**Hvorfor blir det rett?**

Hva er en augmenting path? En sti som kan brukes til å øke flyten. 

![](images/54.png)

En slags sti i flytnettverket som akn følge kantene fremover eller bakover og har bare lov til å gå fremover der det er ledig og bakover der det er flyt. Hvorfor det? Ford ider det er ledig kapasitet kan vi sende mer flyt og der det kjem flyt mot oss kan vi sende den tilbake og omdirigerer et annet sted. Enten sender vi mer eller så sender vi tilbake og omdirigerer noe som kommer i motsatt retning.

![](images/55.png)
![](images/56.png)




# Ford Fulkerson

 The Ford-Fulkerson method
depends on three important ideas that transcend the method and are relevant to
many flow algorithms and problems: residual networks, augmenting paths, and cut

![](images/57.png)

![](images/5.png)

1
![](images/59.png)
2
![](images/60.png)
3
![](images/58.png)
4
![](images/4.png)
![](images/6.png)

Vi traverserer bare de nodene vi ikke har funnet fluyt til. 





![](images/10.png)

![](images/12.png)

![](images/13.png)

When the capacities are integral and the optimal flow value jf

j is small, the
running time of the Ford-Fulkerson algorithm is good. Figure 26.7(a) shows an example of what can happen on a simple flow network for which jf

j is large.
![](images/15.png)

![](images/90.png)
I verste tilfelle kan vi bare øke flyten engang så vi må kjører i gigantisk tid.
Terminerer kanskje ikek hvis vi har irrasjonelle kapasiteter.


![](images/91.png)
![](images/92.png)
Hvis vi bruker BFS

HVorfor får vi VE iterasjoner?

![](images/93.png)

![](images/94.png)

# Edmondkarps algorithm
![](images/70.png)
![](images/71.png)
![](images/72.png)

Sluket får like mye som flaskehalsen. 
 
![](images/14.png)

![](images/16.png)

![](images/17.png)

# Flyt

Hvorfor bredde først?



# Minimalt snitt
![](images/10000.png)

![](images/7.png)

![](images/8.png)

![](images/9.png)

In practice, the maximum-flow problem often arises with integral capacities. If
the capacities are rational numbers, we can apply an appropriate scaling transformation to make them all integral. If f
 denotes a maximum flow in the transformed
network, then a straightforward implementation of FORD-FULKERSON executes
the while loop of lines 3–8 at most jf

j times, since the flow value increases by at
least one unit in each iteration
![](images/100.png)

![](images/101.png)
![](images/102.png)
![](images/103.png)
![](images/104.png)

# Maximum bipartite matching

![](images/30.png)

![](images/31.png)

![](images/32.png)

![](images/33.png)

![](images/34.png)

Corollary 26.11
The cardinality of a maximum matching M in a bipartite graph G equals the value
of a maximum flow f in its corresponding flow network G0.

![](images/110.png)
![](images/111.png)
![](images/112.png)
![](images/113.png)
![](images/114.png)
![](images/115.png)

![](images/116.png)

![](images/240.png)