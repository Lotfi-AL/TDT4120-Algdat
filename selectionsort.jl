#=let A = [5,4,3,2,1];

    //først finner vi det minste elementet
    
    
    for(it=0;it<A.length;it++){
    let lowest = it;
    for(i=it;i<A.length;i++){
        if(A[lowest]>A[i]){
            lowest = i;  
      }
    }
    let t = A[it]
    A[it] = A[lowest];
    A[lowest] = t;
    console.log(A)
    }
    
    console.log(A);
    =#
A = [5,4,3,2,1]

for it in 1:length(A)-1
    lowest  =it;
    for i in it:length(A)
        if(A[lowest]>A[i])
            lowest = i;
        end
    end
    temp = A[it]
    A[it] = A[lowest]
    A[lowest] = temp;
end
println(A)

function selectionsort!(arr)
    len = length(arr)
    if len < 2 return arr end
    for i in 1:len-1
        lmin, j = findmin(arr[i+1:end])
        if lmin < arr[i]
            arr[i+j] = arr[i]
            arr[i] = lmin
        end
    end
    return arr
end
 
v = rand(-10:10, 10)
println("# unordered: $v\n -> ordered: ", selectionsort!(v))
