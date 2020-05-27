# In the previous exercise, you wrote a program to solicit a password. In this exercise, you should modify the program so it also requires a user name. The program should solicit both the user name and the password, then validate both, and issue a generic error message if one or both are incorrect; the error message should not tell the user which item is incorrect.

USERNAME = "charles"
PASSWORD = "ruby100"

loop do 
  puts "Please enter your username:"
  input_username = gets.chomp
  puts "Please enter your password:"
  input_password = gets.chomp
  break if input_username == USERNAME && input_password == PASSWORD
  puts "Your input is faulty, please try again."
  puts ""
end

puts "Welcome, #{USERNAME}!"