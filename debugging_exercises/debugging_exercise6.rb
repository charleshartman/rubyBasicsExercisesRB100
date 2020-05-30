# You want to have a small script delivering motivational quotes, but with the following code you run into a very common error message: no implicit conversion of nil into String (TypeError). What is the problem and how can you fix it?

def get_quote(person)
  if person == 'Yoda'
    return 'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    return 'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

# If you don't spot the error immediately, a good way to start is by checking what happens if we use 'Yoda' or 'Einstein' as input:

get_quote('Yoda')      #=> no implicit conversion of nil into String (TypeError)
get_quote('Einstein')  #=> "Do not worry about your difficulties in Mathematics. I can assure you mine are still greater."

# So, our method returns the expected string when we pass in 'Einstein' as the argument, and nil otherwise. Now we have to think about how the return value of the get_quote method is determined.

# There are several ways to fix this. One is to add explicit return statements:

def get_quote(person)
  if person == 'Yoda'
    return 'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    return 'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

 # An alternative is to refactor the three if statements into one and rely on the implicit return value of our method:

def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  elsif person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  elsif person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

# Since our original code did not have an explicit return statement, the return value is the evaluated result of the last line executed. The last line is an if statement, which returns the evaluated result of the branch whose condition evaluates to true, or nil if there is no such branch. When we passed 'Confucius' or 'Yoda' in as the argument, the condition person == 'Einstein' evaluated to false, so the last if statement evaluated to nil. This caused our original method to return nil every time an argument other than 'Einstein' is passed in.