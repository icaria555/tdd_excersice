$LOAD_PATH << '.'
require "rspec/autorun"
require "tennis"

describe Tennis do
    let(:tennis) { Tennis.new() }
    it "has player one and two both have same 0 score" do
        expect(tennis.player_one).to eq(0)
        expect(tennis.player_two).to eq(0)
    end
    
    it "has someone won the game the score increase" do
        tennis.won(1)
        expect(tennis.player_one).to eq(15)
        tennis.won(2)
        expect(tennis.player_two).to eq(15)
        
        tennis.won(1)
        expect(tennis.player_one).to eq(30)
        tennis.won(2)
        expect(tennis.player_two).to eq(30)
        
        tennis.won(1)
        expect(tennis.player_one).to eq(40)
        tennis.won(2)
        expect(tennis.player_two).to eq(40)
    end
    
    it "has winner if someone has 40 first" do
        tennis.won(1)
        tennis.won(1)
        expect(tennis.won(1)).to eq("player one win")
    end
    
    it "duece if both player have same score at 40" do
        for i in 0..2
            tennis.won(1)
            tennis.won(2)
        end
        expect(tennis.is_duece()).to eq("deuce")
        expect(tennis.won(1)).to eq("No winning")
    end
    
    it "when enter to duece mode the player must won two round in a row to win the game " do
        for i in 0..2
            tennis.won(1)
            tennis.won(2)
        end
        tennis.won(1)
        expect(tennis.won(1)).to eq("player one win")
    end
end