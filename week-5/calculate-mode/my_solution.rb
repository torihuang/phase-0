# Calculate the mode Pairing Challenge

# I worked on this challenge with Kenton Lin

# I spent 1 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
=begin
def mode(array)
  hash = {}
  max = 0
  array.each do |i|
    hash[i] = array.count(i)

    if array.count(i) > max
      max = array.count(i)
    end
  end

  max_hash = hash.select {|key, value| value == max}
  p max_hash.keys
end
=end

# 3. Refactored Solution

def mode(array)
  hash = {}
  max = 0
  array.each do |i|
    quantity = array.count(i)
    hash[i] = quantity

    if quantity > max
      max = quantity
    end
  end
  max_hash = hash.select {|key, value| value == max}
  p max_hash.keys
end


# 4. Reflection
=begin

Which data structure did you and your pair decide to implement and why?
We decided to use a HASH, as it allowed us to easily connect values of the array to their count.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
We were very successful at breaking this problem in to pseudocode. Practice makes perfect!

What issues/successes did you run into when translating your pseudocode to code?
We had some discussion over which enumerable messages were best to use.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used #each and #select to iterate through the content. #select is a great one, as it iterates over every value in an array or hash and only selects values based on a given condition. #each is pretty standard, and allows you to complete commands for each value in a collection. We also used #keys, which wasn't used to iterate through anything but was incredibly useful in turning the HASH in to an ARRAY of keys!

=end