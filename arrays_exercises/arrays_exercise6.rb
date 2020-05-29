# In the code below, an array containing the numbers 1 through 5 is assigned to numbers.

numbers = [1, 2, 3, 4, 5]

# Use Array#map to iterate over numbers and return a new array with each number doubled. Assign the returned array to a variable named doubled_numbers and print its value using #p.

doubled_numbers = numbers.map do |number|
                    number * 2
                  end

p doubled_numbers

# The important thing to note here is how #map decides what value to place in the new array. Looking at the solution, we can see that the only statement within the block is number * 2. Therefore, the return value of this statement will be the block's return value. As stated earlier, we know that #map uses the return value of the block as the new element's value. This means that each element in the new array is the return value of the block at each iteration.
