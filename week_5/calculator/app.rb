# https://stackoverflow.com/question/20850598/programming-a-basic-calculator-in-ruby
#
def get_int_values(n)
  1.upto(n).map{ |n|
    print "Enter value ##{ n }: "
    gets.chomp.to_i
  }
end
#
def get_settings
  setting = gets.chomp
end

puts "Choose a setting; (B)asic or (A)dvanced"
setting = gets.chomp

case setting.downcase
  when "b"
    puts "Basic settings chosen"
    puts "Choose an operator: (A)ddition, (M)ultiplication, (D)ivision, (S)ubtraction"
    response = gets.chomp

    puts "How many values?"
    num_of_values = gets.to_i

    case response.downcase
      when "a"
        puts "Addition selected"
        puts "Which numbers would you like to add?"
        operator = :+
      when "m"
        puts "Multiplication selected"
        puts "Which numbers would you like to multiply?"
        operator = :*
      when "d"
        puts "Division selected"
        puts "Which numbers would you like to divide?"
        operator = :/
      when "s"
        puts "Subtraction selected"
        puts "Which numbers would you like to subtract?"
        operator = :-
    end
    answer = get_int_values(num_of_values).inject(operator)
    puts "The answer is #{ answer }"
    puts answer.class

  when "a"
    puts "Advanced setting chosen"
    puts "Choose an operator: (P)ower, (S)quare root"
    response = gets.chomp

    case response.downcase
    when "p"
      puts "Power selected"
      puts "Enter first number"
      num1 = gets.chomp.to_i
      puts "Enter power number"
      num2 = gets.chomp.to_i

      answer = num1 ** num2
      puts "The answer is #{ answer }"
    when "s"
      puts "Square root selected"
      puts "Enter number"
      num = gets.chomp.to_i

      answer = Math.sqrt(num)
      puts "The answer is #{ answer }"
    end
end




# setting = "b" ? puts "Basic settings chosen" : setting = "a" ? puts "Advanced settings chosen" : "try again"

# case setting
# when "a"
#   puts "Advanced settings chosen"
#   puts "Choose an operator: (P)ower, (S)quare root"
#   operator = gets.chomp
#   case operator
#   when "p"
#     puts "Power selected"
#   when "s"
#     puts "Square root selected"
#   end
# when "b"
#   puts "Basic settings chosen"
#   puts "Choose an operator: (A)ddition, (M)ultiplication, (D)ivision, (S)ubtraction"
#   operator = gets.chomp
#   case operator
#   when "a"
#     puts "Addition selected"
#     puts "Enter the first number:"
#     numbers = array
#     numbers = gets.chomp.to_i
#   when "m"
#     puts "Multiplication selected"
#   when "d"
#     puts "Division selected"
#   when "s"
#     puts "Subtraction selected"
#   end
# end




# def operator()
#   if setting == "b"
#     array = ["a", "m", "d", "s"]
#   elsif setting == "a"
#     array = ["p", "sr"]
#   end
# end
#
# operator()
