# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order of the flavors coming up.


# Pseudocode
# Input: colors as an ARRAY of STRINGS
# Output:
# Steps:
# => Create a CLASS PezDispenser that takes an ARRAY of STRINGS containing pez colors
# => Method pez_count returns the lenght of the array colors
# => Method get_pez returns the most recent pez entered and removes it
# => Method add_pez adds a pez on to the top of the pez array
# => Method see_all_pez prints out all pez in the dispenser


# Initial Solution

# class PezDispenser

#   def initialize(colors)
#     @colors=colors;
#   end

#   def pez_count
#     return @colors.length
#   end

#   def get_pez
#     return @colors.pop
#   end

#   def add_pez(pez)
#     @colors.push(pez)
#   end

#   def see_all_pez
#     @colors.each {|pez| puts pez}
#   end
# end

# Refactored Solution

class PezDispenser
  attr_reader :pez_count

  def initialize(colors)
    @colors=colors;
    @pez_count = @colors.length
  end

  def get_pez
    if @colors.length > 0 then
      @pez_count = @colors.length - 1
      return @colors.pop
    end
  end

  def add_pez(pez)
    @colors.push(pez)
  end

  def see_all_pez
    pez_list = ""
    @colors.each {|pez| pez_list =  pez + "\n"+ pez_list}
    pez_list
  end
end




# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
print flavors
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
# What concepts did you review in this challenge?
# I reviewed the concept of creating classes, manipulating an array, and enumeration!

# What is still confusing to you about Ruby?
# Ruby is pretty straight forward.

# What are you going to study to get more prepared for Phase 1?
# If I'm not ready by now, it's too late!