require_relative 'bike'

class DockingStation
  attr_reader :bikes, :cap

  DEFAULT_CAPACITY = 20

  def initialize(cap = DEFAULT_CAPACITY)
    @bikes = []
    @cap = cap
  end

  def release_bike
    # check @working false?
    fail "Docking Station is empty" if empty?
    bikes.pop if check(bikes.last)
  end

  def dock(bike)
    fail "Docking Station is full" if full?
    bikes << bike
  end

  private

  def full?
    bikes.count >= DEFAULT_CAPACITY
  end

  def check(bike)
    if bike.working == true
      return true
    else
      fail "bike broken"
    end
  end

  def empty?
    bikes.empty?
  end
end
