#=A = [5,4,3,2,1]

    for i = 0;i<A.length;i++{
        if(i==0) continue;
      let key = A[i];
      o=i-1;
      while(o>=0&&key<A[o]){
              A[o+1] =A[o];
              o--;
      }
      A[o+1] = key;
      
    }
    console.log(A);
    =#
#sorterer i synkende rekkefølge, aka 1,2,3,4,5
    A = [5,4,3,2,1];
    println(A);
    for j in 2:length(A)
        key = A[j];
        i=j-1;
        while i>0 && key<A[i]
            A[i+1] = A[i]
            i-=1;
        end
    A[i+1] = key
    end
    println(A)

    for j in 2:length(A)
        key = A[j];
        i=j-1; #sorterer i stigende rekkefølge, aka 5,4,3,2,1
        while i>0 && key>A[i]
            A[i+1] = A[i]
            i-=1;
        end
    A[i+1] = key
    end
    println(A)
    function insertionsort!(A) 
        for i in 1:length(A)-1
            value = A[i+1]
            j = i
            while j > 0 && A[j] > value
                A[j+1] = A[j]
                j -= 1
            end
            A[j+1] = value
        end  
        return A
    end
     
    x = rand(Int,5)
    @show x insertionsort!(x)
    
