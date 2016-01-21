# Factorial

# I worked on this challenge with: Frankie P


# Your Solution Below
def factorial(number)
  if number == 0
    return 1
  else
    final_factorial = 1

    for x in 1..number
      final_factorial = final_factorial * x
    end

    return final_factorial
  end
end