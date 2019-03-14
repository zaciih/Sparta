def say_hello(name)
  puts "hello #{name}"
end

say_hello("zac")

def add_nums(num1, num2=4)
  num1 + num2
end

def create_user(name, course="eng23", location)
  puts "#{name} is on #{course} in #{location}"
end

# add_nums(3,76)
# add_nums(9)
# create_user("Yinka", "eng24")

# splat
def say_some_words(*words)
  puts words
end
# say_some_words("hello", "this", "is", "some", "words")

# def students(course, *people, location)
#   people.each do |person|
#     puts "#{person} is on #{course} in #{location}"
#   end
# end
#
# students "eng23", "Ashley", "CJ", "Abdul", "Milly", "Brum"

puts add_nums(3,45)
