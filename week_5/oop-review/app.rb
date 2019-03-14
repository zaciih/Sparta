require_relative "duck.rb"

duck1 = Duck.new("Frank", "ornage", "unit")
duck1.speak
duck2 = Duck.new("Howard", "blue", "smol")

# duck1.speak
# duck2.description
duck2.update_name "stephanie"
# duck2.colour = "green"
duck2.description

# puts Duck.duck_names
