#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

=begin
# PSEUDOCODE

# Input: Nothing
# Output: "Hello Tori! How wonderful to see you today."
# Steps:
1. Create method NameData which initializes a variable with my name.
2. Create a reader method in NameData which allows the method to call the name
3. Create a method Greetings which initializes a variable of class NameData
4. Use the name from NameData to PUTS a greeting to the console

=end

class NameData
  attr_reader :name

  def initialize
    @name = "Tori"
  end
end


class Greetings
  def initialize
    @who_to_greet = NameData.new
  end

  def hello
    puts "Hello #{@who_to_greet.name}! How wonderful to see you today."
  end
end


=begin
# REFLECTION

What is a reader method?
A reader method returns the value of an instance variable.

What is a writer method?
A reader method sets the value of an instance variable.

What do the attr methods do for you?
The attr methods allow you to easily read from and write to instance variables.

Should you always use an accessor to cover your bases? Why or why not?
With less access to your variables, less errors can occur. You should not always use accessor, as it can lead to more difficult debugging in the future.

What is confusing to you about these methods?
These methods weren't confusing, they were fun!

=end