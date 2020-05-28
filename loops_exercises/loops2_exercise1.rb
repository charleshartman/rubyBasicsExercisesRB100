# Write a loop that prints numbers 1-5 and whether the number is even or odd. Use the code below to get started.

count = 1

loop do
  if count % 2 != 0
    puts "#{count} is odd!"
  else
    puts "#{count} is even!"
  end

  count += 1
  break if count > 5

end

# I keep forgetting that Integer#even and Integer#odd exist...
