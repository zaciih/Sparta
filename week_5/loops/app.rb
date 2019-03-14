# Basic Loop
i = 0
def say_hello i
  puts "hello world #{i}"
end
#
# loop do
#   i+=1
#   puts "the value of i is #{i}"
#   if i > 5
#     break
#   end
# end

# While
# while i < 10
#   puts "Helo, World"
#   i+=1
# end

# Do while
# begin
#   say_hello
#   i+=1
# end while (i < -1)

# Each
# (0..5).each do |i|
#   say_hello i
# end

some_words = ["this", "is", "an", "array", "of", "words"]
# some_words.each_with_index do |dataitem, index|
#   puts "#{dataitem} is held at index: #{index}"
# end

person = {name: "zac", age: 23, city: "brum"}
# person.each do |key, value|
#   puts "the key is #{key} and its value is #{value}"
# end

# For
# for i in 0...5
#   puts "#{i}"
# end

array = []

# for letter in "a".."z"
#   array.push letter
# end
#
# print array

# creates new array with saved changes
# reversed_words = some_words.map do |word|
#   word.reverse.upcase
# end
# edits current array and saves changes
# some_words.map! do |word|
#   word.reverse.upcase
# end
#
# print reversed_words

some_nums = [1,1,2,3,5,8,13,21,34,55,89]

# sum = some_nums.reduce 0 do |total, number|
#   total + number
# end

quick_sum = some_nums.reduce(0, :+)
print quick_sum
# puts some_nums.sum
