require './lib/ride'
require './lib/visitor'
require './lib/carnival'

RSpec.describe Carnival do

  let(:carnival1) { Carnival.new(5) }
  let(:ride1) { Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle }) }
  let(:ride2) { Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle }) }
  let(:visitor1) { Visitor.new('Bruce', 54, '$10') }
  let(:visitor2) { Visitor.new('Tucker', 36, '$5') }

  before do
    ride1.board_rider(visitor1)
    ride1.board_rider(visitor2)
    ride2.board_rider(visitor1)
  end

  describe '#initialize' do
    it 'exists' do
      expect(carnival1).to be_a(Carnival)
    end

    it 'has attributes' do
      expect(carnival1.duration).to eq(5)
      expect(carnival1.rides).to eq([])
    end
  end
  
  describe '#add_ride' do
    it 'adds a ride to the rides array' do
      carnival1.add_ride(ride1)
      carnival1.add_ride(ride2)
      carnival1.add_ride(ride3)
      
      
      expect(carnival1.rides).to eq([ride1, ride2, ride3])
    end
  end

  describe '#most_popular_ride' do
    it 'returns the most popular ride' do
      carnival1.add_ride(ride1)
      carnival1.add_ride(ride2)

      expect(carnival1.most_popular_ride).to eq(ride1)
    end
  end

  describe '#most_profitable_ride' do
    it 'returns the most profitable ride' do
      carnival1.add_ride(ride1)
      carnival1.add_ride(ride2)

      expect(carnival1.most_profitable_ride).to eq(ride1)
    end
  end

  describe '#total_revenue' do
    it 'returns the total revenue of all the rides in the carvinal'
    carnival1.add_ride(ride1)
    carnival1.add_ride(ride2)

    expect(carnival1.total_revenue).to eq(7)
  end
end