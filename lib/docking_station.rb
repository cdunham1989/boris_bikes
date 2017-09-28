require_relative "Bike"

class DockingStation

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes!' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Dock full!' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end
