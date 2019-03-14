# return an array of reversed words
def reverse_array_of_strings words
  words.map! do |word|
    word.reverse
  end
end

# return all the even numbers less than the given number
def even_numbers_less_than num
    array = []
    (0...num).each do |i|
      if i.even?
        array.push i
      end
   end
   array
end

# return the average of all numbers in an array
def average numbers
  sum = numbers.reduce(:+).to_f
  avg = sum / numbers.length
end
