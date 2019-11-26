# Splitt og hersk

# Rekkurenser
![](images/1.png)

![](images/2.png)

Vi antar at hvis vi kommer til en eller anenn konstant, en liten nok problem størrelse er kjøretiden konstant.

T(n) = T(n-1) + 1

![](images/10.png)

![](images/11.png)
Det regnestykket du gjør her er at du tar

n -x = 1
så x = n-1 og setter det inn. 

Du vil bare finne en T(1) finne det du må sette x til å være for å få 1 fordi 1 er konstant og da har du reacha basecase.

![](images/12.png)

![](images/13.png)

på slutten kan man se på summen på et par måter. Enten som n-1 *1 (1 er casen t(n) =1) 
elelr ta summen.
![](images/14.png)

Lets assume that T(n-1) = n-1

Her bruker vi base casen vår som sier at t(n-(n-1)) = 1 som er konstant aka true.

Vi må på en måte først finne et uttrykk ved rekkurens for så å bevise det med induksjon. Det er sånn vi får at t(n-1) = n-1
siden t(n) = n fra rekkurrens.
 
 ![](images/15.png)



# Binærsøk


![](images/16.png)
![](images/17.png)

![](images/18.png)
![](images/20.png)

![](images/19.png)

![](images/21.png)

Det som vi gjør er at vi finner ut at ok n/2^x = 1 for x = lgn

så da vi må ta 1+1+1+..+1 lgn gangner
altså 1*lgn, så må vi plusse på den 1 vi har fra t(n) og får lgn+1

![](images/22.png)

![](images/100.png)

# Merge sort

![](images/23.png)
![](images/24.png)

![](images/25.png)

![](images/26.png)

![](images/27.png)

n * lgn + n fra basecase.

![](images/28.png)

![](images/29.png)


# Quicksort

![](images/30.png)

### Skill små og store tall
![](images/31.png)
![](images/32.png)

![](images/33.png)

WORSTCASE QUICKSORT

![](images/34.png)
![](images/35.png)

![](images/36.png)





# Masterteoremet

![](images/900.png)
![](images/37.png)
![](images/38.png)
![](images/39.png)

TIngen med masterteoremet er at siden alle de andre leddene er små små i forhold til det laveste kan vi bare drite i dem fordi vi har n opphøyd i noe. Da er det bare den nederste som teller, den dominerer de andre. 

![](images/40.png)


Hvis f er lik det vi har nederst asymptotisk det samme. Da vil alt i mellom være asymptotisk det samme og da blir svaret at vi ganger n^logb(a) med høyden som er logbn.

![](images/41.png)


# Variabelskifte

![](images/42.png)

![](images/43.png)

![](images/44.png)

