my_variable = 5.0
# second_num = 12
#
# p my_variable.to_s.class
# p my_variable.class
#
# puts my_variable + second_num
#
# first_name = "zac"
# last_name = "harrison"
# eye_colour = "blue"
# age = 23.90
#
# puts first_name.upcase
# puts last_name.downcase
# puts "my name is #{first_name.capitalize}"
# puts first_name.reverse
#
# puts "my name is #{first_name.capitalize} #{last_name.capitalize}, I am #{age.floor} years old"

array = ["apple", 12, [4,5], "Zac"]

# puts array[3]
# puts array[2][1]
# puts array.first
# puts array.last
# puts array[-2]
# puts array.length
# array[0] = "pear"
# array.push "word"
# puts array
# print array
# last = array.pop
# first = array.shift
# puts first
# print array

# puts my_variable.methods

#JSON
person = {
  name: "zac",
  age: 23,
  eye_colour: "blue"
}
#Hash rockets
person2 = {
  :name => "zac",
  :age => 23,
  :eye_colour => "blue"
}

person[:city] = "london"
# puts person

letters = "abcdefg"
letters.reverse!
puts letters
