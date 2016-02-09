// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var name = "Tori Huang";
var first = name.substring(0,4);
var last = name.substring(5,10);

console.log("Your first name is " + first + " and your last name is " + last + "? Why hello " +  name + "!");

// Food program
// prompt("What is your favorite food?")
// console.log("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// LOOPING A TRIANGLE

var hash = "#"

for (var i = 0; i < 7; i++) {
  console.log(hash);
  hash += "#";
};

// FIZZBUZZ

for (var i=1; i<=100; i++) {
  if (i % 3 === 0 && i % 5 === 0) console.log("FizzBuzz");
  else if (i % 3 === 0) console.log("Fizz");
  else if (i % 5 === 0) console.log("Buzz");
  else console.log(i);
};

// CHESS BOARD

var chessboard = function(size) {
  var line = "";
  for (var i=0; i<Math.floor(size/2); i++) {line += " #"};
  for (var i=0; i<size; i++) {
    if (i % 2 === 0) console.log(line);
    else if (size % 2 != 0) console.log(line.substring(1,size) + " #");
    else console.log(line.substring(1,size));
  };
};

chessboard(11)

// Functions

// Complete the `minimum` exercise.

var minimum = function(num1, num2) {
  if (num1 < num2) return num1;
  else return num2;
};


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Tori",
  age: 25,
  threeFavFoods: ["mac and cheese", "dumplings", "chocolate"],
  quirk: "I have a little dog whose name rhymes with mine. Not on purpose.",
};

/*
INTRODUCTION
Did you learn anything new about JavaScript or programming in general?
  I completed the JavaScript track on Code Academy before this assignment, so while the book is well written I did not really learn anything new!

Are there any concepts you feel uncomfortable with?
  Overall, the idea that I don't fully understand how a computer works yet makes me a bit uncomfortable. It will be a slow learning process :)

CH1
Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
  JavaScript and Ruby both use typical operators such as +,-,*,/,%. The difference between the two, is JavaScript has a general number variable while Ruby has either integer or float. In JavaScript, all numbers are automatically floats!

CH2
What is an expression?

What is the purpose of semicolons in JavaScript? Are they always required?
  The semicolons in JavaScript alert the compiler when on line is complete so another can begin. If you do not include a semicolon, the code from one line may flow in to another. They are not always required.

What causes a variable to return undefined?
  If the variable was never initiated with a value.

Write your own variable and do something to it in the eloquent.js file.
  See eloquent.js

What does console.log do and when would you use it? What Ruby method(s) is this similar to?
  console.log prints to the console, and you would use it for testing or for a command line application! This is similar to print in Ruby.

Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
  See eloquent.js

Describe while and for loops
  While loops iterate through given commands WHILE a condition is still true. For loops iterate through commands for a set count.

What other similarities or differences between Ruby and JavaScript did you notice in this section?
  The overall outline is nearly the same - the syntax is just different.

Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
  See eloquent.js

CH3
What are the differences between local and global variables in JavaScript?
  Local variables can only be called in their local block. Global variables can be called anywhere.

When should you use functions?
  You use functions when you have a repetitive block of tasks.

What is a function declaration?
  A function declaration defines a function as a variable, so it can be called again by simply stating that name.

Complete the minimum exercise in the eloquent.js file.
  See eloquent.js

CH4
What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
  Square bracket notation allows you to look up names that you cannot use with dot notation. For example, if you needed to add values to a string, and look up that new string, this would be done with bracket notation.

Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
  See eloquent.js

What is a JavaScript object with a name and value property similar to in Ruby?
  Hash!
*/