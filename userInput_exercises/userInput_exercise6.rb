# Write a program that displays a welcome message, but only after the user enters the correct password, where the password is a string that is defined as a constant in your program. Keep asking for the password until the user enters the correct password.

PASSWORD = "ruby100"

loop do 
  puts "Please enter your password:"
  input_pass = gets.chomp
  break if input_pass == PASSWORD
  puts "Invalid password!"
end

puts "Welcome, User!"
