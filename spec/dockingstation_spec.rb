describe "Docking_station" do

  it "expects user to ask for bike" do
    expect(dockingstation(bike)).to eq "Release"
  end

end
