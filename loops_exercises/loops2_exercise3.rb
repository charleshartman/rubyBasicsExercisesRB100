# Using an if/else statement, run a loop that prints "The loop was processed!" one time if process_the_loop equals true. Print "The loop wasn't processed!" if process_the_loop equals false.

=begin

loop do
  process_the_loop = [true, false].sample
  if process_the_loop == false
    puts "The loop wasn't processed!"
    next
  else 
    puts "The loop was processed!"
    break
  end
end

=end

# book solution better

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end
