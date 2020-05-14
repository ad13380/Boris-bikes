require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike}

    it 'expects a released bike to be working' do
      subject.dock(Bike.new)
      expect(subject.release_bike).to be_working # change to working?
    end

    it 'raises an error when asked to release a bike while being empty' do
      expect { subject.release_bike }.to raise_error("Docking Station is empty")
    end

    it 'will not release a broken bike' do
      bike = Bike.new
      bike.broken
      subject.dock(bike)
      expect(subject.release_bike).to eq nil
    end
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument}

    it 'takes a bike as an argument and allows access to it' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes.last).to eq bike
    end

    it 'takes a broken bike as an argument and allows access to it' do
      bike = Bike.new
      bike.broken
      subject.dock(bike)
      expect(subject.bikes.last).to eq bike
    end

    it 'raises an error when asked to dock a bike while being full' do
      subject.capacity.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error("Docking Station is full")
    end
  end

  describe '#initialize' do
    it 'sets bike capacity as an argument when initialized' do
      station = DockingStation.new(10)
      expect(station.capacity).to eq 10
    end

    it 'sets bike capacity to default value when no argument passed' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end


end
