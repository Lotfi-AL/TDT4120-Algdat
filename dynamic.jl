function lislength(s)
    mls = zeros(Int, size(s,1))
    mls[1] = 1
    for i = 2:length(s)
        mls[i] = 1
        for j = 1:i-1
            if (s[i] > s[i-j] && mls[i] <= mls[i-j])
                mls[i] = mls[i-j] + 1
            end
        end
    end

    return maximum(mls) # Returnerer det største tallet i listen
end
printstyled("\n\n\n---------------\nKjører tester!!\n---------------\n"; color = :magenta)

using Test
@testset "Tester" begin
	@test lislength([5,3,3,6,7]) == 3
	@test lislength([2,2,2,2]) == 1
	@test lislength([100,50,25,10]) == 1
	@test lislength([0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15]) == 6
	@test lislength([682, 52, 230, 441, 1000, 22, 678, 695, 0, 681]) == 5
	@test lislength([441, 1000, 22, 678, 695, 0, 681, 956, 48, 587, 604, 857, 689, 346, 425, 513, 476, 917, 114, 43, 327, 172, 162, 76, 91, 869, 549, 883, 679, 812, 747, 862, 228, 368, 774, 838, 107, 738, 717, 25, 937, 927, 145, 44, 634, 557, 850, 965]) == 12
end

println("\nFungerte alt? Prøv å kjør koden i inginious!")
println("Husk at disse testene ikke alltid sjekker alle edge-cases")
println("---------------------------------------------------------\n\n")


function lis(s, mls)
    retList = zeros(Int, maximum(mls))
    top = maximum(mls)
    for i in length(mls):-1:1
        if mls[i] == top
            retList[top] = s[i]
            top -= 1
        end
    end
    return retList
end

langteks = [[988, 217, 509, 729, 294, 1, 704, 115, 497, 405, 452, 100, 690, 523, 131, 726, 703, 632, 694, 58, 90, 622, 241, 310, 90, 88, 72, 517, 856, 537, 224, 312, 10, 672, 90, 403, 358, 624, 919, 777, 898, 260, 796, 284, 918, 743, 562, 869, 140, 482, 13, 60, 427, 723, 452, 165, 487, 613, 870, 143, 28, 11, 779, 663, 150, 745, 786, 22, 588], [1, 1, 2, 3, 2, 1, 3, 2, 3, 3, 4, 2, 5, 5, 3, 6, 6, 6, 7, 2, 3, 6, 4, 5, 3, 3, 3, 6, 8, 7, 4, 6, 2, 8, 4, 7, 7, 8, 9, 9, 10, 5, 10, 6, 11, 9, 8, 11, 5, 8, 3, 4, 8, 9, 9, 6, 10, 11, 12, 6, 4, 3, 12, 12, 7, 13, 14, 4, 11], [1, 58, 90, 241, 310, 312, 358, 427, 452, 487, 613, 663, 745, 786]]

### Tester ###
# Disse testene blir kjør når du kjører filen
# Du trenger ikke å endre noe her, men du kan eksperimentere!

printstyled("\n\n\n---------------\nKjører tester!!\n---------------\n"; color = :magenta)

using Test
@testset "Tester" begin
	@test lis([5,3,3,6,7],[1, 1, 1, 2, 3]) == [3,6,7]
	@test lis([2,2,2,2],[1, 1, 1, 1]) == [2]
	@test lis([100,50,25,10],[1, 1, 1, 1]) == [10]
	@test lis([0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15],[1, 2, 2, 3, 2, 3, 3, 4, 2, 4, 3, 5, 3, 5, 4, 6]) == [0,2,6,9,11,15]
	@test lis(langteks[1],langteks[2])==langteks[3]
end

println("\nFungerte alt? Prøv å kjør koden i inginious!")
println("Husk at disse testene ikke alltid sjekker alle edge-cases")
println("---------------------------------------------------------\n\n")
function cumulative(weights)
    rows, cols = size(weights)
    for i in 2:rows
        for j in 1:cols
            best = Inf
            for k in -1:1
                if (j==1 && k == -1)
                    k += 1
                end
                if (j == cols && k == 1)
                    break
                end
                if weights[i-1,j+k] < best
                    best = weights[i-1,j+k]
                end
            end
            weights[i,j] = weights[i,j] + best
        end
    end

    return weights
end


function backtrack(pathweights)
    rows, cols = size(pathweights)
    low = argmin(pathweights[rows,1:cols])
    liste = []
    push!(liste, (rows,low))
    for i in rows-1:-1:1
        if (low == 1)
            low = low + argmin(pathweights[i,low:low+1]) - 1
        elseif (low == cols)
            low = low + argmin(pathweights[i,low-1:low]) - 2
        else
            println(pathweights[i,low-1:low+1])
            low = low + argmin(pathweights[i,low-1:low+1]) - 2
        end
        push!(liste, (i,low))
    end
    return liste
end