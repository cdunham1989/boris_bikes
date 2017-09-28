require "docking_station"

describe DockingStation do

  subject(:docking_station) { DockingStation.new }

  it { is_expected.to respond_to('release_bike') }

  it "releases working bike" do
     bike = Bike.new
     subject.dock(bike)
     expect(bike).to be_working
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      docking_station.dock(bike)
      expect(docking_station.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
    expect { docking_station.release_bike }.to raise_error('No bikes!')
    end
  end


  it "docks a bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(docking_station.bike).to eq bike
  end
end
