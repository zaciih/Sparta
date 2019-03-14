require_relative "../animal.rb"
require_relative "../animal_types/mammals.rb"

class Raccoon < Animal
  include Mammals

  def speak
    puts "chitter"
  end

  def number_of_legs
    Quadruped.legs
  end

end

steve = Raccoon.new
steve.speak
steve.number_of_legs

elephant = Animal.new
elephant.speak
