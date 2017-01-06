require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize(bike = [])
    @bike = bike
  end

  def release_bike
    raise "No more bikes available" if empty?
    @bike.pop
  end

  def dock
    raise "Station is full" if full?
    @bike << Bike.new
  end

private

  def full?
    @bike.count >= 20
  end

  def empty?
    @bike.empty?
  end

end
