require 'bike.rb'
require 'docking_station.rb'

describe Bike do
  it 'Checks if the bike is working' do
    expect(subject).to respond_to(:working?)
  end

  it 'Check if bike responds to broken? method' do
    expect(subject).to respond_to(:broken?)
  end

end
