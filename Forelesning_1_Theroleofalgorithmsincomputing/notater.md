# Problemer og algoritmer

# Hva og hvorfor?

# Asympotisk annotasjon

![](images/1.png)
![](images/2.png)
![](images/3.png)

de finnes et cutoff punkt så det er sant videre oppover. 

![](images/4.png)

![](images/5.png)

![](images/6.png)

![](images/7.png)

![](images/8.png)

![](images/40.png)
![](images/421.png)

![](images/42.png)

![](images/43.png)

![](images/44.png)

![](images/45.png)
![](images/46.png)
![](images/47.png)

# **Induksjon**

![](images/9.png)
![](images/10.png)
![](images/11.png)



Det ene er at vi velger oss noe vilkåerlig og viser at det er sant for det. Da har vi vist at det gjelder for alle ting. Så hvis jeg viser noenting for et vilkåerlig heltall uten å sihvilket det er har jeg vist det for alle heltall. 
![](images/13.png)

Det andre er at vi antar en ting og utleder en annen ting og da har vi bevist en implikasjon. 
![](images/12.png)

Hvis jeg antar p og klarer å utlede q har jeg bevist at p impliserer q. 

Den tredje ingrediensen, hvis jeg vet at p medfører q og jeg vet at p er sann kan jeg utlede at q er sann. 

Vi ser på en serie med trinn. Stigen
![](images/14.png)
![](images/15.png)

![](images/16.png)

![](images/17.png)

![](images/18.png)

# Dekomponering
![](images/21.png)
![](images/19.png)

![](images/20.png)


Algoritmen må løse alle instanser. Vi ser på en vilkåerlig instans.  Ved insertion sort vil det være at vi velger et vilkåerlig prefiks av sekvensen, ja de k første elementene.

VI vet ikke helt hvordan vi skal løse den instans, men vi kan finne mindre instanser som er beslektet. Vi kan f.eks dele instanse opp i delinstanser. 

![](images/22.png)

VI vil sortere n elementer da tar vi bort det siste elementet så har vi en delinstans med n-1
Så kommer trylletrinnet. vi antar at vi akn løse alle delinstanser, vi vet ikke hvordan vi kan sortere en sekvens med lengde n, men vi antar at vi akn sortere en sekvens med lengde n-1 
![](images/23.png)
Så da sitter vi der med en sorter sekvens med lengde n-1 og ett element som vi har klippet av. Det eneste vi trenger å finne ut erhvordan vi skal kombinere dem. Det er lett,bare å sette på plass elementet på riktig plass, som er det vi gjorde i insertion. 

![](images/24.png)
Da har vi en algoritme. Vi samler delsvarene til et endelig svar. Det som virker magisk. Jeg antok jo bare at jeg kunne løse den dere, hvordan kan jeg da ha en algoritme? Poenget er at jeg løser den på samme måte. 
Antar at jeg kan løse for n-1,n-2,n-3, osv helt til 1 og det kan jeg fordi det er grunntilfellet mitt. Grunnen til at denne tankegangen fungerer er fordi det egentlig bare er induksjon.

Vi viser grunntilfellet. så antar vi at vi kan løse alle instaner som er mindre enn den instansen vi ser på så bruker vi det til å løse den instanse vi ser på. 

![](images/25.png)


# Induksjon: iterativ utgave 
VI vil vise at noe er sant etter iterasjonen av en løkke når vi antar at det er sant før. 
![](images/26.png)

![](images/27.png)

![](images/28.png)

![](images/31.png)


![](images/60.png)

# Eksempel sum

# Eksempel insertion sort


