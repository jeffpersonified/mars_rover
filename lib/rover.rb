class Rover
  attr_reader :location, :rotation

  def initialize(x, y, orientation, plateau)
    @location = {x: x, y: y}
    @rotation = to_degrees(orientation)
    @plateau = plateau
  end

  def orientation
    case rotation % 360
    when 0
      'N'
    when 90
      'E'
    when 180
      'S'
    when 270
      'W'
    end
  end

  def move
    forward if @plateau.on?(future_location)
  end

  def future_location
    case orientation
    when 'N'
      { x: @location[:x], y: @location[:y] + 1 }
    when 'E'
      { x: @location[:x] + 1, y: @location[:y] }
    when 'S'
      { x: @location[:x], y: @location[:y] - 1 }
    when 'W'
      { x: @location[:x] - 1, y: @location[:y] }
    end
  end

  def forward
    case orientation
    when 'N'
      @location[:y] += 1
    when 'E'
      @location[:x] += 1
    when 'S'
      @location[:y] -= 1
    when 'W'
      @location[:x] -= 1
    end
  end

  def rotate_left 
    @rotation -= 90
  end

  def rotate_right
    @rotation += 90
  end

  private

  def to_degrees(orientation)
    case orientation
    when 'N'
      0
    when 'E'
      90
    when 'S'
      180
    when 'W'
      270
    end 
  end
end

