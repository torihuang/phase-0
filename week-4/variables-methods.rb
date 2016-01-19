
# Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.

puts "Hi there! What's your first name?"
first_name = gets.chomp
puts "Oh! What's your middle name?"
middle_name = gets.chomp
puts "And your family name?"
last_name = gets.chomp

puts "Well hello #{first_name} #{middle_name} #{last_name}. It's nice to meet you."

# Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts "Okay #{first_name}, what's your favorite number?"
fav_num = gets.chomp
puts "Hmm, that's pretty good. But might I suggest #{fav_num.to_i + 1}? It is bigger, and therefore better."

=begin
How do you define a local variable?
You create a variable name in the program/method where you want the variable and assign it to a value (e.g. num1=3)

How do you define a method?
You create a method name after def, and assign it variables (e.g. def myMethod(param1, param2)). Don't forget to close it off with end!

What is the difference between a local variable and a method?
A local variable points to a value. A method is a series of commands that is repeated when the method is claled. A variable points to one place. A method points to a series of commands and variables.

How do you run a ruby program from the command line?
ruby filename.rb

How do you run an RSpec file from the command line?
rspec rspec-file.rb

What was confusing about this material? What made sense?
Everything made sense. Yay ruby!

Here is a link to all exercise files:
https://github.com/torihuang/phase-0/tree/master/week-4
  =end