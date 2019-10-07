
#Q1
#-----------------
function mergearrays(x,y,index)
    i = 1
    j = 1
    ind = 1
    mergedarray = Array{Float64,2}(undef,size(x,1) + size(y,1),2)
    @inbounds while i <= size(x,1) && j <= size(y,1)

        #Mindre enn eller lik sørger for stabilsortering/kosistent med Cormen.
        if x[i,index] <= y[j,index]
            mergedarray[ind,1] = x[i,1]
            mergedarray[ind,2] = x[i,2]
            i+=1
        else
            mergedarray[ind,1] = y[j,1]
            mergedarray[ind,2] = y[j,2]
            j+=1
        end
        ind += 1
    end

    #Rest elementene legges inn
    @inbounds while i <= size(x,1)
        mergedarray[ind,1] = x[i,1]
        mergedarray[ind,2] = x[i,2]
        ind+=1
        i+=1
    end

    @inbounds while j <= size(y,1)
        mergedarray[ind,1] = y[j,1]
        mergedarray[ind,2] = y[j,2]
        ind+=1
        j+=1
    end
    return mergedarray
end

function mergesort(x,index)
    if size(x,1) == 1
        return x
    end
    midpoint = div(size(x,1),2)
    leftarray = mergesort(x[1:midpoint, :],index)
    rightarray = mergesort(x[midpoint+1:end, :],index)
    mergedarray = mergearrays(leftarray,rightarray,index)
    return mergedarray
end

#---------
#Q2
#--------

#Hjelpemetode for å finne midpunkt og median. Studentene kan ha denne i andre
#oppgave og så kalle den i senere oppgaver
function medianmidpoint(x,index)
    lenx = size(x,1)
    if lenx % 2 == 0
        midpoint = div(lenx,2)
        median = (x[midpoint,index] + x[midpoint+1,index])/2
    else
        midpoint = div(lenx,2)+1
        median = x[midpoint,index]
    end
    return median, midpoint
end

function binaryintervalsearch(x,delta,index)
    median, midpoint = medianmidpoint(x,index)
    upperlimit = median + delta
    lowerlimit = median - delta
    lenx = size(x,1)

    #Finner øvree intevallgrense
    leftupperbound = midpoint
    rightupperbound = lenx
    @inbounds while leftupperbound < lenx && x[leftupperbound+1,index] <= upperlimit
        enumerator = leftupperbound + rightupperbound
        currentmidpoint = div(enumerator,2)
        currentmidpoint += (enumerator) % 2
        if x[currentmidpoint,index] <= upperlimit
            leftupperbound = currentmidpoint
        else
            rightupperbound = currentmidpoint
        end
    end

    #Finner nedre grense intervallgrense
    leftlowerbound = 1
    rightlowerbound = midpoint
    @inbounds while rightlowerbound > 1 && x[rightlowerbound-1,index] >= lowerlimit
        currentmidpoint = div((leftlowerbound+rightlowerbound),2)
        if x[currentmidpoint,index] >= lowerlimit
            rightlowerbound = currentmidpoint
        else
            leftlowerbound = currentmidpoint
        end
    end

    #Den tomme mengden
    if rightlowerbound == leftupperbound && x[rightlowerbound,index] != median
        rightlowerbound = -1
        leftupperbound = -1
    end

    return rightlowerbound, leftupperbound
end


#------
#Q3
#-----

function squaredistance(x1::Float64,x2::Float64,y1::Float64,y2::Float64)::Float64
    return (x1-y1)^2 + (x2-y2)^2
end

function bruteforce(x::Array{Float64,2})::Float64
    lenx = size(x,1)
    if lenx == 1
        return 0
    end
    min_distance = squaredistance(x[1,1],x[1,2],x[2,1],x[2,2])
    @inbounds for i in 1:lenx
        #Utnytte håndklemmeteoremet for å få n(n-1)/2 sammenligninger
        point1 = x[i,1]
        point2 = x[i,2]
        @inbounds for j in i+1:lenx
            dist = squaredistance(point1,point2,x[j,1],x[j,2])
            if dist < min_distance
                min_distance = dist
            end
        end
    end
    return sqrt(min_distance)
