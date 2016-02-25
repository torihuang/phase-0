# Reverse Words


# I worked on this challenge with Mike London.
# This challenge took me .75 hours.

# Pseudocode
# Input: Sentence as a STRING
# Output: STRING in reverse
# Steps:
#  Assign a variable to the STRING input
#  Turn STRING in to ARRAY using #SPLIT
#  Reverse the ARRAY in FOR loop
#  Return reversed ARRAY as a STRING using #JOIN

# Initial Solution
# def reverse_words(string)
#   return string if string === ""
#   sentence_array = string.split(" ")
#   puts sentence_array

#   sentence_array.each do |l|
#     empty_string = empty_string + " " + l.reverse
#   end
#   empty_string.lstrip!
# end

# Refactored Solution

def reverse_words(string)
  return string if string === ""
  sentence_array = string.split(" ")
  puts sentence_array
  sentence_array.each do |l|
    l.reverse!
  end
  sentence_array.join(" ")
end



# REFLECTION

# What concepts did you review in this challenge?
# Ruby enumerable and string/array methods


# What is still confusing to you about Ruby?
# Nothing, it's great


# What are you going to study to get more prepared for Phase 1?
# If I'm not ready by now, it's too late :)