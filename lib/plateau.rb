class Plateau
  attr_reader :width, :height

  def initialize(width, height)
    @width  = set_width width.to_i
    @height = set_height height.to_i
  end

  def contains? location
    within_width?(location[:x]) && within_height?(location[:y])
  end

  private

  def set_width given_width
    given_width > 0 ? given_width : (raise "Plateau width is too small")
  end

  def set_height given_height
    given_height > 0 ? given_height : (raise "Plateau height is too small")
  end

  def within_width? x
    x >= 0 && x <= width
  end

  def within_height? y
    y >= 0 && y <= height
  end
end
