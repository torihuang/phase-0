# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? array, integer, value (any object or empty)
# What is the output? (i.e. What should the code return?) new array
# What are the steps needed to solve the problem?

=begin
1. Compare length of array to minimum value
2. IF array length equals the min value we RETURN the array
3. ELSE array length less than minimum value, we add the pad
4. Create the pad as a new array that is the minimum value - length of the array, filled with whatever value sent
5. CONCATENATE the pad array on to the original array
=end

# 1. Initial Solution

=begin

def pad!(array, min_size, value = nil) #destructive
  difference = min_size - array.length
  if difference <= 0
    return array
  else
    return array.concat(Array.new(difference, value))
  end
end

def pad(array, min_size, value = nil) #non-destructive
  difference = min_size - array.length
  if difference <= 0
    new_array = []
    for i in 0...array.length
      puts i
      new_array.push(array[i])
    end
    return new_array
  else
    new_array = Array.new(min_size, value)
    for i in 0...array.length
      puts i
      new_array[i] = array[i]
    end
    return new_array
  end
end
=end
# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  difference = min_size - array.length
  if difference <= 0
    return array
  else
    return array.concat(Array.new(difference, value))
  end
end

def pad(array, min_size, value = nil) #non-destructive
  difference = min_size - array.length
  new_array = array.clone
  if difference <= 0
    return new_array
  else
    return new_array.concat(Array.new(difference,value))
  end
end


# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
Yes! We broke the problem down in to small steps.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
We had some difficulties translating our pseudocode as at the time we did not realize our understanding of passing arguments to a method was flawed. We thought that referencing an argument in a method would not change the actual argument. Once we started coding, we realized our mistakes.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our initial solution was not successful. Again, we misunderstood how you can reference arguments in a method without altering them permanently.

When you refactored, did you find any existing methods in Ruby to clean up your code?
We found .clone! That allowed us to complete all processes without loops, which is a big deal.

How readable is your solution? Did you and your pair choose descriptive variable names?
Our solution is readable! We made okay variable names, we both agreed that's something we need to work on.

What is the difference between destructive and non-destructive methods in your own words?
Destructive methods PERMANENTLY change an argument sent to the method. Non-destructive methods may return edited versions of an argument, but the intial argument is untouched.
=begin