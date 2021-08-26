require 'docking_station.rb'

describe DockingStation do

  describe '#release_bike' do

    it { is_expected.to respond_to :release_bike }

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end

    it 'raises an error when no bikes are avalaible' do
      expect { subject.release_bike }.to raise_error 'No bikes avalaible'
    end 
  end
  
  describe '#dock' do

    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq([bike])
    end

    it 'raises an error when full' do
      subject.capacity.times  { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error 'Docking station full'
    end
  end
 
   it 'has default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
   end
end
