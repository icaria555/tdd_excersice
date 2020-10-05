$LOAD_PATH << '.'
require "rspec/autorun"
require_relative  "roman_numerals"

describe RomanNumerals do
    it "returns 1 if input is I" do
        inputV = "I"
        expectV = 1
        expect(RomanNumerals.getValue(inputV)).to eq(expectV)
    end
    
    it "returns 5 if input is V" do
        inputV = "V"
        expectV = 5
        expect(RomanNumerals.getValue(inputV)).to eq(expectV)
    end
    
    it "returns 10 if input is X" do
        inputV = "X"
        expectV = 10
        expect(RomanNumerals.getValue(inputV)).to eq(expectV)
    end
    
    it "returns 50 if input is L" do
        inputV = "L"
        expectV = 50
        expect(RomanNumerals.getValue(inputV)).to eq(expectV)
    end
end