class Rectangle

  attr_accessor :width, :height

  def initialize (width, height)
    @width = width
    @height = height
  end

  def calculate_area
    (@width * @height).to_f
  end

  def calculate_perimeter
    ((@width + @height)* 2).to_f
  end

  def area_desc
    "Rectangle Area: #{calculate_area} Perimeter: #{calculate_perimeter}"
  end

  def scale_width scale_w_factor
    @width *= scale_w_factor
  end
  def scale_height scale_h_factor
    @height *= scale_h_factor
  end

end
