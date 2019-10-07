
function fisk(s1,s2)
    k = 0
    for i in 1:length(s1)
        if s1[i] == s2[i]
            k+=1
        end
    end
    return k
end


println(fisk("heid","heia"))