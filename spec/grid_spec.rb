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

    it 'can determine the neighbours of each cell' do
      expect(grid.neighbours(grid.cells[10])).to eq [ grid.cells[0].value, 
      grid.cells[1].value, grid.cells[2].value, grid.cells[9].value, 
      grid.cells[11].value, grid.cells[18].value, grid.cells[19].value,
      grid.cells[20].value, grid.cells[12].value, grid.cells[13].value,
      grid.cells[14].value, grid.cells[15].value, grid.cells[16].value,
      grid.cells[17].value, grid.cells[28].value, grid.cells[37].value,
      grid.cells[46].value, grid.cells[55].value, grid.cells[64].value,
      grid.cells[73].value] 
    end

  end

  context "solving sudoku" do

    xit "can solve the puzzle" do
      expect(grid.solved?).to be_false
      grid.solve
      expect(grid.solved?).to be_true
      expect(grid.to_s).to eq('615493872348127956279568431496832517521746389783915264952681743864379125137254698')
    end
  end

end