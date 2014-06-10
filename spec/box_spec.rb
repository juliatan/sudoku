require 'box'

class BoxHolder; include Box; end

describe Box do
  
  let(:box) { BoxHolder.new }

  it 'can idenfify which box a cell belongs to' do
    expect(box.box_member(55)).to eq :box7
  end
end