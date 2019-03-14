class Circle

  attr_accessor :radius

  def initialize (radius)
    @radius = radius
  end

  def calculate_area
    (Math::PI*(@radius ** 2)).to_f
  end

  def calculate_perimeter
    (2 * (Math::PI * @radius)).to_f
  end

  def scale scale_factor
    @radius *= scale_factor
  end

  def area_desc
    "Circle Area: #{calculate_area} Perimeter: #{calculate_perimeter}"
  end

end
