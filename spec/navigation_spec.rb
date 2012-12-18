require '../lib/navigation.rb'

describe Navigation do
  # format this for ARGV ["hsdfjhsdf","jsdhfkjsdf","hsjhdfkashd"]
  let(:input){ [["5", "5"], ["1", "2", "N"], ["LMLMLMLMM"], ["3", "3", "E"], ["MMRMMRMRRM"]] }
  let(:navigation){ Navigation.new input }

  describe "#new" do

    it "instantiates a grid of the correct dimensions" do
      navigation.grid.width.should eq(5)
      navigation.grid.height.should eq(5)
    end

    it "instantiates the correct number of vehicles" do
      navigation.vehicles.count.should eq(2)
    end

    it "instantiates its vehicles in the proper location" do

      navigation.vehicles[0].location.should eq({x: 1, y: 2})
      navigation.vehicles[1].location.should eq({x: 3, y: 3})
    end

    it "instantiates the correct commands" do
      navigation.commands[0].should eq(["L","M","L","M","L","M","L","M","M"])
      navigation.commands[1].should eq(["M","M","R","M","M","R","M","R","R","M"])
    end
  end

  describe "#execute" do
    it  "makes each vehicles move according to the proper set of commands" do
      navigation.execute
      navigation.vehicles[0].location.should eq({x: 1, y: 3})
      navigation.vehicles[0].orientation.should eq("N")
    end

    it "responds with an error if both vehicles occupy the same space" do
      pending
    end
  end

  describe "#outcome" do
    # it "outputs a text file with the correct coordinates and heading of moved rover(s)" do 
    #   file = mock('file')
    #   File.should_receive(:open).with("filename", "w").and_yield(file)
    #   file.should_receive(:write).with("1 3 N/n5 1 E")
      
    #   # navigation.outcome test 
    #   # test.to_s.should == "Hello, world!"
    # end
  end
end
