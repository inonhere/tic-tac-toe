class GameBoard
    attr_accessor :block_1

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

gameboard = GameBoard.new
gameboard.board
