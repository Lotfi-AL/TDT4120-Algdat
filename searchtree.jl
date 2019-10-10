mutable struct Node
    children::Dict{Char,Node}
    count::Int
end

function searchtree(root, dna)

    currentNode = root
    dnaCount = 1

    while haskey(currentNode.children,dna[dnaCount])
        currentNode = currentNode.children[dna[dnaCount]]

        if dnaCount == length(dna)
            return currentNode.count
        end

        dnaCount += 1

    end
   return 0
end



root1 = Node(Dict('A' => Node(Dict{Char,Node}(), 1),'G' => Node(Dict('A' => Node(Dict{Char,Node}(), 2)), 1)), 0)
root2 = Node(Dict('A' => Node(Dict{Char,Node}(), 1),'G' => Node(Dict('A' => Node(Dict{Char,Node}(), 1),'G' => Node(Dict{Char,Node}(), 1)), 1),'T' => Node(Dict('G' => Node(Dict('T' => Node(Dict{Char,Node}(), 1)), 0),'T' => Node(Dict('G' => Node(Dict{Char,Node}(), 1)), 0)), 0),'C' => Node(Dict('C' => Node(Dict('A' => Node(Dict{Char,Node}(), 1)), 1)), 1)), 0)

s1 = "AG"
s2 = "GA"
s3 = "TGT"



### Tester ###
# Disse testene blir kjør når du kjører filen
# Du trenger ikke å endre noe her, men du kan eksperimentere!

printstyled("\n\n\n---------------\nKjører tester!!\n---------------\n"; color = :magenta)

using Test
@testset "Tester" begin
	@test searchtree(root1, s1) == 0
	@test searchtree(root1, s2) == 2
	@test searchtree(root1, s3) == 0
	@test searchtree(root2, s1) == 0
	@test searchtree(root2, s2) == 1
	@test searchtree(root2, s3) == 1
end
