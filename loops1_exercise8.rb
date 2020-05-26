# Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]
counter = 0

until counter = numbers.size # book solution, better
until counter == 5 # but mine does work :)
  puts numbers[counter]
  counter += 1
end


# numbers.each { |num| puts num }   # would be easier
