require 'cell'

describe Cell do

  let(:cell) { Cell.new }

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

    
  end

end