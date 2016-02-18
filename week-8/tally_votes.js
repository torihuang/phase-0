// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// PSEUDOCODE
// Input: An OBJECT containing people and their votes
// Output: An OBJECT of elected positions
// Steps:
//  VOTE COUNT
//   1. Iterate through every OBJECT in the votes collection
//   2. Access key (name) from votes for each elected position
//   3. Fill voteCount with names of elected people as the property and the number of votes they received as the value.
//  DETERMINE WINNERS
//   1. Iterate through voteCount (president, vp, secretary, treasurer)
//   2. Fill officers with highest value count as you iterate.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

// var voteCount = {
//   president: {
//             "Bob": 5,
//             "Devin:"3,
// },
//   vicePresident: {},
//   secretary: {},
//   treasurer: {}
// }

var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

var officer_vote_count = {
  president: 0,
  vicePresident: 0,
  secretary: 0,
  treasurer: 0
}

// INITIAL SOLUTION

// for (var student in votes) {
//   // console.log(votes[student]);
//   // console.log(student.president);
//  for (var position in votes[student]) {
//    // console.log(votes[student][position]);
//    if (voteCount[position].hasOwnProperty(votes[student][position])) {
//      voteCount[position][votes[student][position]] += 1;
//    } else {
//       voteCount[position][votes[student][position]] = 1;
//    }

//    if (voteCount[position][votes[student][position]] > officer_vote_count[position]){
//    officer_vote_count[position] = voteCount[position][votes[student][position]];
//    officers[position] = votes[student][position];
//    // Fill officer_vote_count with greater value count

//    }
//  }

// };

// REFACTORED SOLUTION

for (var student in votes) {
  // console.log(votes[student]);
  // console.log(student.president);
 for (var position in votes[student]) {
   // console.log(votes[student][position]);
   var candidate_choice = votes[student][position];
   if (voteCount[position].hasOwnProperty(candidate_choice)) {
     voteCount[position][candidate_choice] += 1;
   } else {
      voteCount[position][candidate_choice] = 1;
   }

   if (voteCount[position][candidate_choice] > officer_vote_count[position]){
   officer_vote_count[position] = voteCount[position][candidate_choice];
   officers[position] = candidate_choice;
   }
 }

};



console.log(voteCount);
console.log(officer_vote_count);



// TESTS

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)

// REFLECTION

/*

What did you learn about iterating over nested objects in JavaScript?
When you use for var x in object, you are actually calling the position of x in the object. x will be a string!

Were you able to find useful methods to help you with this?
We utilized #hasOwnProperty, it is a very helpful method that checks if an object has a property.

What concepts were solidified in the process of working through this challenge?
My concept of iterating through nested objects was solidified in this challenge!s
*/