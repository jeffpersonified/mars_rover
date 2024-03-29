require '../lib/plateau.rb'

describe Plateau do
  let(:plateau){ Plateau.new(7, 8) }
  let(:stringy_plateau){ Plateau.new('7', '8')}
  
  describe "#new" do
    it "initializes with the correct width and height" do
      plateau.width.should eq(7)
      plateau.height.should eq(8)
    end

    it "initializes with the correct width and height when passed strings as arguments" do
      stringy_plateau.width.should eq(7)
      stringy_plateau.height.should eq(8)
    end

    it "raises an error when initialized with a width less than or equal to zero" do
      expect { Plateau.new( -1, 6 ) }.to raise_error
      expect { Plateau.new( 0, 6 ) }.to raise_error
    end

    it "raises an error when initialized with a height less than or equal to zero" do
      expect { Plateau.new( 1, -6 ) }.to raise_error
      expect { Plateau.new( 1, 0 ) }.to raise_error
    end
  end

  describe "#contains?" do 
    context "for x coordinates greater than the plateau's width or less than zero" do
      it "returns false" do
        plateau.contains?({ x: 10, y: 8 }).should be_false
        plateau.contains?({ x: -10, y: 8 }).should be_false
      end
    end

    context "for x coordinates less than or equal to the plateau's width and greater than or equal to zero" do
      it "returns true" do
        plateau.contains?({ x: 7, y: 8 }).should be_true
        plateau.contains?({ x: 0, y: 0 }).should be_true
      end
    end
    
    context "for y coordinates greater than the plateau's height or less than zero" do
      it "returns false" do
        plateau.contains?({ x: 7, y: 9 }).should be_false
        plateau.contains?({ x: 7, y: -1 }).should be_false
      end
    end

    context "for y coordinates less than or equal to the plateau's height and greater than or equal to zero" do
      it "returns true" do
        plateau.contains?({ x: 7, y: 8 }).should be_true
        plateau.contains?({ x: 0, y: 0 }).should be_true
      end
    end
  end
end
