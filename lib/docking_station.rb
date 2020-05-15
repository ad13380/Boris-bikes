require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "Docking Station is empty" if empty?
    bikes.pop if @bikes.last.working?
  end

  def dock(bike)
    fail "Docking Station is full" if full?
    bikes << bike
  end

  private  

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end
end
