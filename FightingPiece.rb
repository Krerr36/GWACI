#Class: FightingPiece, subclass off of the Piece class, for Pieces that have commands and stats
#Notes:
#

class FightingPiece < Piece
    def initialize(name, hp, mp, stats, grid=nil, pos=nil)
        #Initialize method for class Fighting Piece
        #name: [string] name of the piece
        #hp: [int] Health Points
        #mp: [int] Magic/Mana Points
        #stats: [hash] STR, DEF, INT, LCK 
        super(name, grid, pos)
        @hp = hp; @mp = mp
        @stats = stats
        @type = "fighting piece"
    end
end 
