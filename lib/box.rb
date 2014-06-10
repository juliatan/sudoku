module Box

  def boxes # returns a hash of arrays of cell ids
    box_reference_points = [0,3,6,27,30,33,54,57,60]
    boxes_hash = {}
    box_reference_points.map.with_index do |first_cell, index|
      boxes_hash["box#{index+1}".to_sym] = [first_cell, first_cell + 1, 
        first_cell + 2, first_cell + 9, first_cell + 10, first_cell + 11, 
        first_cell + 18, first_cell + 19, first_cell + 20]
    end
    boxes_hash
  end

  def box_member(cell_id) # input cell object id
    boxes.each do |box, box_id_array|
      return box if box_id_array.include?(cell_id)
    end
  end

  # boxes(grid) = {
  #   :box1 => [  grid.cells[0], grid.cells[1], grid.cells[2], grid.cells[9],
  #               grid.cells[10], grid.cells[11], grid.cells[18], grid.cells[19],
  #               grid.cells[20] ],
  #   :box2 => [  grid.cells[3], grid.cells[4], grid.cells[5], grid.cells[12],
  #               grid.cells[13], grid.cells[14], grid.cells[21], grid.cells[22],
  #               grid.cells[23] ],
  #   :box3 => [  grid.cells[6], grid.cells[7], grid.cells[8], grid.cells[15],
  #               grid.cells[16], grid.cells[17], grid.cells[24], grid.cells[25],
  #               grid.cells[26] ],
  #   :box4 => [  grid.cells[27], grid.cells[28], grid.cells[29], grid.cells[36],
  #               grid.cells[37], grid.cells[38], grid.cells[45], grid.cells[46],
  #               grid.cells[47] ],
  #   :box5 => [  grid.cells[30], grid.cells[31], grid.cells[32], grid.cells[39],
  #               grid.cells[40], grid.cells[41], grid.cells[48], grid.cells[49],
  #               grid.cells[50] ],
  #   :box6 => [  grid.cells[33], grid.cells[34], grid.cells[35], grid.cells[42],
  #               grid.cells[43], grid.cells[44], grid.cells[51], grid.cells[52],
  #               grid.cells[53] ],
  #   :box7 => [  grid.cells[54], grid.cells[55], grid.cells[56], grid.cells[63],
  #               grid.cells[64], grid.cells[65], grid.cells[72], grid.cells[73],
  #               grid.cells[74] ],
  #   :box8 => [  grid.cells[57], grid.cells[58], grid.cells[59], grid.cells[66],
  #               grid.cells[67], grid.cells[68], grid.cells[75], grid.cells[76],
  #               grid.cells[77] ],
  #   :box9 => [  grid.cells[60], grid.cells[61], grid.cells[62], grid.cells[69],
  #               grid.cells[70], grid.cells[71], grid.cells[78], grid.cells[79],
  #               grid.cells[80] ]
  # }


end