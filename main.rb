class GameBoard

    attr_accessor :block_1, :block_2, :block_3, :block_4, :block_5, :block_6, :block_7, :block_8, :block_9

    def initialize
        @block_1 = '.'
        @block_2 = '.'
        @block_3 = '.'
        @block_4 = '.'
        @block_5 = '.'
        @block_6 = '.'
        @block_7 = '.'
        @block_8 = '.'
        @block_9 = '.'
        @separator = '|'
    end

    def row_1
       @block_1 + @separator + @block_2 + @separator + @block_3
    end

    def row_2
        @block_4 + @separator + @block_5 + @separator + @block_6
    end

    def row_3
        @block_7 + @separator + @block_8 + @separator + @block_9
    end

    def board
        puts row_1
        puts row_2
        puts row_3
    end
end
class Game < GameBoard
    gameboard = GameBoard.new

    @@player_1 = true
    @@player_2 = false
    @@winner = false
    
    while @@winner == false
        while @@player_1 == true
            gameboard.board
            puts "player 1 turn"
            x = gets.chomp
            if x == "1" and gameboard.block_1 == '.'
                gameboard.block_1=('X')
                gameboard.board
                @@player_1 = false
                @@player_2 = true
            elsif x == "2" and gameboard.block_2 == '.'
                gameboard.block_2=('X')
                gameboard.board
                @@player_1 = false
                @@player_2 = true
            elsif x == '3' and gameboard.block_3 == '.'
                gameboard.block_3=('X')
                gameboard.board
                @@player_1 = false
                @@player_2 = true
            elsif x == '4' and gameboard.block_4 == '.'
                gameboard.block_4=('X')
                gameboard.board
                @@player_1 = false
                @@player_2 = true
            end
        end
    
        while @@player_2 == true
            gameboard.board
            puts "player 2 turn"
            o = gets.chomp
            if o == '1' and gameboard.block_1 == '.'
                gameboard.block_1=('O')
                gameboard.board
                @@player_2 = false
                @@player_1 = true
            elsif o == '2' and gameboard.block_2 == '.'
                gameboard.block_2=('O')
                gameboard.board
                @@player_2 = false
                @@player_1 = true
            elsif o == '3' and gameboard.block_3 == '.'
                @gameboard.block_3=('O')
                gameboard.board
                @@player_2 = false
                @@player_1 = true
            elsif o == '4' and gameboard.block_4 == '.'
                gameboard.block_4=('O')
                gameboard.board
                @@player_2 = false
                @@player_1 = true
            end
        end
    end
end
game = Game::new
