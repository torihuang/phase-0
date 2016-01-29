# PSEUDOCODE FOR GROCERY LIST
# Method to create a list
# input: STRING of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Ask for list input
  # Turn list input to an ARRAY
  # Create a HASH with a default quantity of zero
  # Fill HASH with array values, counting the number of each value in the ARRAY
  # print the list to the console using the PRINT_LIST method
# output: HASH of items with the KEY as food and the VALUE as quantity of that food

# Method to add an item to a list
# input: item name as STRING and optional quantity as INTEGER
# steps:
  # First, check if the item already exists
  # IF the item already exists, add the quantity to the value at that item.
  # ELSE create the item with a value of the quantity passed
# output: Nothing

# Method to remove an item from the list
# input: item name as STRING
# steps:
  # First, check if the item already exists
  # IF the item already exists, remove the KEY from the HASH
  # ELSE print to the screen that items does not exist
# output: Nothing

# Method to update the quantity of an item
# input: Item as a STRING and quantity as an INTEGER
# steps:
  # Find the item as a KEY in the hash
  # IF the item exists, set the VALUE to the quantity passed
  # ELSE put to the screen that the item does not exist
# output: Nothing

# Method to print a list and make it look pretty
# input: HASH where KEYS are food items and VALUES are number of items
# steps:
  # Iterate through the HASH
  # For EACH KEY in hash, print out KEY, VALUE
# output: Put hash KEY, VALUE to the screen

$grocery_list = Hash.new(0)

def create_list
  puts "Hi, welcome to the grocery list creator! Please enter your list of grocery items."
  input = gets.chomp
  list_array = input.split(" ")
  list_array.each {|item| $grocery_list[item] = list_array.count(item)}
  puts "Thank you. Your grocery list has been created. You can review the list below."
  print_list
end

def add_item(item, quantity)
  $grocery_list[item] += quantity
end

def remove_item(item)
  result = $grocery_list.delete(item)
  if result = nil then puts "We could not find that item in your list." end
end

def change_quantity(item, quantity)
  $grocery_list[item] = quantity
end

def print_list
  puts ""
  puts "GROCERY LIST"
  $grocery_list.each {|item, num| puts "#{item}, #{num}"}
end

create_list
add_item("lemonade", 2)
add_item("tomato", 3)
add_item("onion", 1)
add_item("icecream", 4)
print_list
remove_item("lemonade")
print_list
change_quantity("icecream", 1)
print_list

# apple apple apple apple apple banana banana banana tomato tomato lettuce chicken chicken milk icecream


=begin
REFLECTION
What did you learn about pseudocode from working on this challenge?
I feel the more I practice, the better I get! I hope I did a better job using correct capitalization.

What are the tradeoffs of using Arrays and Hashes for this challenge?
Hashes were perfect for this challenge, as they allowed me to maintain an organized count of each quantity. I do not see any downside to using a hash, an array would have been chaos.

What does a method return?
A method returns the last variable that is used.

What kind of things can you pass into methods as arguments?
You can pass objects or collections in to methdos as arguments.

How can you pass information between methods?
You pass information between methods by sending local variables through the method, or by declaring a global variable.

What concepts were solidified in this challenge, and what concepts are still confusing?
I am very confused by what the challenge meant by "command line application". I googled those instructions, and command line applications seem to be more complex that what we have learned thus far, something we have yet to cover.
=end