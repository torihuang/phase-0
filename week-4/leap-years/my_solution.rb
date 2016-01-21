# Leap Years

# I worked on this challenge by myself.


# Your Solution Below
def leap_year?(year)
    if year % 4 != 0
      return false
    elsif year % 100 != 0
      return true
    elsif year % 400 != 0
      return false
    else
      return true
    end
end