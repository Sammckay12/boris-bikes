require "docking_station"
require "bike"

describe DockingStation do

  bike = Bike.new
  station = DockingStation.new(bike)

  it 'check' do
    expect(station).to respond_to(:release_bike)
  end

  it 'releases a bike' do
    expect(station.release_bike).to eq bike
  end

  it 'docks a bike' do
    new_bike = nil
    new_station = DockingStation.new(new_bike)
    expect(new_station.dock_bike).to eq nil
  end

  it 'raises an error when no bikes' do
    new_bike = nil
    new_station = DockingStation.new(new_bike)
    expect{ new_station.release_bike }.to raise_error("no bikes available")
  end

  it 'raises an error when dock is full' do
    expect { station.dock_bike}.to raise_error("station full")
  end

end
