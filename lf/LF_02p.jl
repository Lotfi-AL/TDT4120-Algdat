
############################################

## DEL 1

############################################

function findindexinlist(linkedlist, index)
	currentelement = linkedlist
    currentindex = 1
    # Iterate through the linked list till currentposition is equal to position
    while currentindex < index
        # In the event that the list is shorter than position, return -1
        if currentelement.next == nothing
            return -1
        end
        currentindex += 1
        currentelement = currentelement.next
    end
    # Here we know that currentposition == position
    # Also know that currentelement is not nothing
    # Return the value in the linked list
    return currentelement.value
end














############################################

## DEL 2

############################################

# Ikke noe rask, men gjør jobben vha push opperatøren
function reverseandlimit(array, maxnumber)
    s = []
    for i in length(array):-1:1 # Går gjennom lista i motsatt rekkefølge
        if (array[i] <= maxnumber)
            push!(s, array[i]) # Push opperasjonen er ikke en rask opperasjon
        else
            push!(s, maxnumber)
        end
    end
    return s
end


# One-line alternativ av Simen Keiland Fondevik
function reverseandlimit(array, maxnumber)
	return map((x)->min(x, maxnumber), reverse(array))
end

# One-line alternativ av Hetland
function reverseandlimit(array, maxnumber)
	return reverse(min.(array, maxnumber))
end

# Generelt for raske oppgaver, gjelder det å bruke 'billige' opperasjoner.
#   Eksempel på dyre opperasjoner er float-opperasjoner
#   mye allokering og deallokering, mattestykker som kan gi en komma,  eks
#   length(array)/2 kan gi 2.5, som tar mye flere opperasjoner enn å sjekke
#   om listen er odd/even, for å finne midten.
#
# For å få koden din raskere kan du prøve å:
#   Flytte tallene rundt i arrayet istedenfor å legge de til i et nytt array.
#   Iterere bare mellom start -> midten
#   Ha en billig funksjon for å finne midten av lista
#   Mulig du kan få litt ekstra performance om du leser om makroene
#       @inline (inline en funksjon)
#       @inbounds (ta bort julias array bounds checking)
#       @fastmath (om du MÅ bruke floats, kan gi litt feil og følger ikke IEEE semantics)
#       @smid (restructure av for loops)
#












############################################

## DEL 3

############################################

# Finn den makismale verdien med å sjekke i begge retninger
function maxofdoublelinkedlist(linkedlist)
	lnode = linkedlist
	rnode = linkedlist
	m = linkedlist.value

	while lnode.prev != nothing # Sjekk først alle prev nodene fra start noden
		lnode = lnode.prev
		m = max(m, lnode.value)
	end
	while rnode.next != nothing # sjekk så alle next nodene fra start noden
		rnode = rnode.next
		m = max(m, rnode.value)
	end

	return m
end
