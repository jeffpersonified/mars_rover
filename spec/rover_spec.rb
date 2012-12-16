require '../lib/rover.rb'
require '../lib/plateau.rb'

describe Rover do
  let(:rover){ Rover.new(2, 2, 'N', Plateau.new(5, 5)) }

  context "#new" do
    it "should initialize with the correct orientation" do
      rover.orientation.should eq('N')
    end
    it "should initialize with the correct coordinates" do
      rover.location[:x].should eq(2)
      rover.location[:y].should eq(2)
    end
  end

  context "#location" do
    it "should return the correct location" do
      rover.location.should eq({x: 2, y: 2})
    end
  end

  context "rotate_left" do
    it "should rotate the rover 90 degrees counter-clockwise" do
      rover.rotate_left
      rover.orientation.should eq('W')
    end
  end

  context "rotate_right" do
    it "should rotate the rover 90 degrees clockwise" do
      rover.rotate_right
      rover.orientation.should eq('E')
    end
  end

  context "#orientation" do
    it "should return the proper orientatation after multiple rotations" do
      rover.rotate_left
      rover.rotate_left  
      rover.rotate_right
      rover.rotate_left
      rover.orientation.should eq('S')
    end
  end

  context "#move" do    
    it "should move the rover forward by one space in the proper direction" do
      rover.rotate_left
      rover.move
      rover.location.should eq({x: 1, y: 2})
    end

    it "should return an error if a move is made that might would the rover over the plataeu's edge" do
      rover.rotate_left
      rover.rotate_left
      rover.move
      rover.move
      expect { :move }.to raise_error 
    end
  end
end

