require './lib/visitor'

RSpec.describe Visitor do

  let(:visitor1) { Visitor.new('Bruce', 54, '$10') }

  describe '#initialize' do
    it 'exists' do
      expect(visitor1).to be_a(Visitor)
    end

    it 'has attributes' do
      expect(visitor1.name).to eq('Bruce')
      expect(visitor1.height).to eq(54)
      expect(visitor1.spending_money).to eq(10)
      expect(visitor1.preferences).to eq([])
    end
  end
  
  describe '#add_preference' do
  it 'adds a preference to the preferences array' do
    visitor1.add_preference(:gentle)
    visitor1.add_preference(:water)
    expect(visitor1.preferences).to eq([:gentle, :water])
    end
  end
end