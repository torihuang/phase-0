# Your Names
# 1) Tori Huang
# 2) John Holman

# We spent 0.75 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # If the item to make is not in library, raise ArgError
  raise ArgumentError.new("#{item_to_make} is not a valid input") unless      library.has_key?(item_to_make)

  # Determine the number of ingredients required and the number of
  # remaining ingredients
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  # Make a final suggestion on what to cook, including cookies for
  # any of the remaining supplies
  final_suggestion =  "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"

  final_suggestion += ", make #{remaining_ingredients} of cookies" if    remaining_ingredients != 0

  final_suggestion
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("cake", 5)

=begin
#  REFLECTION

What did you learn about making code readable by working on this challenge?
I learned more about debugging! It was fun working through the errors, trying to understand what the previous developer was trying to do, and improving upon his code.

Did you learn any new methods? What did you learn about them?
We worked with #values_at, which calls a value based on a key. It always returns an array of values. However, we were using #values_at to call on one value in the hash, so it didn't make much sense. We swapped back to just call the value from a key like normal!

What did you learn about accessing data in hashes?
It was a repeat of previous concepts!

What concepts were solidified when working through this challenge?
My concept of #values_at was solidified during this challenge. My debugging skills were also improved!

=end