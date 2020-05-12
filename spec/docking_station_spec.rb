require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  #let(:subject) {DockingStation.new}

  it { is_expected.to respond_to :release_bike}

  it 'expects a released bike to be working' do
    #expect(subject.release_bike.working?).to eq true
    expect(subject.release_bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument}

  it 'takes a bike as an argument and allows access to it' do
    bike_instance = Bike.new
    subject.dock(bike_instance)
    expect(subject.bike).to eq bike_instance
  end
end
