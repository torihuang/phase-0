# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

=begin
# Pseudocode

# Input: Integer
# Output: symbol equal to low, high, or correct
# Steps:

1. Initialize the CLASS by setting the INSTANCE VARIABLE to the integer input.
2. WHILE the answer is still not guessed, prompt the user to input a new integer
3. IF input is high, return symbol high
4. ELSIF if input is low, return symbol low
5. ELSE if input is correct, return symbol correct and end loop

# Initial Solution

=end
=begin
game = GuessingGame.new(10)

game.solved?   # => false

game.guess(5)  # => :low
game.guess(20) # => :high
game.solved?   # => false

game.guess(10) # => :correct
game.solved?   # => true

class GuessingGame
  def initialize(answer)
    @answer=answer
    @solved = false
  end

  def guess(guess)
    @guess = guess
    @solved = false

    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else
      @solved = true
      return :correct
    end
  end

  def solved?
    @solved
  end
end

=end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer=answer
    @solved = false
  end

  def guess(guess)
    guess==@answer? @solved=true : @solved=false
    return guess==@answer? :correct : guess>@answer? :high : :low
  end

  def solved?
    @solved
  end
end


=begin

# Reflection

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Many times, a class represents a real-world object. A class, for a random example, can be a dog. A dog can have all kinds of different attributes, such as breed, color, name, etc. It can also complete all kinds of different actions, such as barking, pooping, sleeping, etc. All dogs do these things. A dog class is like a definition of what makes up a dog. Variables allow you to give each dog specific attributes for their defined characteristics. Methods allow you to call actions that every dog would complete.

When should you use instance variables? What do they do for you?
You should use an instance variable when a class has a repeating variable that is used throughout multiple methods. They give a class attributes, and allow you to store values unique to that instance of a class.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control is how a program flows through logical steps. I had some trouble refactoring, but was really excited when I figured out how to use a double ternary operator!

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Symbols cannot be changed or replicated. I believe we may be changing or adding to this class in the future, so it is beneficial to use a symbol that cannot be changed or confused with strings.

=end