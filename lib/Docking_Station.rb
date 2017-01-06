require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize(bike = [])
    @bike = bike
  end

  def release_bike
    raise "No more bikes available" if @bike.empty?
    if @bike.count > 0
      @bike.pop
    end
  end

  def dock
    if @bike.count < 20
      @bike << Bike.new
    else
      raise "Station is full"
    end
    @bike
  end

end
