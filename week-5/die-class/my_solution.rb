=begin

Die Class 1: Numeric

I worked on this challenge by myself

I spent 1 hour on this challenge.

----

PSEUDOCODE

Input: Number of sides
Output: Two methods, one which returns the number of sides and the other which rolls a random number between 1 and the number of sides.

Create a CLASS called Die, which initializes with a number of sides. The CLASS should have two methods, one which randomly rolls to a side and one which returns the number of sides. If the initialized number of sides is less than 1, the CLASS should throw an ARGUMENTERROR.

----

INITIAL SOLUTION

class Die

  def initialize(sides)
    unless sides > 0
      raise ArgumentError.new("The number of sides must be greater than one.")
    end
    @sides=sides
  end

  def sides
    @sides
  end

  def roll
    prng = Random.new
    random_roll = prng.rand(1..@sides)
    random_roll
  end

end

----

=end

class Die

  def initialize(sides)
    unless sides > 0
      raise ArgumentError.new("The number of sides must be greater than one.")
    end
    @sides=sides
  end

  attr_reader :sides

  def roll
    prng = Random.new
    random_roll = prng.rand(1..@sides)
  end

end

=begin

REFLECT

What is an ArgumentError and why would you use one?
A ArgumentError allows you to put error handling in to place. For example, without ArgumentError a user would be able to create a die with zero sides, or even a negative number of sides. That would confuse the code we have here. Instead, we want to stop the creation of such a Die and provide a reason the intialization did not work.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I implemented Random.new and #rand(num..num). It worked on the first try!

What is a Ruby class?
A Ruby Class is basically an "object on a batch basis", according to the Rubyist. That means you can create objects that have similar variables and methods.

Why would you use a Ruby class?
You would use a Ruby class when you want to create multiple of a similar object. When you want to create an object that will continuously repeat methods and instance variables.

What is the difference between a local variable and an instance variable?
A local variable is declared only within its block - within the block it was declared. An instance variable is declared throughout a class. It can pass typical block and method boundaries.

Where can an instance variable be used?
Instance variables can be used within classes, when there is a variable that is used throughout multiple methods.

=end