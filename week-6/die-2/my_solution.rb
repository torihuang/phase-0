=begin
# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of Strings
# Output: Returns One of Strings from Array when die is rolled
# Steps:

1. Initialize INSTANCE VARIABLE with ARRAY of STRINGS
2. IF the ARRAY is empty, throw an ARGUMENTERROR
3. ELSE create a method #SIDES that returns the number of sides
4. Create a method #ROLL that generates a random number from 0 to the length of the string
5. Using that random number, call a location from the ARRAY of STRINGS
6. Return the STRING that was called

# Initial Solution

class Die
  def initialize(labels)
    if labels.empty? then raise ArgumentError, "The passed array is empty" end
    @labels = labels
  end

  attr_reader :labels

  def sides
    @labels.length
  end

  def roll
    prng = Random.new
    random_number = prng.rand(0...@labels.length)
    @labels[random_number]
  end
end

=end

# Refactored Solution

class Die
  def initialize(labels)
    if labels.empty? then raise ArgumentError, "The passed array is empty" end
    @labels = labels
  end

  attr_reader :labels

  def sides
    @labels.length
  end

  def roll
    prng = Random.new
    @labels[prng.rand(0...@labels.length)]
  end
end

=begin

# Reflection

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
The logic of this Die class was almost identical to the original. The only difference was calling values in an array, versus numbers in a range created using the number of sides.

What does this exercise teach you about making code that is easily changeable or modifiable?
It will save you some serious work in the long run!

What new methods did you learn when working on this challenge, if any?
I did not learn any new methods, it was fun though!

What concepts about classes were you able to solidify in this challenge?
I was able to solidify my knowledge of throwing exceptions.

=end