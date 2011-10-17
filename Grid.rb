#Class: Grid, class that represents a board of a givin size
#Notes:
#   Grid acts as a board for Pieces to move around, they are not responsible for moving the pieces themselves
#   Grids are responsible for catching errors (such as two pieces on one space)
#   Grids follow the Algebraic Notation for Chess Boards [x values are alphabetic, y values are numeric]
#   All empty spaces are indicated with the 'nil' object

class Grid
    def initialize(name, sizeX=8, sizeY=8)
        #name: name of the board
        #sizeX: size of the X axis (a..z); defaults to 8
        #sizeY: size of the Y axis (1..26); defaults to 8 
        @name = name
        @sizeX = sizeX
        @sizeY = sizeY
        @grid = {}
        #populate array
        for i in (0..sizeX-1)
            key = (i+97).chr()
            @grid.merge!(key=>{})
            for j in (0..sizeY-1)
                @grid[key].merge!(j.to_s() => nil)
            end
        end
    end

    def move(pos1, pos2)
        #method to move a piece from one position to the other
        #pos1: string in AN notation, first position (contains piece)
        #pos2: string in AN notation, second position (must be empty)
        
        #Tests:
        if(pos1==nil)
            raise "Error: No piece on space #{pos1}"
        elsif(pos2!=nil)
            raise "Error: Cannot move piece to #{pos2}, space already contains a piece"
        end
        @grid[pos2[0]][pos2[1]] = @grid[pos1[0]][pos1[1]]
        @grid[pos1[0]][pos1[1]] = nil
    end

    def addPiece(piece, pos)
        #method to place a piece onto the board
        #piece: piece object
        #pos: string in AN notation, position piece will be placed on (must be empty)
        @grid[pos[0]][pos[1]] = piece
    end

end
