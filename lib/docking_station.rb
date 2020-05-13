require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    if bike.nil?
      fail "Docking Station is empty"
    end
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end
end
