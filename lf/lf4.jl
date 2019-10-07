#############
##OPPGAVE 1##
#############

#Dette er standard tellesortering som sett i læreboka
function countingsortletters(A,position)
	B = ["" for i in 1:length(A)]
    C = zeros(Int64,26) #Det engelske alfabet har 26 bokstaver ikke 29
    for i in A
        C[chartodigit(i[position])] += 1
    end
    for i in 2:26
        C[i] += C[i-1] #akkumulerer som i læreboka
    end
    for j in length(A):-1:1 #Vi går baklengs for å få en stabil sortering
		word = A[j]
		chardigit = chartodigit(word[position])
        B[C[chardigit]] = word
        C[chardigit] -= 1
    end
    return B
end

function chartodigit(character)
    #Dette er en hjelpefunksjon for å få omgjort en char til tall
    #Den konverterer 'a' til 1, 'b' til 2 osv.
    #Eksempel: chartodigit("hei"[2]) gir 5 siden 'e' er den femte bokstaven i alfabetet.

    return character - '`'
end

#############
##OPPGAVE 2##
#############

#vanlig tellesortering, bare at vi må ha +1 for å komme oss rundt
#én-indekseringen i Julia slik at vi får med oss den tomme strengen
function countingsortlength(A)
    maxlen = maximum(map(length,A))#finner k, i.e. største tall vi skal sortere
    B = ["" for i in 1:length(A)]
    C = zeros(Int64, maxlen+1)
    for i in A
        C[length(i)+1] += 1
    end
	for j in 2:maxlen+1
    	C[j] += C[j-1]
	end
    for j in length(A):-1:1
		stringlength = length(A[j]) + 1
        B[C[stringlength]] = A[j]
        C[stringlength] -=1
    end
    return B
end

#############
##OPPGAVE 3##
#############

function flexradix(A, maxlength)
    lengths = [[] for i in 1:maxlength] #Bøtter opprettes
    emptycount = 0
    for i in A
		leni = length(i)
        if leni == 0
            emptycount += 1 #Vi legger til de tomme strengene til slutt
		else
        	push!(lengths[leni],i) #Putter i bøtte etter lengde
		end
    end
	emptystrings = ["" for i in 1:emptycount]
	sorting = []
	#Vi begynner med strengene av lengde maxlength og sorterer disse på bakerste karakter
	#Så legger vi inn strengene av lengde maxlength - 1, og sorterer disse pluss de
	#fra forrige runde på maxlengt-1 karakteren. (Altså bakerste på strengene av
	#lengde maxlengt -1, og nest bakerste på strengene av lengde maxlength)
    for position in maxlength:-1:1
		sorting = vcat(lengths[position], sorting) #Legger inn strengene som er lange nok
		sorting = countingsortletters(sorting,position)
	end
    return vcat(emptystrings,sorting) #Legger inn de tomme strengene
end
