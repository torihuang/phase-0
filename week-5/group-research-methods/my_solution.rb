# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)

end

def my_hash_finding_method(source, thing_to_find)

end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)

end

def my_hash_modification_method!(source, thing_to_modify)

end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)

end

def my_hash_sorting_method(source)

end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)

end

def my_hash_deletion_method!(source, thing_to_delete)

end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5

=begin
PSEUDOCODE
ARRAY SPLITTING
Input: Array
Output:New Array with two arrays - one with strings and other with integers

We will iterate through each value in the array. If it is an integer, we will push it to the first array. If it is a string, we will push it to the second array.

HASH SPLITTING
Input: hash

=end

def my_array_splitting_method(array)
  return [array.select {|item| item.is_a? Integer},array.select {|item| item.is_a? String}]
end

def my_hash_splitting_method(hash, age=4)
  return [(hash.select {|x| hash[x] <= age}).to_a,(hash.select {|x| hash[x] > age}).to_a]
end


print my_hash_splitting_method(my_family_pets_ages)

=begin
# Identify and describe the Ruby method(s) you implemented.

.find_all - Find all is a lot like select, except it does not work as expected with hashes. That was a huge surprise. find_all returns a new collection containing elements of the original colelction tha tmatch the criteria in the find block. I need to do more research on this method and how it works with hashes.

.select - iterates through the values in an array and only selects the items who meet the given conditions.

.is_a? - This is unrelated to enumerables, but I forgot it existed! It is super handy. You can check which type an object is (ex: x.is_a? Integer). According to the Ruby Docs, you can even compare it to other variables, without listing a specific type. (ex: x.is_a? y)


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.

I have two methods.

The first takes an array and sorts the array in to a new array of separate arrays. The array[0] contains an array of integers. Array[1] contains an array of strings. If there are no strings or integers in the array, the method returns [[][]]. Any additional values (arrays, booleans, etc.) in the original array are not included in output.

The second method takes a hash and an integer. It uses the integer to sort the hash, returning an array of two hashes. Array[0] contains a hash of keys with values all less than or equal to the integer argument sent through the method. Array[1] contains all other values in the array (values greater than the integer argument). If there is no number argument sent to the array, the number defaults to 4.

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?

I learned so much about enumerables in this assignment. When explaining my methods to others, I actually realized I had a big flaw in one of them. When explaining my research to others, I was able to reflect on some of the different methods I tried and failed! Great way to learn.

=end