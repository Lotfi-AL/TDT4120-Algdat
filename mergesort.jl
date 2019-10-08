#= function mergesort(A,p,r)
    if p<r
        q = Int(floor((p+r)/2))
        mergesort(A,p,q)
        mergesort(A,q+1,r)
        merge(A,p,q,r)
    end
end


function merge(A,p,q,r)
    n1 = q - p +1
    n2 = r-q
    L = [0 for i in 1:n1+1]
    R = [0 for i in 1:n2+1]
    L[n1+1] = 1000
    R[n2+1] = 1000
    for i in 1:n1
        L[i] = A[p+i-1]
    end
    for j in 1:n2
        R[j] = A[q+j]
    end
    i = 1
    j = 1
    for k in p:r
            if L[i]<=R[j]
            A[k] = L[i]
            i = i+1
        else 
            A[k] =R[j]
            j = j+1
        end
    end
end


A = [5,4,3,2,1]
B = [1,4,2,5,3]
C = [5,4,3,2,1]
mergesort(C,1,5)
println(C)

=#

function mergearrays(x,y,coordinate)
    n1 = length(x[:,coordinate])
    n2 = length(y[:,coordinate])
    N = n1 + n2              
   
    L = [x; Inf Inf]         
    R = [y; Inf Inf]       
    x_counter = 1
    y_counter = 1
    merged = [zeros(Int64, N) zeros(Int64, N)]  
    
    for i in 1:N
       if L[x_counter,coordinate] <= R[y_counter,coordinate] 
            merged[i,:] =	 L[x_counter,:]
            x_counter += 1
        else 
            merged[i,:] = R[y_counter,:]
            y_counter += 1
        end
    end
    return merged
end

function mergesort(x, coordinate)
    p = 1
    r = length(x[:,coordinate])
    if p < r 
        q = Int(fld(p+r,2))
        left = mergesort(x[p:q,:],coordinate) 
        right = mergesort(x[q+1:r,:],coordinate)
        x = mergearrays(left,right,coordinate)
    end
    return x
end

A = [1 1; 2 2; 3 3 3]

println(length(A[:,1]))