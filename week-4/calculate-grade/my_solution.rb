
# Calculate a Grade

# I worked on this challenge with Rokas Simkonis.


# Your Solution Below

def get_grade(class_average)

  return case class_average.to_i
    when 90...100
      "A"
    when 80...89
      "B"
    when 70...79
      "C"
    when 60...69
      "D"
    when 0...59
      "F"
    else
      "Please run program again and input valid class grade"
  end
end