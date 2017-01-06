require 'docking_station'
require 'bike'

describe DockingStation do
  it "releases a bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "checks if bike exists and is working" do
    expect(subject.release_bike).to be_working
  end

  it "docks a bike at station" do
    bike = Bike.new
    station = subject
    station.release_bike
    expect(station.dock).to eq(nil)
  end

  it "station full" do
    bike = Bike.new
    expect { subject.dock }.to raise_error("Station is full")
  end

  it "no more bikes available" do
    station = DockingStation.new
    station.release_bike
    expect{ station.release_bike }.to raise_error("No more bikes available")
  end

end