end

#--------
#Q4
#--------

function splitintwo(x,y)
    lenx = size(x,1)
    median, midpoint = medianmidpoint(x,1)
    pl = x[1:midpoint,:] #Venstre punktmengde
    pr = x[midpoint+1:end, :] #Høyre punktmengde

    #telle antall av hvert y-koordinat i pl langs medianen for å sørge for
    #korrekt oppsplitting av disse når vi skal splitte langs y-aksen
    hashmap = Dict()
    index = midpoint
    @inbounds while index > 0 && pl[index,1] == median
        hashmap[pl[index,2]] = get(hashmap,pl[index,2],0)+1
        index -= 1
    end

    yl = Array{Float64,2}(undef,size(pl,1),2)
    yr = Array{Float64,2}(undef,size(pr,1),2)
    j = 1
    @inbounds for i in 1:size(y,1)
        point1 = y[i,1]
        point2 = y[i,2]
        if point1 < median
            yl[j,1] = point1
            yl[j,2] = point2
            j+=1
        elseif point1 > median
            yr[i-j+1,1] = point1
            yr[i-j+1,2] = point2
        elseif get(hashmap,point2,0) > 0 #De som ligger langs medianen må bli splittet riktig
            yl[j,1] = point1
            yl[j,2] = point2
            hashmap[point2] -= 1
            j+=1
        else
            yr[i-j+1, 1] = point1
            yr[i-j+1, 2] = point2
        end
    end
    return pl, pr, yl, yr
end

#---------------
#Q5
#---------------

function closestpair(x,y)
    if size(x,1) <= 3
        return bruteforce(x)
    end
    pl, pr, yl, yr = splitintwo(x,y)
    delta = min(closestpair(pl,yl),closestpair(pr,yr))

    boxleftlimit, boxrightlimit = binaryintervalsearch(x, delta, 1)

    #Ingen elementer i avstand delta fra medianen langs x-aksen => minste
    #avstand er ikke på tvers av medianen.
    if boxleftlimit == -1
        return delta
    end

    box = x[boxleftlimit:boxrightlimit,:]

    if size(x,1) % 2 == 0
        median = (pl[end,1] + pr[1,1])/2
    else
        median = pl[end,1]
    end

    #Filtrerer ut koordinatene i avstand delta fra medianen
    #sortert på y dimensjonen
    lenbox = size(box,1)
    ybox = Array{Float64,2}(undef,lenbox,2)
    yboxindex = 1
    @inbounds for i in 1:size(y,1)
        point1 = y[i,1]
        point2 = y[i,2]
        if median - delta <= point1 <= median + delta
            ybox[yboxindex,1] = point1
            ybox[yboxindex,2] = point2
            yboxindex+=1
        end
    end

    #Sjekke om avstander på tvers av skillelinjen er kortere enn i delmengdene
    @inbounds for i in 1:lenbox-1
        j = i+1
        currentpoint1 = ybox[i,1]
        currentpoint2 = ybox[i,2]
        #Vi trenger kun å sjekke i delta lengde oppover
        @inbounds while j <= lenbox && ybox[j,2] - currentpoint2 <= delta
            currentdistance = sqrt(squaredistance(currentpoint1,currentpoint2,ybox[j,1],ybox[j,2]))
            if currentdistance < delta
                delta = currentdistance
            end
            j+=1
        end
    end
    return delta
end

#Hjelpemetode som sørger for at closestpair blir kalt med sorterte arrays
function callclosestpair(arr)
    x = mergesort(arr,1)
    y = mergesort(arr,2)
    return closestpair(x,y)
end
