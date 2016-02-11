// JavaScript Olympics

// I paired with: Rocky Simkonis

// Bulk Up

var athlete_array = [
  {name: "Michael Jordan", event: "Basketball"},
  {name: "Derek Rose", event: "Basketball"}
];

var addWin = function (array) {
  for (var x in array) {
    var athlete = array[x];
    var win_function = function() {console.log(athlete.name +" wins " + athlete.event)};
    athlete.win = win_function;
  }
};


// Jumble your words

var reverse = function (string) {
  var str_array = string.split('');
  str_array.reverse();
  var final_string = str_array.join('');
  return final_string;
}


// 2,4,6,8

var isEven = function(array) {
  // {|elem| elem >= 10}
  var evenArray = array.filter(elem => elem % 2 === 0); // true
  return evenArray;
}


// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

/*
REFLECTION

What JavaScript knowledge did you solidify in this challenge?
I learned a lot more about #filter and #every!

What are constructor functions?
Constructor functions are basically classes. They allow you to create a new object of that function.

How are constructors different from Ruby classes (in your research)?
JavaSCript constructors are almost identical to Ruby classes. The syntax is different, but they both complete the same goal.
*/