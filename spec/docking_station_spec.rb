require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike}

    it 'expects a released bike to be working' do
      subject.dock(Bike.new)
      expect(subject.release_bike).to be_working
    end

    it 'raises an error when asked to release a bike while being empty' do
      expect { subject.release_bike }.to raise_error("Docking Station is empty")
    end
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument}

    it 'takes a bike as an argument and allows access to it' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
  end
end
