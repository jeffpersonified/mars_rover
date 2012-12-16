require '../lib/plateau.rb'

describe Plateau do
  let(:plateau){ Plateau.new(7, 8) }
  
  context "#new" do
    it "should initialize with the correct width and height" do
      plateau.width.should eq(7)
      plateau.height.should eq(8)
    end
  # throw error when initialized with a negative
  end

  context "#on?" do 
    it "should return false for x coordinates greater than the plateau's width or less than zero" do 
      plateau.on?({ x: 10, y: 8 }).should be_false
      plateau.on?({ x: -10, y: 8 }).should be_false
    end
    it "should return true for x coordinates less than or equal to the plateau's width and greater than or equal to zero"
    it "should return false for x coordinates greater than the plateau's width or less than zero"
    it "should return true for x coordinates less than or equal to the plateau's width and greater than or equal to zero"
  end
end
