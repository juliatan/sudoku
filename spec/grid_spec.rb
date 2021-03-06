require 'grid'

describe Grid do

  # it's an easy sudoku puzzle, row by row
  let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600' } 
  let(:grid) { Grid.new(puzzle) }

  context 'during initialization' do

    it 'should have 81 cells' do
      expect(grid.cells.count).to eq 81
    end

    it 'should have an unsolved first cell' do
      expect(grid.cells[0].value).to eq 0
    end

    it 'should have a solved second cell with value 1' do
      expect(grid.cells[1].value).to eq 1
    end

  end

  context 'when determining neighbours for each cell' do

    it 'can determine the neighbours of each cell (by index)' do
      expect(grid.neighbours_index(10)).to eq [ 1,2,3,11,12,13,14,15,16,17,18,19,
        20,21,28,37,46,55,64,73 ] 
    end

    it 'can determine the neighbours values for each cell' do
      expect(grid.neighbours_values(10)).to eq [ 1,2,4,5,6,7,8,9 ]
    end

  end

  context "solving sudoku" do

    it 'can solve the puzzle' do
      expect(grid.solved?).to be false
      grid.solve
      expect(grid.solved?).to be true
      expect(grid.to_s).to eq('615493872348127956279568431496832517521746389783915264952681743864379125137254698')
    end

  end

end