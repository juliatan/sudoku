class Cell

  attr_accessor :value, :index

  def initialize(value=0, index=0)
    @value = value
    @index = index
  end

  def filled_out?
    value != 0
  end



  def candidates

  end


end