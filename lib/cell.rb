class Cell

  attr_accessor :value, :index

  def initialize(value=0, index=0)
    @value = value
    @index = index
  end

  def filled_out?
    value != 0
  end

  def candidates(grid)
    (1..9).to_a - grid.neighbours_values(self.index)
  end

  def solve(grid)
    if solved?
      self.value = self.value
    elsif candidates(grid).count == 1
      self.value = candidates(grid)[0]
    else
      self.value = 0
    end
  end

  def solved?
    self.value > 0
  end

end