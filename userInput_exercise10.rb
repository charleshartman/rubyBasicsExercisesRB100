# Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.

# Do not check for the positive/negative requirement until both integers are entered, and start over if the requirement is not met.

# You may use the following method to validate input integers:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

num1 = nil
num2 = nil
loop do
# take integer 1 - valid number it w method
  loop do
    puts ">> Please enter a positive or negative integer:"
    num1 = gets.chomp
    break if valid_number?(num1)
    puts ">> Invalid input. Only non-zero integers are allowed."
  end
# take integer 2 - valid number it w method
  loop do
    puts ">> Please enter a positive or negative integer:"
    num2 = gets.chomp
    break if valid_number?(num2)
    puts ">> Invalid input. Only non-zero integers are allowed."
  end
# with both integers secured, check for one pos one neg
  num1 = num1.to_i
  num2 = num2.to_i
  break if (num1.positive? && num2.negative?) || (num1.negative? && num2.positive?)
  puts ">> Sorry. One integer must be positive, one must be negative."
  puts ">> Please start over."
  next
end
# proceed to addition and report result
result = num1 + num2
puts "#{num1} + #{num2} = #{result}"

# I have to save the provided solution as it's just so much tighter and more elegant than mine... still happy I came up with a solution that works though.

=begin
 def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}" 
=end