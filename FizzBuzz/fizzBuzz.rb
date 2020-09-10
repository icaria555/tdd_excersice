class FizzBuzz
    def FizzBuzz.intToStr(number)
        return 'whiz' if(isPrimeNumber(number))
        fizzStr = (number % 3 == 0) ? 'fizz' : ''
        fizzBuzzStr = (number % 5 == 0) ? fizzStr + 'buzz' : fizzStr
        return number.to_s if(fizzBuzzStr.length == 0)
        fizzBuzzStr
    end
    
    def FizzBuzz.isPrimeNumber(number)
        return false if(number < 3)
        for i in 2..(number/2)-1
            return false if(number % i == 0)
        end
        true
    end
end