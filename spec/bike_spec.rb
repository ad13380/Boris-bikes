require 'bike.rb'
require 'docking_station.rb'

describe Bike do
  it 'Checks if bike responds to .working method' do
    expect(subject).to respond_to(:working)
  end

  it 'Check if bike responds to .broken method' do
    expect(subject).to respond_to(:broken)
  end

  it 'is working by default' do
    expect(subject.working).to eq true
  end

  it 'changes from working to broken when .broken method is called' do

    # set to broken
    # show that broken

  end

end
