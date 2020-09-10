class Tennis
    @@NORMAL_MODE = 'normal'
    @@DEUCE_MODE = 'deuce'
    SCORE = {
        0 => 15,
        15 => 30,
        30 => 40
    }
    
    def initialize()
        @player_one = 0
        @player_two = 0
        @mode = @@NORMAL_MODE
    end
    
    def won(player)
        if(@mode == @@NORMAL_MODE)
            @player_one = SCORE[@player_one] if(player == 1)
            @player_two = SCORE[@player_two] if(player == 2)
        else
            if(player == 1)
                @player_one += 1
                @player_two -= 1
            else
                @player_one += 1
                @player_two -= 1
            end
        end
        winner()
    end
    
    
    def winner()
        if(@mode == @@DEUCE_MODE)
            return "player one win" if(@player_one == 42)
            return "player two win" if(@player_two == 42)
        else
            return "player one win" if(@player_one == 40)
            return "player two win" if(@player_two == 40)
        end
        "No winning"
    end
    
    def is_duece()
        @mode = @@DEUCE_MODE if(@player_one == @player_two && @player_two == 40)
    end
    
    def player_one()
        @player_one
    end
    
    def player_two()
        @player_two
    end
end