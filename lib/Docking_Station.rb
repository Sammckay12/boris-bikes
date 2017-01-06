require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize
    @counter = 1
    @bike = bike
  end

  def release_bike
    raise "No more bikes available" if @counter==0
    if @counter > 0
      @counter -= 1
      Bike.new
    end
  end

  def dock
    if @counter == 0
      @counter += 1
    else
      raise "Station is full"
    end
    @bike
  end

end
