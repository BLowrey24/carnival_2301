require './lib/ride'
require './lib/visitor'
require './lib/carnival'

RSpec.describe Carnival do

  let(:carnival1) { Carnival.new(5) }

  descriibe '#initialize' do
    it 'exists' do
      expect(carnival1).to be_a(Carnival)
    end

    it 'has attributes' do
      expect(carnival1.duration).to eq(5)
      expect(carnival1.rides).to eq([])
    end
  end
end