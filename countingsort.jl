

function countingsortletters(A,place)
   C = Array{Int,1}(undef,26)
   fill!(C,0)
    D = []
    z = length(A)
    i=1
    while z>0
        if(length(A[i])<place)
            push!(D,splice!(A,i))
            z-=1
            continue
        end
        C[chartodigit(A[i][place])] = C[chartodigit(A[i][place])]+1
        z-=1
        i+=1
    end
    B = copy(A)
    for i in 2:26
        C[i] =C[i] +C[i-1]
    end
    for j in length(A):-1:1
        B[C[chartodigit(A[j][place])]] = A[j]
        C[chartodigit(A[j][place])] = C[chartodigit(A[j][place])] -1
    end
   
    return append!(D,B)
end
#=function countingsortletters(A,place)
   C = []
    for i in 1:26
        push!(C,0)
    end

    B = copy(A)
    if(place>1000)
        return A
    end
    for j  in 1:length(A)  
        C[chartodigit(A[j][place])] = C[chartodigit(A[j][place])]+1
    end
    for i in 2:26
        C[i] =C[i] +C[i-1]
    end
    for j in length(A):-1:1
        B[C[chartodigit(A[j][place])]] = A[j]
        C[chartodigit(A[j][place])] = C[chartodigit(A[j][place])] -1
    end
    println(B)
    return B
end=#

function chartodigit(character)
    #Dette er en hjelpefunksjon for å få omgjort en char til tall
    #Den konverterer 'a' til 1, 'b' til 2 osv.
    #Eksempel: chartodigit("hei"[2]) gir 5 siden 'e' er den femte bokstaven i alfabetet.

    return character - '`'
end


function countingsortlength(A)
    
    biggest = 0 
    B = copy(A)
    for i in 1:length(A)
        if(length(A[i])>biggest)
            biggest = length(A[i])
        end
    end
    biggest+=1
    C = Array{Int,1}(undef,biggest)
    fill!(C,0)

     for j in 1:length(A)
         C[length(A[j])+1] = C[length(A[j])+1]+1
     end
     for i in 2:biggest
         C[i] =C[i] +C[i-1]
     end

     for j in length(A):-1:1
         B[C[length(A[j])+1]] = A[j]
         C[length(A[j])+1] = C[length(A[j])+1] -1
     end

     
     return B
end

#=
function flexradix(A,maxlength)
    A = countingsortlength(A)
   for i in maxlength:-1:1
        A = countingsortletters(A,i)
    end
    println(A)
end
=#
function flexradix(A, max_length)
    for i = max_length:-1:1
       rest::Array{String} = []
       actual::Array{String} = []
       for j = 1:length(A)
          if i > length(A[j])
             push!(rest, A[j])
          else
             push!(actual, A[j])
          end
       end
       actual = countingsortletters(actual, i)
       for j = 1:length(actual)
          push!(rest, actual[j])
       end
       A = rest
    end
    
    println(A)
    return A
 end


A=flexradix(["d", "c", "b", "a"], 1) # == ["a", "b", "c", "d"]
B=flexradix(["d", "c", "b", ""], 1) # == ["", "b", "c", "d"]
C=flexradix(["jeg", "elsker", "deg"], 6)# == ["deg", "elsker", "jeg"]
D=flexradix(["denne", "oppgaven", "mangler", "emojies"], 8)# == ["denne", "emojies", "mangler", "oppgaven"]
E=flexradix(["kobra", "aggie", "agg", "kort", "hyblen"], 6)# == ["agg", "aggie", "hyblen", "kobra", "kort"] # Fra oppgaven
