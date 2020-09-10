class Anagrams
    def Anagrams.Of(strVal)
        anaList = (strVal != "") ? [strVal] : []
        if(strVal.length > 1)
            angrams = []
            for i in 0..strVal.length-1
                dropCharacter = strVal[i]
                anagramsOfRest = Anagrams.Of(DropCharacter(strVal, i))
                for p in 0..anagramsOfRest.length - 1
                    angrams.push(dropCharacter + anagramsOfRest[p])
                end
            end
            return angrams
        end
        anaList
    end
    
    def Anagrams.DropCharacter(strVal, index)
        before = strVal[0, index]
        after = strVal[index + 1, strVal.length - (index + 1)]
        before + after
    end
end