require_relative 'bike'

class DockingStation
  attr_reader :bikes, :cap

  DEFAULT_CAPACITY = 20

  def initialize(cap = DEFAULT_CAPACITY)
    @bikes = []
    @cap = cap
  end

  def release_bike
    fail "Docking Station is empty" if empty?
    bikes.pop
  end

  def dock(bike)
    fail "Docking Station is full" if full?
    bikes << bike
  end

  private

  def full?
    bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    bikes.empty?
  end
end
