require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "Docking Station is empty" if bikes.empty?
    bikes.pop
  end

  def dock(bike)
    fail "Docking Station is full" unless bikes.count < 20
    bikes << bike
  end
end
