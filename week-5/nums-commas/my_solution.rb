# Numbers to Commas Solo Challenge

# I spent 1.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

=begin
# 0. Pseudocode

# What is the input? Positive Integer
# What is the output? String of a number with appropriate commas
# What are the steps needed to solve the problem?

1. Create a method that takes in a positive integer
2. Turn positive integer in to a string
3. Determine the length of the string
4. If the string is equal to or less than 3, return the string as-is
5. Else determine how many times the length of the string can be divided by three - use integer math
6. Determine mod for dividing length by three - will be number of characters to put before first comma
7. Use a loop to output the results.
8. Return the string

=end

# 1. Initial Solution
=begin
def separate_comma(num)
  num_s = num.to_s

  if num_s.length <= 3
    return num_s
  else
    beginning=num_s.length % 3
    num_with_commas = num_s[0..beginning-1]
    i=beginning

    if beginning == 0 then num_with_commas = "" end

    until i > num_s.length - 3
      num_with_commas = num_with_commas + "," + num_s[i..i+2]
      i += 3
    end

    if beginning == 0 then num_with_commas[0]="" end
    return num_with_commas
  end
end
=end

# 2. Refactored Solution

def separate_comma(num)
  num_s = num.to_s

  if num_s.length <= 3
    return num_s
  else
    i = -4
    until i < -num_s.length
      num_s.insert(i,",")
      i -= 4
    end
    return num_s
  end
end

# 3. Reflection
=beginning

What was your process for breaking the problem down? What different approaches did you consider?

I broke down the process in to individual steps, and mainly considered using a loop to break the string up in to chunks of 3.

Was your pseudocode effective in helping you build a successful initial solution?

The pseudocode was great for helping me identify initial challenges I might face. This saved time during the actual coding session.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

I used #insert, and it worked beautifully! It reduced the number of variables I had by three, and shorted my code in general. It also significantly changed the way my code worked, as instead of looking at the string as chunks of three, I was looking at it like a single line of objectcs where I could insert commas in the correction location. It still has the same output though, of course!

Ruby Docs are great, they were easy to use.

How did you initially iterate through the data structure?

I initially treated the string like an array, and iterated through using a while loop. I still used a while loop after the refactoring.

Do you feel your refactored solution is more readable than your initial solution? Why?

The refactored solution is infinitely more readable, and generally better in evey way. It is shorter, has less variables, and is simple to understand.

=end