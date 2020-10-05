$LOAD_PATH << '.'
require "rspec/autorun"
require_relative  "roman_numerals"

describe RomanNumerals do
    it "returns 1 if input is I" do
        inputV = "I"
        expectV = 1
        expect(RomanNumerals.getValue(inputV)).to eq(expectV)
    end
end