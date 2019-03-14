require_relative "square.rb"
require_relative "rectangle.rb"
require_relative "circle.rb"

square1 = Square.new(5)
square2 = Square.new(2)

puts square1.area_desc

puts Square.square_count
square1.scale 4

puts square1.area_desc

rectangle1 = Rectangle.new(2, 4)

puts rectangle1.area_desc

rectangle1.scale_width 2
rectangle1.scale_height 4

puts rectangle1.area_desc

circle1 = Circle.new(2)

puts circle1.area_desc

circle1.scale 5

puts circle1.area_desc
