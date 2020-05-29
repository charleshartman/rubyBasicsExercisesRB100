What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def meal
  return 'Breakfast'
end

puts meal
```
**Breakfast**

Determining the return value of a method can sometimes be confusing. If there's no return then how do I know what the return value is? That's a valid question with a simple answer: every method returns the evaluated result, or return value, of the last line that is executed.

The only way to ensure a specific return value, other than putting it as the last line, is to use return. When return is executed, it immediately exits the method, returning the provided value. The code in this particular exercise would return the string 'Breakfast' with or without the return on line 2 because line 2 is the last (and only) line executed in the meal method.

---
What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def meal
  'Evening'
end

puts meal
```
**Evening**

The last exercise explained how a method's return value is determined. Therefore, we can tell that the return value of meal will be "Evening" because it's the only line in the method.

---
What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def meal
  return 'Breakfast'
  'Dinner'
end

puts meal
```
**Breakfast**

Based on the knowledge that return exits the method, you should be able to determine that the return value is "Breakfast". Even though "Dinner" is the last line, when return is executed, it tells the method to end, which means anything after that line won't be processed.

---
What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal
```
**Dinner**
**Breakfast**

When you use #puts it's important to know that the printed value and the return value are not the same. #puts outputs the value it's given and returns nil. Therefore, the return value of puts 'Dinner' is nil. However, that's not the return value of meal. The return value of meal is 'Breakfast' because of the explicit return.

If the return value is 'Breakfast' then why are both "Dinner" and "Breakfast" printed? The answer is simple: there are two #puts which means there will be more than one value printed.

---
What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def meal
  'Dinner'
  puts 'Dinner'
end

p meal
```
**Dinner**
**nil**

When looking at this method, we know that the last line is puts 'Dinner', therefore, the return value of meal is the evaluated result of that line. Based on the previous exercise, we know that the return value of #puts is always nil. Putting both of those together results in the return value of meal being nil.

However, two values are printed, not just nil. This is because there is a #puts and a #p (we use #p so that nil is visible in the output).

---
What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal
```
**Breakfast**

After completing parts 1-5, determining the return value of meal should be straightforward. The first thing you should notice is the return keyword on the first line of the method. Based on what we've learned so far, we know that return immediately exits the method and returns the provided value. Knowing this, we can confidently say that the return value of meal will be "Breakfast". return will be executed upon the invocation of meal, which means meal will immediately end and return the value provided by return.

---
What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep
```
**0-5**

We're using Integer#times within the count_sheep method to count from 0 to 4 (#times starts at 0). Therefore, it's no surprise that the output includes 0 through 4. What may be surprising, however, is the fact that the output includes 5. Where did that 5 come from? If you study #times in the Ruby docs, you'll know that after iterating 5 times, the block returns the initial integer. Which, in this case, is 5.

We can use this knowledge combined with what we learned from the previous exercises to determine why 5 was printed. When looking at count_sheep we can see that the #times block is the only code in the method. This means it's also the last line in the method. Since #times returns the initial integer, we now know that the return value of count_sheep is 5.

---
What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep
```
**0-4,10**

This exercise continues the previous exercise, except with one variation: Integer#times is no longer the last line in count_sheep. #times still returns the initial integer, but this time nothing is done with the return value. Instead, 10 is the implicit return value of count_sheep because it's the last line evaluated.

---
What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep
```
**0-2,nil**

This exercise is a little different compared to the last two. We've made Integer#times the last line in count_sheep again, but this time there's a return inside the block. Based on what we know with return, we should be able to determine the return value of count_sheep. Looking at the if condition, we can see that return will be processed once sheep equals 2. This lets us know the method will end there and return the value provided by return.

In this case, return didn't provide a value. That's why the last output is nil (we used #p when invoking count_sheep so that nil is visible in the output).

---
What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number
```
**1**

Trying to determine the return value of tricky_number can be somewhat confusing, so lets break it down. We're printing the return value of tricky_number by prepending #puts when we invoke the method. As we look at the method, we can see the if/else statement. It has a conditional of true which means that the if clause will be evaluated every time. The assignment to number is actually quite useless because we don't use it anywhere else. However, variable assignment still returns the value that was assigned to the variable. It works the same as if the assignment wasn't even there.

Since we know that the else clause was ignored, we can safely determine that the return value will be 1 because it's the only evaluated value in the if clause.

---


