# 4.2 Numbers, Letters, and Variable Assignment

## What does puts do?

Puts prints something out to the console with a new line. It also returns nil.

## What is an integer? What is a float?

An integer is a whole number, without a decimal. A float is number with a decimal.

## What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Integers are whole numbers. When dealing with integer division, the computer only sees integers and can only produce an integer. That means the computer can only return the integer value. This becomes a problem if you are dividing two numbers, say 3 and 2, that cannot result in an integer. In this case, the computer returns the nearest integer rounded down. For 3 / 2, that would be 1.

For float division, the computer would see 3.0 and 2.0. The computer now understands past that decimal point! That means, when the computer divides 3.0 / 2.0, it can include the 5 for 1.5.

## Calculate the number of hours in a year
```
valueNotEntered = true;

while valueNotEntered do
  puts "Is it a leap year? Y/N"
  isLeapYear = gets.chomp

  if isLeapYear == "N"
    puts "There are #{365*24} hours in a year."
    valueNotEntered = false;
  elsif isLeapYear == "Y"
    puts "There are #{366*24} hours in a leap year."
    valueNotEntered = false;
  else
    puts "Invalid input. Answer must be Y/N. Is it a leap year? Y/N"
  end
end
```

## How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby

## What is the difference between integers and floats?

Integers are whole numbers. Floats have decimals.

## What is the difference between integer and float division?

Integer division returns only integers, and rounds down to the nearest integer if the technical answer is a float. Float division can return a number with as many decimal values as the programmer allows!

## What are strings? Why and when would you use them?

Strings are characters strung together. You cannot use strings for math, although math can sometimes be used on strings. (e.g. puts "multiply me by 5" * 5 would result in "multiply me by 5" displayed 5 times.) You use strings a lot as output!

## What are local variables? Why and when would you use them?

Local variables are identified as something assigned to point at a value, whether that be an integer, float, string, or boolean. You use variables when you have a value being used more than once.

## How was this challenge? Did you get a good review of some of the basics?

This challenge was useful for reviewing the basics!