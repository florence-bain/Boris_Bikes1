require_relative 'bike'

class DockingStation
  
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes avalaible' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if @bikes.size >= 20
    @bikes << bike
  end
  
end
