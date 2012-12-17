require '../lib/navigation.rb'

describe Navigation do
    let(:input){ [["5", "5"], ["1", "2", "N"], ["LMLMLMLMM"], ["3", "3", "E"], ["MMRMMRMRRM"]] }
    let(:command){ Navigation.new input }

  describe "#new" do
    it "instantiates a grid of the correct dimensions" do
      navigation.grid.width.should eq(5)
      navigation.grid.height.should eq(3)
    end

    it "instantiates the correct number of vehicles" do
      navigation.vehicles.count.should eq(2)
    end

    it "instantiates its vehicles in the proper location" do
      navigation.vehicles[0].location.should eq({x: 1, y: 2})
      navigation.vehicles[0].location.should eq({x: 3, y: 3})
    end

    it "instantiates the correct commands" do
      navigation.commands[0].should eq(["L","M","L,","M","L","M","L","M","M"])
      navigation.commands[1].should eq(["M","M","R","M","M","R","M","R","R","M"])
    end
# should know grid, vehicles, commands
  
  end

  describe "#execute" do
    # it  ""
  end

  describe "#outcome" do
    # it "outputs a text file with the correct coordinates and heading of moved rover(s)" do 
    # end   
  end
end


# command.new('example.txt')