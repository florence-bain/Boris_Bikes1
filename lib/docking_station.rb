require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize
    @capacity = DEFAULT_CAPACITY
    @bikes = []
  end

  def release_bike
    fail 'No bikes avalaible' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end
  
  private
  
  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end 
  
end
