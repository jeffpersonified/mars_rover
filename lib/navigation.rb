require_relative 'plateau'
require_relative 'rover'

class Navigation 
  attr_reader :grid, :vehicles, :commands

  def initialize input
    @input = input
    @grid = define_grid
    @vehicles = define_vehicles 
    @commands = define_commands 
  end

  def define_grid
    grid_array = @input.shift
    Plateau.new(grid_array[0], grid_array[1])
  end

  def define_vehicles
    vehicles = []
    @input.each_with_index do |vehicle, i|
      if i % 2 == 0
        vehicles << Rover.new(vehicle[0], vehicle[1], vehicle[2], @grid) 
      end
    end
    vehicles
  end

  def define_commands
    commands = []
    @input.each_with_index do |command, i|
      commands << command.first.split(//) if i % 2 == 1
    end
    commands
  end

  def execute
    @vehicles.each_with_index do | vehicle, i |
      @commands[i].each do | command |
        case command
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

  def outcome output_file
    File.open(output_file, "w") do |file|
      @vehicles.each do |vehicle|
        file.puts "#{vehicle.location[:x]} #{vehicle.location[:y]} #{vehicle.orientation}"
      end
    end
  end
end
