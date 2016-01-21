# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Frankie Pangilinan

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array
# Output: integer
# Steps to solve the problem.


# 1. total initial solution
# Add the numbers together, using a loop.


# 3. total refactored solution
# Add the numbers together, using an each loop.


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: single string, capitalized, ending in period.
# Steps to solve the problem.


# 5. sentence_maker initial solution
# Add the strings together, using a loop.


# 6. sentence_maker refactored solution
# Add the strings together, using an each loop.

def total(array)
  y = 0
  array.each {|x| y = x + y}
  return y
end

def sentence_maker(arr_string)
  r = ""
  arr_string.each {|x| r = r << " "+x.to_s}
  r << "."
  return r.lstrip.capitalize
end