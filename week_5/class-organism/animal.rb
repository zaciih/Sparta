require_relative "living-organism.rb"

class Animal < LivingOrganism

  def eat
    puts "nom nom nom"
  end

  def reproduce
    puts "the fun one"
  end

  def speak
    puts "Hello World"
  end
end

animal1 = Animal.new
animal1.speak
animal1.alive
