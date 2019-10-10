

function binarysearch(A,value,low,high)
    if high<low
        return low
    end
    mid = Int(floor((low+high)/2))
    if A[mid]>value
        return binarysearch(A,value,low,mid-1)
    elseif A[mid]<value
        return binarysearch(A,value,mid+1,high)
    else
        return mid
    end
end

A = [1,2,3,4,5]

println(binarysearch(A,2,1,5))
