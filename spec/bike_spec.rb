require 'bike.rb'

describe Bike do 
  describe '#working?' do
    it {is_expected.to respond_to :working?}
  end

  describe '#broken' do
    it {is_expected.to respond_to :broken}

    it 'can be reported as broken' do
      subject.broken
      expect(subject.working?).to eq false
    end
  end
end
