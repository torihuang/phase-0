// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Ronu Ghoshal.

// Pseudocode
/*
input: an integer
output: a string: that integer expressed in comma notation
steps:

turn string into an array
turn each value in array into a number
loop starting from end,
every three elements, add a comma
make sure to account for newly added commas

array - integers
for (var i = array.size - 3; i <= 0 ; i = i-3)
insert comma

10,000,000
return the string


// Initial Solution

var separateComma = function(num) {
  var num_array_s = num.toString().split("");
  for (var i = num_array_s.length - 3; i > 0; i = i-3) {
    num_array_s.splice(i, 0, ",");
  }
  return num_array_s.join('');
}
*/

// Refactored Solution

var separateComma = function(num) {
  var num_array_s = num.toString().split("");
  for (var i = num_array_s.length - 3; i > 0; i -= 3) {
    num_array_s.splice(i, 0, ",");
  }
  return num_array_s.join('');
}


// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (separateComma(1000000) === "1,000,000"),
  "The number 1000000 should return '1,000,000'",
  "1. "
)

assert(
  (separateComma(10000000) === "10,000,000"),
  "The number 1000000 should return '10,000,000'",
  "2. "
)

assert(
  (separateComma(100000000) === "100,000,000"),
  "The number 1000000 should return '100,000,000'",
  "3. "
)

assert(
  (separateComma(100) === "100"),
  "The number 1000000 should return '100'",
  "4. "
)

assert(
  (separateComma(1) === "1"),
  "The number 1000000 should return '1'",
  "5. "
)

// Reflection

/*

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
I learned from the last method, that it is better to approach the problem with a decreasing for loop! I did approach the problem differently, knowing that #splice was an option.

What did you learn about iterating over arrays in JavaScript?
You can iterate backwards.

What was different about solving this problem in JavaScript?
It was much more simple.

What built-in methods did you find to incorporate in your refactored solution?
#splice and #join.
*/