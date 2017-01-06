require "docking_station"
require "bike"

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  bike = Bike.new
  it 'releases a good bike' do
  #  bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'docks a bike' do
  #  bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it 'returns a docked bike' do
#    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end

  it 'raises an error when no bikes' do
    expect{ subject.no_bikes }.to raise_error("no bikes available")
  end

  it 'raises an error when dock is full' do
    expect { subject.station_full}.to raise_error("station full")
  end



  it { is_expected.to respond_to(:bike) }
end

=begin
station = DockingStation.new
bike = station.release_bike

describe bike do
  it { is_expected.to respond_to(:working?) }
end

describe DockingStation.new(1) do
  it {is_expected.to have_attributes( :bikes => 1) }
end
=end
