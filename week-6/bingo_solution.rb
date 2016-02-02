=begin
# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


Create a method to check whether that column has that number in the existing bingo_board.
If the number is in the column, replace it with an "X".
Display the new board to the console (Make it pretty).

# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  1. Create an ARRAY with values b,i,n,g,o.
  2. Call a random number between 0-4, and call from bingo ARRAY
  3. Call a random number between 1-100
  4. RETURN a string of the Character followed by the numbers

# Check the called column for the number called.
  1. Create an ARRAY with values b,i,n,g,o.
  2. Check which column number we should look through
  3. Iterate through the array at the given column and RETURN TRUE if the value is found.

# If the number is in the column, replace with an 'x'
  1. Set the value at that point in the array equal to 'x'

# Display a column to the console
  1. Iterate through the ARRAY and PRINT each value

# Display the board to the console (prettily)
  1. Iterate through the ARRAY OF ARRAYS
  2. FOR 5 times, print the first value of each array
  3. Pad an extra space if the value is less than 10

=end

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def turn
    return "BINGO"[rand(0..4)] + rand(1..99).to_s
  end

  def check_winner(square_called)
    letter = square_called[0]
    num = square_called[1..square_called.length].to_i

    bingo = {"B"=>0,"I"=>1,"N"=>2,"G"=>3,"O"=>4}

    square = @bingo_board[bingo[letter]]
    for x in 0...square.length
      if square[x] == num then square[x] = 'x' end
    end
  end

  def display_board(board = @bingo_board)
    puts "--------------"
    puts " B  I  N  G  O"
    puts "--------------"
    for x in 0...25
      square = board[x/5][x%5]
      print "#{square} "
      print " " if square == "x" || square < 10
      puts "" if (x+1)%5 == 0
    end
  end

  def create_legal_board
    legal_board = [[],[],[],[],[]]

    5.times do |x|
      5.times {|y|legal_board[y].push(rand((x*15)..(x*15+14)))}
    end

    legal_board
  end
end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.check_winner(new_game.turn)
new_game.display_board

puts ""
puts "--------------"
puts " L  E  G  A  L"
legal_board = new_game.create_legal_board
new_legal_game = BingoBoard.new(legal_board)
new_legal_game.display_board

=begin
#REFLECTION

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
Pseudocoding was difficult, because I wanted to jump right in to testing things! My pseudocoding style is to get the basics, then start experimenting.

What are the benefits of using a class for this challenge?
A class allows you to create multiple bingo boards.

How can you access coordinates in a nested array?
You access coordinates using two [][], so if you wanted to get a number two spots down and three spots over, assuming we are displaying array values horizontally like in this challenge, you would do array[2][1].

What methods did you use to access and modify the array?
I used #times method to iterate over the array.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
I learned more about #times. I had not used it before, but it is pretty handy. You call it on an integer, and it automatically iterates from zero to the integer. It is used to iterate a specific number of times.

How did you determine what should be an instance variable versus a local variable?
The only variable that needed to be an instance variable was board, as it is called multiple times in different methods.

What do you feel is most improved in your refactored solution?
My improved refactored solution is still messy!

=end