$LOAD_PATH << '.'
require "rspec/autorun"
require "anagrams"

describe Anagrams do
    it "has no input" do
        expectedVal = []
        expect(Anagrams.Of("")).to eq(expectedVal)
    end
    
    it "has one character" do
        expectedVal = ["A"]
        expect(Anagrams.Of("A")).to eq(expectedVal)
    end
    
    it "has two characters" do
        expectedVal = ["AB", "BA"]
        expect(Anagrams.Of("AB")).to eq(expectedVal)
    end
    
    it "has three characters" do
        expectedVal = ["ABC", "ACB", "BAC", "BCA", "CAB", "CBA"]
        expect(Anagrams.Of("ABC")).to eq(expectedVal)
    end
    
    it "has four characters" do
        expectedVal = 24
        expect(Anagrams.Of("ABCD").length).to eq(expectedVal)
    end
end