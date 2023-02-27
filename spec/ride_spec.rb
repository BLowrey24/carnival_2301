require './lib/visitor'
require './lib/ride'

RSpec.describe Ride do

  let(:ride1) { Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle }) }
  let(:visitor1) { Visitor.new('Bruce', 54, '$10') }
  let(:visitor2) { Visitor.new('Tucker', 36, '$5') }

  describe '#initialize' do
    it 'exists' do
      expect(ride1).to be_a(Ride)
    end

    it 'has attributes' do
      expect(ride1.name).to eq('Carousel')
      expect(ride1.min_height).to eq(24)
      expect(ride1.admission_fee).to eq(1)
      expect(ride1.excitement).to eq(:gentle)
      expect(ride1.total_revenue).to eq(0)
    end
  end

  descirbe '#board_rider' do
    it 'adds rider to the ride_log' do
      visitor1.add_preference(:gentle)
      visitor2.add_preference(:gentle)

      ride1.board_rider(visitor1)
      ride1.board_rider(visitor2)
      ride1.board_rider(visitor1)

      expect(ride1.rider_log).to eq([visitor1, visitor2])
      expect(visitor1.spending_money).to eq(8)
      expect(visitor4.spending_money).to eq(4)
      expec(ride1.total_revenue).to eq(3)
    end
  end
end