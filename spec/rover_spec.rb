require '../lib/rover.rb'
require '../lib/plateau.rb'

describe Rover do
  let(:plateau){ Plateau.new(5, 5) }
  let(:rover){ Rover.new(2, 2, 'N', plateau ) }

  context "#new" do
    it "initializes with the correct orientation" do
      rover.orientation.should eq('N')
    end
    it "initializes with the correct coordinates" do
      rover.location[:x].should eq(2)
      rover.location[:y].should eq(2)
    end
    it "initializes the correct coordinates even if x and y are passed as strings" do
      stringy_rover = Rover.new('4','4','N', plateau)
      stringy_rover.location[:x].should eq(4)
      stringy_rover.location[:y].should eq(4)
    end
  end

  context "#location" do
    it "returns the correct location" do
      rover.location.should eq({x: 2, y: 2})
    end
  end

  context "rotate_left" do
    it "rotates the rover 90 degrees counter-clockwise" do
      rover.rotate_left
      rover.orientation.should eq('W')
    end
  end

  context "rotate_right" do
    it "rotates the rover 90 degrees clockwise" do
      rover.rotate_right
      rover.orientation.should eq('E')
    end
  end

  context "#orientation" do
    it "returns the proper orientatation after multiple rotations" do
      rover.rotate_left
      rover.rotate_left  
      rover.rotate_right
      rover.rotate_left
      rover.orientation.should eq('S')
    end
  end

  context "#move" do    
    it "moves the rover forward by one grid point and maintains the same heading" do
      rover.rotate_left
      rover.move
      rover.location.should eq({x: 1, y: 2})
    end

    it "returns an error if a move would send the rover over the plataeu's edge" do
      rover.rotate_left
      rover.rotate_left
      rover.move
      rover.move
      expect { :move }.to raise_error 
    end
  end
end

