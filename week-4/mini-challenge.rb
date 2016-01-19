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