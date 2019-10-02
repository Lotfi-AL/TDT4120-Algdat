
function reverseandlimit(array,maxnumber)
    A = []
    for i in length(array):-1:1
        if(array[i]>maxnumber)
            push!(A,maxnumber)
        else
            push!(A,array[i])
        end
    end
    return A
end

#=
function reverseandlimit(array,maxnumber)
    for i in length(array):-1:1
        temp = array[i]
        if(temp>maxnumber)
            push!(array,maxnumber)
            println(array)      
        else 
            push!(array,temp)
          
        end
     
    end
    for i in 1:length(array)/2
        popfirst!(array)
    end
    return array
end
=#


A = [1,2,3,4,5]

println(reverseandlimit(A,6))

