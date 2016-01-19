# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170 but actually 16
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input
# 5. Where is the error in the code?
#   In the while loop, where it does not end.
# 6. Why did the interpreter give you this error?
# => There was no end to the while loop.

# --- error -------------------------------------------------------

south_park = "Not very funny"

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# name error
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method `south_park' for main:Object
# 4. Where is the error in the code?
# south_park is undefined, so line 36.
# 5. Why did the interpreter give you this error?
# south_park is undefined.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# (NoMethodError)
# 3. What additional information does the interpreter provide about this type of error?
# undefined method `cartman' for main:Object
# 4. Where is the error in the code?
# Line 51, cartman is not a method
# 5. Why did the interpreter give you this error?
# Line 51, cartman is not a method

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()

# 1. What is the line number where the error occurs?
# 66
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments
# 4. Where is the error in the code?
# 70
# 5. Why did the interpreter give you this error?
# cartmans_phrase does not require a parameter.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("All cats are dumb. Just kidding, they're adorable.")

# 1. What is the line number where the error occurs?
# 85
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments
# 4. Where is the error in the code?
# 89
# 5. Why did the interpreter give you this error?
# cartman_says requires a parameter.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming','Tori')

# 1. What is the line number where the error occurs?
# 106
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# 110
# 5. Why did the interpreter give you this error?
# Only gives one input at line 110, needs 2

# --- error -------------------------------------------------------

puts "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 125
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# 125
# 5. Why did the interpreter give you this error?
# Trying to multiply a number by a string. Reverse the two so the string is multiplied by a number. Also add puts, so it prints out and is funnier.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
# 140
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# 140
# 5. Why did the interpreter give you this error?
# You can't divide by 0, the answer is infinity. Let's divide by two instead.

# --- error -------------------------------------------------------

require_relative = "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 156
# 2. What is the type of error message?
# Load Error
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file
# 4. Where is the error in the code?
# 156
# 5. Why did the interpreter give you this error?
# The ruby document tries to load cartmans_essay.md. The file does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin

Which error was the most difficult to read?
The last error was most difficult to read. I am still not sure if I totally understand what the author was trying to do.

How did you figure out what the issue with the error was?
I used my Ruby knowledge and problem solving skills!

Were you able to determine why each error message happened based on the code?
Yes.

When you encounter errors in your future code, what process will you follow to help you debug?
Stay calm, use the hits, then go through the code step by step.

=end