
```ruby
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a
```
**7**

"Reassignment, including assignment operators like +=, does not mutate a variable; instead, it binds the variable to a new object. That is, += sets the variable to point to a different object. Since line 4 binds b to a new object, the object pointed to by a remains unchanged. Thus, a is still equal to 7 at the time of the puts.

Another way to look at this is that numbers in Ruby are immutable. Thus, there is no way for my_value to mutate the value referenced by b, which means that my_value does not (and can not) change the object referenced by a (7)."


```ruby
a = 7

def my_value(b)
  a += 10
end

my_value(a)
puts a
```

**7**

"This problem is identical to the previous problem. The only thing we did is change the name b to a. Note that we can do this because method definitions are self-contained with respect to local variables. Local variables outside the method definition are not visible inside the method definition; so the top level a is not available inside my_value. Furthermore, local variables inside the method definition are not visible outside the method definition; so the a inside my_value is a local variable with no top-level visibility."

```ruby
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a
```

**7** (again)

"Once again, the result is 7. Once again, the local variable a inside the my_value method definition is not visible outside the my_value method definition. Furthermore, the local variable a at the top level is not visible inside my_value because method definitions are self-contained with respect to local variables."

```ruby
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
```
**Xy-zy**

"This problem looks remarkably similar to the first problem in this set. However, this time we are working with a string, and we are assigning to b[2] instead of b.

The result is quite different. When we were working with a numeric variable, no changes were made to a. This was due to the fact that numbers are immutable, and assignment merely changes the object that a variable references. Now, though, Strings are mutable - they can be modified - and, in particular, the method String#[]= is a mutating method; it actually modifies the string. Since we are actually modifying the string referenced by b, and b references the same string as a, the result from printing a shows an update to the value of the string"

```ruby
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
```
**Xyzzy**

"This problem is nearly identical to the previous problem, except this time we are assigning directly to the variable b. When my_value begins executing, b is set to reference the same string that is referenced by a. If we modify that string by using b, then that modification is reflected in a; it's the same string.

However, we are not modifying that string in this exercise. Instead, we are assigning a completely new string to b. Assignment never changes the value of an object; instead, it creates a new object, and then stores a reference to that object in the variable on the left. So, at the end of my_value, b references the string 'yzzyX', while a remains unchanged: it still references "Xyzzy".

So, how does this differ from b[2] = '-'? The key difference with b[2] = '-' is that this is not quite the same as object assignment; it is a call to a method named []=, and this method updates the String referenced by b; it does not change the reference, so a is also referencing the modified String.

To summarize, assignment to a variable (an object) never mutates the object that is referenced. However, don't take that too far: if you assign to b[2] like we did in the previous exercise, that's a completely different operation; that actually mutates the content of the String referenced by b."

```ruby
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
```

**error** - my_value doesn't know the value of a, it just knows that 7 has been passed to it when method is called.

"Even though a is defined before my_value is defined, it is not visible inside my_value. Method definitions are self contained with respect to local variables. Local variables initialized inside the method definition are not visible outside the method definition, and local variables initialized outside the method definition are not visible inside the method definition.

Note, however, that local variables will be visible (via closures) inside blocks, procs, and lambdas."

```ruby
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```

**3**

"We are now dealing with a method invocation that has a block. The scoping rules for a method invocation with a block differ from the rules for method definitions. With method definitions, local variable scope is restricted to the method definition itself. In contrast, a method invocation with a block has more open scoping rules; the block can use and modify local variables that are defined outside the block.

In this case, a starts out as 7, then we set a to 1, 2 and 3 in sequence. By the time we get to the puts, a has a value of 3."

```ruby
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```

**error** - 'a' was not initialized outside the block

"Compared to the previous exercise, the difference here is that we removed the initialization of the local variable a in the outer-most scope before invoking the each method and passing in a block. This leads to a completely different result. We now get an exception when the puts method is invoked with the local variable a as an argument on line 7 because the local variable a is not defined in this scope.

The local variable a that is initialized in the block passed to the each method has a scope that is local to that block. Since there is no local variable named a initialized in a scope external to the scope of that block, the expression a = element on line 4 is initialization and not reassignment."

```ruby
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
```

**7**

"This problem demonstrates shadowing. Shadowing occurs when a block argument hides a local variable that is defined outside the block. Since the outer a is shadowed, the a += 1 has no effect on it. In fact, that statement has no effect at all."

```ruby
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
```

**error**

"'a' at the top level is not visible inside the invocation of the each method with a block because the invocation of each is inside my_value, and method definitions are self-contained with respect to local variables. Since the outer a is not visible inside the my_value method definition, it isn't visible inside the method invocation with a block."
