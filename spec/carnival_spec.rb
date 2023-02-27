require './lib/ride'
require './lib/visitor'
require './lib/carnival'

RSpec.describe Carnival do

  let(:carnival1) { Carnival.new(5) }
  let(:ride1) { Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle }) }
  let(:ride2) { Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle }) }
  let(:ride3) { Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling }) }

  describe '#initialize' do
    it 'exists' do
      expect(carnival1).to be_a(Carnival)
    end

    it 'has attributes' do
      expect(carnival1.duration).to eq(5)
      expect(carnival1.rides).to eq([])
    end
  end
  
  def '#add_ride' do
    it 'adds a ride to the rides array' do
      add_ride(ride1)
      add_ride(ride2)
      add_ride(ride3)
      
      
      expect(carnival1.rides).to eq([ride1, ride2, ride3])
    end
  end
end