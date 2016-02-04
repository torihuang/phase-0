# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Mike London.
# I spent 1 hours on this challenge.

# PSEUDOCODE

# Input: Credit card number 16 digit integer
# Output: boolean - if card is valid
# Steps:
# 1. Initialize the class with the card number
# 2. IF the card is 16 digits THEN contine
# 3. ELSE raise ARGUMENT ERROR
# 4. Method check_card

# INITIAL SOLUTION

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(card_number)
#     raise ArgumentError.new("Card is not the correct length. Must be 16 digits") if card_number.to_s.length != 16
#     puts card_number.to_s.length

#     @card_number = card_number.to_s
#     check_card
#   end

#   def check_card()

#     number_array = @card_number.split('')
#     number_array.map! {|num| num.to_i}


#     (0...number_array.length).step(2).each {|x| number_array[x] = number_array[x] * 2}

#     i = 0
#     number_array.each do |num|
#       if num > 9
#         num_s = num.to_s.split("")
#         number_array[i] = num_s[0].to_i + num_s[1].to_i
#       end
#       i += 1
#     end
#     sum = number_array.inject(:+)

#     return sum % 10 == 0
#   end
# end



# Refactored Solution

class CreditCard

  def initialize(card_number)
    raise ArgumentError.new("Card is not the correct length. Must be 16 digits") if card_number.to_s.length != 16
    puts card_number.to_s.length

    @card_number = card_number.to_s
    check_card
  end

  def check_card()

    number_array = @card_number.split('')
    number_array.map! {|num| num.to_i}


    (0...number_array.length).step(2).each {|x| number_array[x] = number_array[x] * 2}

    i = 0
    number_array.each do |num|
      if num > 9
        num_s = num.to_s.split("")
        number_array[i] = num_s[0].to_i + num_s[1].to_i
      end
      i += 1
    end
    sum = number_array.inject(:+)

    return sum % 10 == 0
  end
end

=begin
# REFLECTION

What was the most difficult part of this challenge for you and your pair?
We had trouble understanding the initial requirements. At first we thought the credit card would be passed as a string argument with spaces. It was not until after we completed the challenge that we realized the rspec was passing a whole integer! We fixed it up in no time though :)

What new methods did you find to help you when you refactored?
I learned about inject! That is a pretty cool method.

What concepts or learnings were you able to solidify in this challenge?
I was able to solidify my knowledge of classes.


=end