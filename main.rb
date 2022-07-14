class GameBoard
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
       puts @block_1 + @separator + @block_2
    end
end

gameboard = GameBoard.new
gameboard.row_1