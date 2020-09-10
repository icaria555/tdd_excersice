$LOAD_PATH << '.'
require "rspec/autorun"
require "fizzBuzz"

describe FizzBuzz do
    it "put 1 return 1 in string" do
        inputVal = 1
        expectedVal = "1"
        expect(FizzBuzz.intToStr(inputVal)).to eq(expectedVal)
    end
    
    it "put 3 return whiz in string" do
        inputVal = 3
        expectedVal = "whiz"
        expect(FizzBuzz.intToStr(inputVal)).to eq(expectedVal)
    end
    
    it "put 5 return whiz in string" do
        inputVal = 5
        expectedVal = "whiz"
        expect(FizzBuzz.intToStr(inputVal)).to eq(expectedVal)
    end
    
    it "put 15 return fizzbuzz in string" do
        inputVal = 15
        expectedVal = "fizzbuzz"
        expect(FizzBuzz.intToStr(inputVal)).to eq(expectedVal)
    end
    
    it "put 18 return fizz in string" do
        inputVal = 18
        expectedVal = "fizz"
        expect(FizzBuzz.intToStr(inputVal)).to eq(expectedVal)
    end
    
    it "put 3 return 0 in string" do
        inputVal = 0
        expectedVal = "fizzbuzz"
        expect(FizzBuzz.intToStr(inputVal)).to eq(expectedVal)
    end
    
    it "put 17 return whiz in string" do
        inputVal = 17
        expectedVal = "whiz"
        expect(FizzBuzz.intToStr(inputVal)).to eq(expectedVal)
    end
end