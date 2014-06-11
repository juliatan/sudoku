module Groups

  def boxes # returns a hash of arrays of cell ids as integers
    box_reference_points = [1,4,7,28,31,34,55,58,61]
    box_hash = {}
    box_reference_points.map.with_index do |first_cell, index|
      box_hash["box#{index+1}".to_sym] = [first_cell, first_cell + 1, 
        first_cell + 2, first_cell + 9, first_cell + 10, first_cell + 11, 
        first_cell + 18, first_cell + 19, first_cell + 20]
    end
    box_hash
  end

  def box_member(cell_id) # input cell object id, return symbol
    boxes.each do |box, box_id_array|
      return box if box_id_array.include?(cell_id)
    end
  end

  def rows # returns a hash of arrays of cell ids as integers
    row_reference_points = [1,10,19,28,37,46,55,64,73]
    row_hash ={}
    row_reference_points.map.with_index do |first_cell, index|
      row_hash["row#{index+1}".to_sym] = [first_cell, first_cell + 1, 
        first_cell + 2, first_cell + 3, first_cell + 4, first_cell + 5, 
        first_cell + 6, first_cell + 7, first_cell + 8]
    end
    row_hash
  end

  def row_member(cell_id) # input cell object id, return symbol
    rows.each do |row, row_id_array|
      return row if row_id_array.include?(cell_id)
    end
  end

  def columns # returns a hash of arrays of cell ids as integers
    column_reference_points = [1,2,3,4,5,6,7,8,9]
    column_hash ={}
    column_reference_points.map.with_index do |first_cell, index|
      column_hash["column#{index+1}".to_sym] = [first_cell, first_cell + 9, 
        first_cell + 18, first_cell + 27, first_cell + 36, first_cell + 45, 
        first_cell + 54, first_cell + 63, first_cell + 72]
    end
    column_hash
  end

  def column_member(cell_id) # input cell object id, return symbol
    columns.each do |column, column_id_array|
      return column if column_id_array.include?(cell_id)
    end
  end

end