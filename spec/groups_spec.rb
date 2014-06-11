require 'groups'

class GroupsHolder; include Groups; end

describe Groups do
  
  let(:groups) { GroupsHolder.new }

  it 'can identify which box a cell belongs to' do
    expect(groups.box_member(55)).to eq :box7
  end

  it 'can identify which row a cell belongs to' do
    expect(groups.row_member(55)).to eq :row7
  end

  it 'can identify which column a cell belongs to' do
    expect(groups.column_member(55)).to eq :column1
  end
end