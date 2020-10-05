class RomanNumerals
    def RomanNumerals.getValue(str)
        (str == "I") ? 1 : (str == "V") ? 5 : (str == "X") ? 10 : (str == "L") ? 50 : 0
    end
end