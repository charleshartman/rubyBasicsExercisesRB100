# Write a program that asks the user for their age in years, and then converts that age to months.

puts "Hello, friend."
puts "--> Please input your age:"
age = gets.chomp.to_i
age_in_months = age * 12
puts "OK! You are #{age_in_months} months old."
