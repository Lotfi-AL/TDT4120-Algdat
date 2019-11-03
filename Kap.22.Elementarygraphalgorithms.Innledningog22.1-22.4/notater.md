# **Traversering av grafer**

# Representasjon av grafer

   ## Nabomatrise
    Mer plass
    Må være kvadratisk i størrelse altså 6x6 etc.
![](nabomatrise1.png)

    Det som skjer her er at vi går fra 1 til 2 som vi kan se. først på rad så kolonne. rettet graf så 2 1 er ikke aktivert.  

![](nabomatrise2.png)

## Naboliste
    mindre plass ofte.
**Nabolister: liste eller(tabell) med ut-naboer for hver node**
![](naboliste1.png)

    kompakt, egnet til traversering; ikke så egnet til raske oppslag. 

![](oppgave1.png)

    Ok så det som skjer er at alle de 6 nodene rundt den midterste vet hvem den midterste er, men den midterste vet ikke hvem noen av de utenfor er.
    vi vet at det tilsammen er 7 noder. Det vi gjør er å traverse på en måte slik at vi sjekker node1. deretter node2 osv.. helt til node6. 
    vi kan da se at alle nodene har noen inn og noen ut og at node7 har bare inn og ingen ut siden den ikke finnes i noen av de 6nodene. må ha en rad med bare 0 og en kolonne med bare 1. 
    Hvis 1 er kobla til 2 kan vi forkaste 1 siden final ikke skal ha noen utkanter.
    hvis 2 er ikke kobla til 4 kan vi forkaste 4 fordi final skal ha alle innkanter.  osv osv osv. 
    ![](oppgavelosning1.png)
    Det som vi gjør er hvis det står null i cella går vi til høyre. hvis det står 1 går vi ned. 
    Så hele poenget her man må skjønne handler om at hvis vi er i en node og ikke har en kant ut til en annen node vil det si at den andre noden mangler en kant inn og vi kan forkaste den. hvis vi derimot har en kant ut vil det si at vi har en utkant som ikke skal være og kan forkaste oss. 

#### Traversering generelt - vi besøker noder, oppdager noder langs kanter og vedlikelholder en huskeliste på noder vi har sett men ikke har besøkt enda. 

# Bredde først søk

**BFS: Naboer stille seg i kø. (vanlig kø, fifo ( first in first out))**

Sprer seg utover lagvis. 

![](bfs1.png)
    Her skjer det noe interessant i og med at vi først stter opp besøk node1.
    så gjør vi det
    deretter besøk node og besøk node 3.
    så kommer vi inn i node 2 og der ser v iat den er koblet til node3, men vi skriver ikke node3 opp igjen siden den allerede er der. 

**Hver node har en parent eller predeccessor, forgjenger**
- Det er den noden vi kom fra da vi kom til noden. 

Forgjengerne utgjør traverseringstreet

Traverseringstreet aangir hvordan vi har oppdaga alle nodene.

### **Så lenge vi bruker en fifo kø (dvs.., BFS) så finner vi korteste vei; Ellers risikerer vi å finne noder via omveier.**

![](bfs2.png)

    initialisering

![](bfs3.png)

    Løkken som kjøres.
    Felles for alle traversering er at vi kjøres så lenge Q ikke er tom.
![](bfs4.png)

    etter at init er kjørt.
![](bfs5.png)
    
    etter at bfs er ferdig.

##Oppgave
![](oppgave2.png)

![](oppgavelosning2.png)


# Dybde først søk

**Som BFS, men med LIFO kø**

**Enklere å implementere rekursivt**

**LIFO køen blir da i praksis kallstakken**

    Kallstakken inneholder de lokalevariablene, returadresse og parametere

Besøk oppdagede noder umidelbart

![](DFS1.png)
    
    initialisering
**DFS-VISIT ER DEN faktiske traverseringen**

![](dfs2.png)
![](df3.png)

#### Kantkvalifisering
- Tre-kanter
    - Kanter i dybde-først-skogen
- Bakoverkanter
    - Kanter til en forgjenger i DF-skogen
- Foroverkanter
    - kanter utenfor DF-skogen til en etterkommer i DF-skogen
- Krysskanter
    - Alle andre kanter
- Møter vi en hvit node 
  - Tre-kant
- Møter på en grå node
  - bakoverkant
- Møter en svart node
  - forover eller krysskant
  - om det er forover eller kryss kjem an på start og slutt tidspunktan

**Tre kanter utgjør dybde først treet**

## **Parentesteoremet**




# Topologisk sortering

