require 'docking_station'
require 'bike'

describe DockingStation do
  it "releases a bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "checks if bike exists and is working" do
    station = DockingStation.new
    station.dock
    expect(station.release_bike).to be_working
  end

  it "docks a bike at station" do
    bike = Bike.new
    expect(subject.dock[0].class).to eq(bike.class)
  end

  it "station full" do
    station = DockingStation.new
    DockingStation::DEFAULT_CAPACITY.times {station.dock}
    expect { station.dock }.to raise_error("Station is full")
  end

  it "no more bikes available" do
    expect{ subject.release_bike }.to raise_error("No more bikes available")
  end

end
