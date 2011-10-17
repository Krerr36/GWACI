#Class: Piece, class for any piece on the board, to be used as a parent class
#Notes:
#   Pieces are responsible for moving themselves around the Grid, not the Grid Class


class Piece
    def initialize(name, grid=nil, pos=nil)
        #Initilaize method for class Piece
        #name: name of the piece
        #grid: grid object that the piece can prompt to move on
        #pos: string representing position in Algebraic Notation
        @name = name
        @type = "generic piece"
        if(grid!=nil and pos!=nil)
            @grid = grid
            @pos = pos
            grid.addPiece(self, pos)
        end
    end

    def moveToPos(pos)
        #Method to move the piece from the current position to pos
        #pos: string in AN notation (must be empty)
        @grid.move(@pos, pos)
        @pos = pos
    end

    def getName()
        #Method to return piece name
        return @name
end
