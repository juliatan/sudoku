require 'cell'

describe Cell do

  let(:cell) { Cell.new }
  let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600' } 
  let(:grid) { Grid.new(puzzle) }

  context 'during initialization' do

    it 'has a value of 0' do
      expect(cell.value).to eq 0
    end

  end

  context 'once the program is running' do

    it 'knows if it is filled' do
      cell.value = 1
      expect(cell).to be_filled_out
    end

    it 'can determine candidates for itself' do
      cell = Cell.new(0, 10)
      expect(cell.candidates(grid)).to eq [3]
    end

    it 'can solve itself if there is only one candidate' do
      cell = Cell.new(0, 10)
      # allow(cell).to receive(:candidates) { [3] }
      cell.solve(grid)
      expect(cell.value).to eq 3
    end

  end

end