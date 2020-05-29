#---1

# Create an empty string using the String class and assign it to a variable.

s1 = String.new

s2 = '' # also possible

# Modify the following code so that double-quotes are used instead of single-quotes.

puts 'It\'s now 12 o\'clock.'

puts "It's now 12 o'clock."

#---2

# When creating strings, we have the option of using either double-quotes or single-quotes. It's important to know the differences between them, especially when single-quotes are included in the text, like in the example.

# Single-quotes don't allow for escape sequences. For instance, if you wanted to start a new line:

'Hello\nworld' # => Hello\nworld

# The escape sequence (\n) will be displayed instead of interpreted. There is one exception, however, which is the escaping of other single-quotes, such as:

'12 o\'clock'
# Even though this is perfectly valid Ruby, double-quotes are preferred in this situation, according to the Ruby Style Guide.

#Further Exploration
#It's possible to write a string without surrounding it with double- or single-quotes. Instead of using double-quotes, we could write the example string like this:

%Q(It's now 12 o'clock.) # => "It's now 12 o'clock."
#%Q is an alternative to double-quoted strings. There's also an alternative for single-quoted strings: %q.

#What about strings that contain double- and single-quotes? How would you write those using the alternate syntax?

#---3

# Using the following code, compare the value of name with the string 'RoGeR' while ignoring the case of both strings. Print true if the values are the same; print false if they aren't. Then, perform the same case-insensitive comparison, except compare the value of name with the string 'DAVE' instead of 'RoGeR'.

name = 'Roger'
puts name.casecmp?('RoGeR')
puts name.casecmp?('DAVE')

# book solution

name = 'Roger'

puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0

# Typically, when comparing strings, the goal is to compare their values, regardless of whether the characters are uppercase or lowercase. In the solution, we perform that exact comparison by using String#casecmp, the case-insensitive version of String#<=>. If you're unfamiliar with #casecmp then you might be surprised to see a numerical return value instead of a boolean.

# #casecmp performs a case-insensitive comparison, meaning it ignores the case of each character. When both compared strings are equal, #casecmp will return 0. That's why, in the solution, we needed the comparison with 0. If the return value equals 0, then we know both strings are equal.

# What if both strings aren't equal? If the value of the calling string - name - is less than the provided argument - 'RoGeR' - then #casecmp will return -1. Similarly, if the provided argument is less than the calling string, #casecmp will return 1.

#---4

# Modify the following code so that the value of name is printed within "Hello, !".

name = 'Elizabeth'

puts "Hello, #{name}!"

# One of the advantages of using double-quotes is the ability to use string interpolation. With string interpolation, you can invoke a variable - or a method - within a string, and Ruby will automatically call #to_s on the value. This allows us to include dynamic values within a string.

# In the solution, we include the name variable in the string by surrounding the invocation of it with curly braces ({}) and prepending those curly braces with the pound sign (#). This tells Ruby to evaluate the code within the curly braces.

#---5

# Using the following code, combine the two names together to form a full name and assign that value to a variable named full_name. Then, print the value of full_name.

first_name = 'John'
last_name = 'Doe'

full_name = "#{first_name} #{last_name}"
puts full_name

#---6

# Using the following code, capitalize the value of state then print the modified value. Note that state should have the modified value both before and after you print it.

state = 'tExAs'
state.capitalize!
puts state

#---7

# Given the following code, invoke a destructive method on greeting so that Goodbye! is printed instead of Hello!.

greeting = 'Hello!'
greeting.replace('Goodbye!')
puts greeting

# book solution 

greeting = 'Hello!'

greeting.gsub!('Hello', 'Goodbye')
puts greeting

# Ruby provides a great String method named String#gsub! that allows us to replace specific characters within the string by modifying the original object. In the solution, we use the destructive version of #gsub by invoking it on greeting before invoking #puts. We could have also used the non-destructive version, like so:

greeting = 'Hello!'

puts greeting.gsub('Hello', 'Goodbye')

#This works because #gsub returns the modified string.

#---8

# Using the following code, split the value of alphabet by individual characters and print each character.

alphabet = 'abcdefghijklmnopqrstuvwxyz'
break_up = alphabet.split(//)
break_up.each { |letter| puts letter }


# book solution much simpler
alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split('')

# It's common to split strings by character or words. In fact, Ruby provides a method named String#split that conveniently does this for us. By invoking #split on alphabet and passing an empty string as an argument, we can separate individual characters in alphabet. To print each character, we simply need to use #puts because #split returns an array containing each character as its own element.

#---9

# Given the following code, use Array#each to print the plural of each word in words.

words = 'car human elephant airplane'
arr = words.split(' ')
arr.each { |word| puts "#{word}s" }

# book better

words = 'car human elephant airplane'

words.split(' ').each do |word|
  puts word + 's'
end

# To iterate over each word in words we first need to split the string into separate words. As discussed in the previous exercise, String#split will split elements in a string according to the provided argument. In this case, we pass in a string consisting of a single space, which means #split will return an array containing each word.

# We then invoke Array#each on the return value of #split, which lets us perform an action for each word. Our goal is to print the plural of each word, therefore, we simply append 's' to the word and invoke #puts.

#---10

# Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. Then, print true if colors includes the color 'purple' and print false if it doesn't.

colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')

# finis