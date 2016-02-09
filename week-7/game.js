/*
GAME DESCRIPTION
Battleship - but with bigger bombs. You start with a 10 x 10 board, and everyone has three ships. One that takes up two spaces, one that takes up three spaces, and one that takes up four spaces. Like typical battleship, you guess where you would like to hit the computer's board. Unlike typical battleship, you have a bomb that will explode all locations touching that space.

CREATE BOARD
1. Create a hash that is a 10x10 board of x

FILL BOARD WITH SHIPS
1. Create a method that will fill the board with a ship of a passed size.
  - Take the size as an argument
  - Randomly generate a horizontal/vertical alignment location for that ship
  - store the new location in the array as o instead of x
2. Fill board with three different sized ships

PRINT BOARD
1. print current board to the screen, but only showing the hit and missed values.

GUESS
1. Call guess method with Y and X location value.
2. Check ships ARRAY to see if location is a ship.
3. IF location is a ship, is a hit.
4. ELSE location is a miss.
*/

// Create blank board
var board = {};

// Each ship has a ship size, a board size, and a ship starting
// location. The ship randomly generates a starting location and
// horizontal / vertical alignment. It uses a callback function
// to create a hash of the ship's location, alter the board,
// and check if that location is possible.

function Ship(ship_size, board_size) {
    // declare variables
    this.ship_size = ship_size;
    this.board_size = board_size;
    var ship_loc = {};
    this.ship_loc = ship_loc;
    var alignment = 0;
    var x_start = 0;
    var y_start = 0;

    var create_ship_location = function() {
      // If aligment is 1, horizontal, else, vertical
      alignment = Math.floor((Math.random() * 2) + 1);
      // var alignment = 1;

      // Find starting x and y location
      x_start = Math.floor((Math.random() * board_size));
      y_start = Math.floor((Math.random() * board_size) + 1);

    }

    // Loops through the board to complete various functions
    var loop_through_board = function(callback) {
      var currentLoc = 0;
      if (alignment === 1) currentLoc = x_start;
      else currentLoc = y_start;

      var currentSize = 0;

      while (currentSize < ship_size) {
        var test = true;
        if (alignment === 1) {
          if (currentLoc >= board_size) {
            test = callback(y_start,currentLoc - currentSize - 1)
            currentLoc = currentLoc - 1;
          }
          else {
            test = callback(y_start,currentLoc);
          }
        }
        else {
          if (currentLoc >= board_size) {
            test = callback(currentLoc - currentSize - 1, x_start);
            currentLoc = currentLoc - 1;
          }
          else {
            test = callback(currentLoc,x_start);
          }
        }

        if (!test) return false;
        currentLoc += 1;
        currentSize += 1;
      }
      return true;
    }

    // Pushes ship location to array
    var create_location = function(key,value) {
      if (ship_loc[key] == undefined) ship_loc[key] = [];
      ship_loc[key].push(value);
    }

    // Checks if the position is a potential spot for new ship
    var position_is_empty = function(y,x) {
      if (board[y][x] != "x") return false;
      else return true;
    }

    // Adds ship location to the board
    var add_to_board = function(y,x) {
      board[y][x] = "O";
      console.log(board);
      return true;
    }

    // Creates ship hash, where keys are y location and values
    // are the x location
    var fill_ship = function(y,x) {
      create_location(y,x);
      return true;
    }

    create_ship_location();
    while (!loop_through_board(position_is_empty)) {
      create_ship_location();
    }
    loop_through_board(add_to_board);
    loop_through_board(fill_ship);
}

// The board generates a square game board with randomly placed ships
// The size of the ships is currently hardcoded in to the game.
// From the board, you can guess a ship location or print the board.
function Board(size) {
    this.size = size;
    var total_hits = 0;
    var needed_hits = 0;
    var ships = [];

    for (var i=1; i<=size; i++) {
      board[i] = new Array(size);
      board[i].fill("x");
    }

    var fill_ships = function() {
      var ship1 = new Ship(2, 10);
      var ship2 = new Ship(3, 10);
      var ship3 = new Ship(4, 10);
      var ship4 = new Ship(5, 10);
      ships.push(ship1);
      ships.push(ship2);
      ships.push(ship3);
      ships.push(ship4);
      for (x in ships) {
        needed_hits += ships[x].ship_size;
      }
      console.log("Needed hits: " + needed_hits);
    }

    fill_ships();

    this.guess = function(y,x) {
      x = x-1;
      for (i in ships) {
        var current_ship = ships[i].ship_loc;

        if (current_ship[y] != undefined) {
          var location_of_guess = current_ship[y].indexOf(x);
          if (location_of_guess != -1) {
            board[y][x+1] = "H";
            total_hits += 1;
          }
        }
        else if (board[y][x+1] != "H") {
          board[y][x+1] = "m";
        }
      }
      if (total_hits>=needed_hits) return "You won!!";
    }

    this.print = function() {
      var current_board = " 1  2  3  4  5  6  7  8  9  10\n ";
      for (var i=1; i<=this.size; i++) {
        for (var j=1; j<=this.size; j++) {
          if (board[i][j] === "H") current_board += "H  ";
          else if (board[i][j] === "m") current_board += "m  ";
          else current_board += "x  ";
        }
        current_board += "\n ";
      }
      console.log(current_board);
    }
}

// Create a new Board class.
var battleship_board = new Board(10);

// Guess every single spot on the board.
for (var i=1; i<=10; i++) {
  for (var j=1; j<=10; j++) {battleship_board.guess(i,j);}
}

// Print out the results.
battleship_board.print();