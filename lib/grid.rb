require_relative 'groups'

class Grid

  include Groups

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
    
    array = []
    # find neighbours in the same row and column
    array << rows[row_member(cell_id)] << columns[column_member(cell_id)]

    # find neighbours in the same box
    array << boxes[box_member(cell_id)]
    return (array.flatten.uniq! - [cell_id]).sort!
  end

  def solve
  end

end