class Grid

  attr_reader :puzzle
  attr_accessor :cells

  def initialize(puzzle)
    @puzzle = puzzle
    @cells = populate # array of cell objects with populated values
  end

  def populate
    puzzle.chars.map { |value| Cell.new(value.to_i) }
  end

  def neighbours(cell) #input as an array reference e.g. cells[0]
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