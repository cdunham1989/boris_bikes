require "docking_station"

describe DockingStation do

  subject(:docking_station) { DockingStation.new }

  it { is_expected.to respond_to('release_bike') }

  it "releases working bike" do
     bike = subject.release_bike
     expect(bike).to be_working
  end

  it "docks a bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(docking_station.bike).to eq bike
  end
end
