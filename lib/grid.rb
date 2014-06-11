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

  def display
    values = cells.map do |cell| 
      cell.value
    end
    values.each_slice(9) { |slice| p slice }
  end

  def neighbours_index(cell_index) #output is sorted array of cell indexes
    array = []
    # find neighbours in the same row and column
    array << rows[row_member(cell_index)] << columns[column_member(cell_index)]

    # find neighbours in the same box
    array << boxes[box_member(cell_index)]
    return (array.flatten.uniq! - [cell_index]).sort!
  end

  def neighbours_values(cell_index) #output is sorted array of cell values
    array = []
    cells.each do |cell|
      neighbours_index(cell_index).each do |neighbour_index|
        array << cell if cell.index == neighbour_index
      end
    end
    array.map! { |cell| cell.value }.uniq.sort! - [0]
  end

  def solve
    outstanding_before, looping = 81, false # parallel assignment
    # continue solving individual cells while puzzle not solved and it is not a hard sudoku
    while !solved? && !looping
      @cells.each{|cell| cell.solve(self) }
      outstanding         = @cells.count {|c| c.solved? }
      looping             = outstanding_before == outstanding
      outstanding_before  = outstanding
    end 
  end

  def solved?
    @cells.all? { |cell| cell.value > 0 }
  end

  def to_s
    @cells.map{|cell| cell.value}.join
  end

end