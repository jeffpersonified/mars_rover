require_relative 'plateau'
require_relative 'rover'

class Navigation 
  attr_reader :plateau, :vehicles

  def initialize input
    @input = input
    @grid = 
    @vehicles = 
    @commands = 
  end

  def execute
    # p @vehicles
    @vehicles.each_with_index do | vehicle, i |
       p @directions[i]
      @directions[i].each do | direction |
        # p vehicle
        case direction
        when 'M'
          vehicle.move
        when 'R'
          vehicle.rotate_right
        when 'L'
          vehicle.rotate_left
        end 
      end
    end
  end

  def read file
    # IO.readlines("test.txt")

    input = []
    File.foreach('test.txt') do |line|
      input << line.chomp
    end
    p input

    # implement file reading (each line to array)
    # [[5,3],
    #  [0,0,'N'],
    #  ['R','M','M','M','M','M','L','M','M','M','L','L'],
    #  [5,3,'E'],
    #  ['R','R','M','L','M','M','R','M','M','M','L','M','R','M']]
  end

  def find_area
    @input.shift
  end

  def find_vehicles
    vehicles = []
    @input.each_with_index do | vehicle, i |
      unless i % 2 == 1
        vehicles << Rover.new( vehicle[0], vehicle[1], vehicle[2], @plateau ) 
      end
    end
    vehicles
  end

  def find_directions
    directions = []
    @input.each_with_index do | direction, i |
      unless i % 2 == 0
        directions << direction
      end
    end
    directions
  end
end
