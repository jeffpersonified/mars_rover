class Plateau
  attr_reader :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def on? location
    within_width?(location[:x]) && within_height?(location[:y])
  end

  def within_width? x
    x >= 0 && x <= width
  end

  def within_height? y
    y >= 0 && y <= height
  end
end
