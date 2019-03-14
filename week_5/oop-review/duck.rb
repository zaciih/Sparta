require "mac/say"

class Duck

  @@names_of_ducks = []

  attr_accessor :colour, :size
  attr_reader :name

def initialize (name, colour, size)
  @name = name
  @colour = colour
  @size = size
  add_duck_name
end

def speak
  Mac::Say.say "quork?"
  puts "my name is #{@name}"
end

def description
  puts "my name is #{@name} and I am an #{@colour} duck. The names of all the ducks are: #{@@names_of_ducks}"
end

def update_name name
  @name = name
  @@names_of_ducks.push @name
end

def add_duck_name
  @@names_of_ducks.push @name
  # print @@names_of_ducks
end

def self.duck_names
  @@names_of_ducks
end

end
