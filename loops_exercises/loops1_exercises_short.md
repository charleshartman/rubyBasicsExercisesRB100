
```ruby
#1
loop do
  puts 'Just keep printing...'
  break
end
```

```ruby
#2
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'
```

```ruby
#3

iterations = 1

loop do
  while iterations <=5
    puts "Number of iterations = #{iterations}"
    iterations += 1
  end
break
end
```

```ruby
#4

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts 'Wrong answer! Only affirmation will stop this madness.'
end
```

```ruby
#5

say_hello = true

while say_hello
  5.times { puts 'Hello!'}
  say_hello = false
end
```

```ruby
#5 alternate

say_hello = true
counter = 0

while say_hello
  puts 'Hello!'
  counter += 1
  say_hello = false if counter == 5
end
```

```ruby
#7

count = 1

until count > 10
  puts count
  count += 1
end
```

