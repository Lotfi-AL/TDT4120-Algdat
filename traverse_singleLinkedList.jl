mutable struct Node
    next::Union{Node, Nothing} # next kan peke på et Node-objekt eller ha verdien nothing.
    value::Int
end


function createlinkedlist(length)
    # Creates the list starting from the last element
    # This is done so the last element we generate is the head
    child = nothing
    node = nothing

    for i in 1:length
        node = Node(child, rand(1:800))
        child = node
    end
    return node
end

# Skriv koden din her!
function findindexinlist(linkedlist, index)
    while(linkedlist.next!=nothing&&index>1) 
        println(linkedlist.value)
        linkedlist = linkedlist.next
        index-=1
    end
    if(index==1)
        println(linkedlist.value)
        return linkedlist 
    end
    return nothing
end

#= bruker rekursjon. 
function findindexinlist(node,index)
    
    index -= 1
    if index == 0
        return node.value
    end
    if node.next == nothing
        return -1
    end
   
    return findindexinlist(node.next,index)
end
=#
findindexinlist(createlinkedlist(5),3)

