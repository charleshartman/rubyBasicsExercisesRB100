# Write a program that obtains two Integers from the user, then prints the results of dividing the first by the second. The second number must not be 0, and both numbers should be validated using this method:


def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

num = nil
den = nil

loop do
  puts "Please input a numerator:"
  num = gets.chomp
  if valid_number?(num) == false
    puts "Invalid input. Only integers are allowed."
    next
  end
  break
end

loop do
  puts "Please input a denominator:"
  den = gets.chomp
  if valid_number?(den) == false
    puts "Invalid input. Only integers are allowed."
    next
  end
  if den == "0"
    puts "Invalid input. A denominator of 0 is not allowed."
    next
  end
  break
end

result = num.to_i / den.to_i
puts "#{num} / #{den} = #{result}"
