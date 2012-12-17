require '../lib/command.rb'

describe Command do
  describe "#new" do
    context "when initialized with a text file as an argument" do
      let(:command){ Command.new('test.txt') }

      it "instantiates a plateau of the correct dimensions" do
        command.plateau.width.should eq(5)
        command.plateau.height.should eq(3)
      end

      it "instantiates the correct number of vehicles" do
        command.vehicles.count.should eq(2)
      end

      it "gives the vehicles the correct commands" do
        expect { command.execute }.to change(command.vehicles.first, :location).
          from({x: 0, y: 0}).
          to({x: 5, y: 3})
        # expect { command.execute }.to change(command.vehicles.first, :orientation).
        #   from('N').
        #   to('S')
        # expect { command.execute }.to change(command.vehicles.last, :location).
        #   from({x: 5, y: 3}).
        #   to({x: 0, y: 0})
        # expect { command.execute }.to change(command.vehicles.last, :orientation).
        #   from('E').
        #   to('W')
      end
    end
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