class Grid

  attr_reader :puzzle
  attr_accessor :cells

  def initialize(puzzle)
    @puzzle = puzzle
    @cells = populate # array of cell objects with populated values
  end

  def populate
    # note that the index of the cells start from 1 not 0!
    puzzle.chars.map.with_index { |value, index| Cell.new(value.to_i, index+1) }
  end

  def neighbours(cell_id) #input as the Cell object's ID
    
  #   array = []
  #   # find neighbours in the same row and column
  #   array << '1'.upto('9').map { |no| cell[0]+no }
  #   array << '1'.upto('9').map { |no| no+cell[1] }

  #   # find neighbours in the same box
  #   box = self.box_member(cell)
  #   array << BOXES[box]
  #   return array.flatten.uniq! - [cell]
  end

  def solve
  end

end