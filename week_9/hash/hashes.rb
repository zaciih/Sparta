example_hash = Hash.new('test')

# p example_hash
# p example_hash['test']
# p example_hash.keys

# JSON Notation

json_hash = Hash[key: "value", power: ["flight", "telekinesis"], height: "1.8m"]


# puts json_hash.class
#
# p json_hash[:power]
# json_hash[:power].push "supersize"
# p json_hash[:power]
# json_hash[:power] = "supersize"
# p json_hash[:power]

# Hash Rockets
hash_rocket = Hash['a' => 2, 'b' => 3]

# puts hash_rocket['a']


zoo = {
  :mammals => 2,
  :birds => 1,
  :reptiles => 50,
  :insects => 200
}

zoo_animals = {
  animals: {
    flamingo: 1,
    dog: 1,
    crocodile: 25,
    centipedes: 200
  }
}

puts zoo_animals[:animals][:centipedes]

zoo_animals[:animals].each do |key, value|
  puts "The zoo has #{value} #{key}"
end

# puts "#{zoo.keys}, #{zoo.values}"
#
# puts zoo.values.sum
