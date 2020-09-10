$LOAD_PATH << '.'
require 'rspec/autorun'
require "greetingKata"

describe GreetingKata do
    it "put the name show greeting text" do
        inputVal = 'Bob'
        expectedVal = 'Hello, ' + inputVal + '.'
        expect(GreetingKata.greet(inputVal)).to eq(expectedVal)
    end
    
    it "put null show greeting text with 'my friend'" do
        expectedVal = 'Hello, my friend.'
        expect(GreetingKata.greet()).to eq(expectedVal)
    end
    
    it "put the name using uppercase alphabet return greeting text with uppercase" do
        inputVal = 'BOB'
        expectedVal = 'HELLO ' + inputVal + '!'
        expect(GreetingKata.greet(inputVal)).to eq(expectedVal)
        
        inputVal = 'BOB BOMBER'
        expectedVal = 'HELLO ' + inputVal + '!'
        expect(GreetingKata.greet(inputVal)).to eq(expectedVal)
    end
    
    it "put array of two names show greeting text with 'and' between those names" do
        inputVal = ['Bob', 'Bam']
        expectedVal = 'Hello, Bob and Bam.'
        expect(GreetingKata.greet(inputVal)).to eq(expectedVal)
    end
    
    it "put array of three names show greeting text with 'and' between those names" do
        inputVal = ['Bob', 'Bam', 'Boo']
        expectedVal = 'Hello, Bob, Bam, and Boo.'
        expect(GreetingKata.greet(inputVal)).to eq(expectedVal)
    end
    
    it "put array of four names with one name uppercase show greeting text with 'and' between those names and add shout greeting with 'AND' " do
        inputVal = ['Bob', 'Bam', 'Boo', 'BARK', 'BANK']
        expectedVal = 'Hello, Bob, Bam, and Boo. AND HELLO BARK AND BANK!'
        expect(GreetingKata.greet(inputVal)).to eq(expectedVal)
    end
    
    it "put comma in string return string same as array case" do
        inputVal = ['Bob', 'Bam', 'Boo, Bank']
        expectedVal = 'Hello, Bob, Bam, Boo, and Bank.'
        expect(GreetingKata.greet(inputVal)).to eq(expectedVal)
    end
    
    it "put escape with comma in string return string same as array case" do
        inputVal = ['Bob', 'Bam', '\"Boo, Bank\"']
        expectedVal = 'Hello, Bob, Bam, Boo, and Bank.'
        expect(GreetingKata.greet(inputVal)).to eq(expectedVal)
    end
end
