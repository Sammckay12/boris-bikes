 require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def release_bike
   if @bike != nil
     @bike
   elsif @bike == nil
     raise "no bikes available"
   end
   @bike
  end

  def dock_bike
    if @bike != nil
      raise "station full"
      @bike
    end
    @bike
  end

end
