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
    
    puts "To select where to put your movement input a number from 1 to 9"
    puts "First row it's 1 2 3"
    puts "Second row it's 4 5 6"
    puts "Third row its 7 8 9 "
    while @@winner == false
        while @@player_1 == true and @@winner == false
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
            elsif x == '5' and gameboard.block_5 == '.'
                gameboard.block_5=('X')
                @@player_1 = false
                @@player_2 = true
            elsif x == '6' and gameboard.block_6 == '.'
                gameboard.block_6=('X')
                @@player_1 = false
                @@player_2 = true
            elsif x == '7' and gameboard.block_7 == '.'
                gameboard.block_7=('X')
                @@player_1 = false
                @@player_2 = true
            elsif x == '8' and gameboard.block_8 == '.'
                gameboard.block_8=('X')
                @@player_1 = false
                @@player_2 = true
            elsif x == '9' and gameboard.block_9 == '.'
                gameboard.block_9=('X')
                @@player_1 = false
                @@player_2 = true
            end

            if gameboard.block_1 == 'X' and gameboard.block_2 == 'X' and gameboard.block_3 == 'X'
                puts "Player 1 wins"
                gameboard.board
                @@winner = true
            elsif gameboard.block_4 == 'X' and gameboard.block_5 == 'X' and gameboard.block_6 == 'X'
                puts "Player 1 wins"
                gameboard.board
                @@winner = true
            elsif gameboard.block_7 == 'X' and gameboard.block_8 == 'X' and gameboard.block_9 == 'X'
                puts "Player 1 wins"
                gameboard.board
                @@winner = true
            elsif gameboard.block_1 == 'X' and gameboard.block_4 == 'X' and gameboard.block_7 == 'X'
                puts "Player 1 wins"
                gameboard.board
                @@winner = true
            elsif gameboard.block_2 == 'X' and gameboard.block_5 == 'X' and gameboard.block_8 == 'X'
                puts "Player 1 wins"
                gameboard.board
                @@winner = true
            elsif gameboard.block_3 == 'X' and gameboard.block_6 == 'X' and gameboard.block_9 == 'X'
                puts "Player 1 wins"
                gameboard.board
                @@winner = true
            elsif gameboard.block_1 == 'X' and gameboard.block_5 == 'X' and gameboard.block_9 == 'X'
                puts "Player 1 wins"
                gameboard.board
                @@winner = true
            elsif gameboard.block_3 == 'X' and gameboard.block_5 == 'X' and gameboard.block_7 == 'X'
                puts "Player 1 wins"
                gameboard.board
                @@winner = true
            end
        end
        
        while @@player_2 == true and @@winner == false
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
                gameboard.block_3=('O')
                gameboard.board
                @@player_2 = false
                @@player_1 = true
            elsif o == '4' and gameboard.block_4 == '.'
                gameboard.block_4=('O')
                gameboard.board
                @@player_2 = false
                @@player_1 = true
            elsif o == '5' and gameboard.block_5 == '.'
                gameboard.block_5=('O')
                gameboard.board
                @@player_2 = false
                @@player_1 = true
            elsif o == '6' and gameboard.block_6 == '.'
                gameboard.block_6=('O')
                gameboard.board
                @@player_2 = false
                @@player_1 = true
            elsif o == '7' and gameboard.block_7 == '.'
                gameboard.block_7=('O')
                gameboard.board
                @@player_2 = false
                @@player_1 = true
            elsif o == '8' and gameboard.block_8 == '.'
                gameboard.block_8=('O')
                gameboard.board
                @@player_2 = false
                @@player_1 = true
            elsif o == '9' and gameboard.block_9 == '.'
                gameboard.block_9=('O')
                gameboard.board
                @@player_2 = false
                @@player_1 = true
            end
            
            if gameboard.block_1 == 'O' and gameboard.block_2 == 'O' and gameboard.block_3 == 'O'
                puts "Player 2 wins"
                gameboard.board
                @@winner = true
            elsif gameboard.block_4 == 'O' and gameboard.block_5 == 'O' and gameboard.block_6 == 'O'
                puts "Player 2 wins"
                gameboard.board
                @@winner = true
            elsif gameboard.block_7 == 'O' and gameboard.block_8 == 'O' and gameboard.block_9 == 'O'
                puts "Player 2 wins"
                gameboard.board
                @@winner = true
            elsif gameboard.block_1 == 'O' and gameboard.block_4 == 'O' and gameboard.block_7 == 'O'
                puts "Player 2 wins"
                gameboard.board
                @@winner = true
            elsif gameboard.block_2 == 'O' and gameboard.block_5 == 'O' and gameboard.block_8 == 'O'
                puts "Player 2 wins"
                gameboard.board
                @@winner = true
            elsif gameboard.block_3 == 'O' and gameboard.block_6 == 'O' and gameboard.block_9 == 'O'
                puts "Player 2 wins"
                gameboard.board
                @@winner = true
            elsif gameboard.block_1 == 'O' and gameboard.block_5 == 'O' and gameboard.block_9 == 'O'
                puts "Player 2 wins"
                gameboard.board
                @@winner = true
            elsif gameboard.block_3 == 'O' and gameboard.block_5 == 'O' and gameboard.block_7 == 'O'
                puts "Player 2 wins"
                gameboard.board
                @@winner = true
            end
        end
    end
end
game = Game::new
