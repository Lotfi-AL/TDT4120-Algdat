mutable struct NodeDoublyLinked
    prev::Union{NodeDoublyLinked, Nothing} # Er enten forrige node eller nothing
    next::Union{NodeDoublyLinked, Nothing} # Er enten neste node eller nothing
    value::Int # Verdien til noden
end

function createLinkedListDoublyLinked(length)
    # Create the list from the last element in the chain
    # This is so the returned element will be the first in the chain
    current = nothing
    beforeCurrent = nothing

    for i in 1:length
        # only fill out the next field because prev will be filled out later
        current = NodeDoublyLinked(nothing, beforeCurrent, rand(-100:100))
        # link up the node before this node to this node
        if beforeCurrent != nothing
            beforeCurrent.prev = current
        end
        beforeCurrent = current
    end
    return current
end

function maxofdoublelinkedlist(linkedlist)
    first = linkedlist
    biggest = linkedlist
    if(linkedlist===nothing)
        return nothing
    end
  #går først helt til slutten av greia og samelr hele tiden på biggest
    while(linkedlist.next!=nothing)
        if(linkedlist.next!=nothing&&linkedlist.next.value>biggest.value)
            biggest = linkedlist.next
        end
        linkedlist = linkedlist.next
    end
    # så begynner den fra starten av og printer ut det vi mista. og samler hele tiden på biggest
    while(first.prev!=nothing)
        if(first.prev!=nothing&&first.prev.value>biggest.value)
            biggest = first.prev
        end
        first = first.prev
    end
    println(biggest.value)
    return biggest
end

function printdoublylinkedlist(s)
    h= s
    println(h.value)
    while(h.next!=nothing)
       println(h.next.value)
       h=h.next
    end
   
end
s = createLinkedListDoublyLinked(5)
printdoublylinkedlist(s)


maxofdoublelinkedlist(s)