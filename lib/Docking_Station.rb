 require_relative 'bike'

 class DockingStation
  attr_reader :bike

  def release_bike
  #  Bike.new
  @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

  def no_bikes
    if @bike == nil
            raise "no bikes available"
    end
  end

  def station_full

    if @bike == bike
      raise "station full"
    end
  end

end
