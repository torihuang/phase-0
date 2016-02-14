/*
PERSON 1 - TORI HUANG
​
As a user, I want three functions that will take my collection of numbers and complete calculations for me. I have two collections of numbers. The first is 3,3,3,4,4,4,6 and the second is 5,5,5,5,6,6,8,8. I've listed the requirements for calculations below:
​
 - A function called 'sum' that will tell me the total value of my numbers added together.
 - A function called 'mean' that returns the average value of my numbers.
 - A function called 'median' that returns the median value of my numbers.
​
I should also let you know, I prefer to call my collections oddLengthArray and evenLengthArray.
*/

/*
PERSON 2 - CONNOR REAUMOND
Input: Two arrays
Outputs: Sum, median, mean (for each array)
Steps:
Create array oddLengthArray
  Set it equal to [3,3,3,4,4,4,6]
Create array evenLengthArray
  Set it equal to [5,5,5,5,6,6,8,8]
Create function sum that accpets oddLengthArray and evenLengthArray as parameters
  Create variable sumEven
  Create variable sumOdd
  Loop through each array
    Set counter = 0, while counter less than length of array, add 1 to counter
    Add each number to new variable
  return values
Create function mean that accpets oddLengthArray and evenLengthArray as parameters
  Create variable sumEven
  Create variable sumOdd
  Loop through each array
    Set counter = 0, while counter less than length of array, add 1 to counter
      Add each number to new variable
    Divide variable by lenth of array
  Return value
Create function median that accpets oddLengthArray and evenLengthArray as parameters
  For evenLengthArray
    Find length of array. Sort array, select element at (length/2)-1
  For oddLengthArray
    Find length of array. Sort array, select elements at (length/2)-1 and (length/2)
  Add together, divide by two.
*/

//PERSON 3 - ALYSSA RANSBURY

var oddLengthArray = [3,3,3,4,4,4,6]
var evenLengthArray = [5,5,5,5,6,6,8,8]
var sum1 = 0
function sum(oddLengthArray, evenLengthArray) {
  var allNum = oddLengthArray + evenLengthArray);
  for (var count = 0; count < allNum.length; count++)
    sum1 += allNum[count];
  console.log(sum1)
  console.log(oddLengthArray)
  console.log(evenLengthArray)
}
sum(oddLengthArray, evenLengthArray)

//PERSON 4 - EDDIE BUENO

function addArray(array,sum){
  for (i = 0; i < array.length; i++)
    sum += array[i];
  return sum
}
function mean(oddArray, evenArray){
  var sumEven = 0, sumOdd = 0;
  var oddMean = addArray(oddArray,sumOdd)/oddArray.length, evenMean = addArray(evenArray,sumEven)/evenArray.length;
  console.log(oddMean)
  console.log(evenMean)
  return oddMean, evenMean
}
function median(oddArray, evenArray){
  var oddMedian1 = oddArray.sort()[oddArray.length / 2];
  var oddMedian2 = oddArray.sort()[(oddArray.length / 2) -1];
  console.log("Here are the medians: " + oddMedian1,oddMedian2)
  var oddMedian = (oddMedian1 + oddMedian2) / 2;
  var evenMedian = evenArray.sort()[(evenArray.length / 2) - 1];
  console.log(oddMedian + evenMedian)

  return oddMedian, evenMedian
}
mean(oddLengthArray, evenLengthArray)
median(oddLengthArray, evenLengthArray)

/*PERSON 5 JOHN HOLMAN
Edits: Used + instead of concat Line 54
       Used += Line 56
       Used + to combine Lines 80,81 & 83,84
       Condensed Outputs and returns to multiple values rather than 1 per line
  Chunk 1 User Story(Person 3)
  I have two lists of numbers. I would like to do three things with them.
    1) Combine the lists into one lists
    2) Find the sum of the combined lists
    3) Output the sum of the combined lists, along with the two original lists
  Chunk 2 User Story(Person 4)
  I have two lists of numbers. I would like to do three things with them.
    1) Sum the lists.
    2) Find the mean value of each list.
    3) Find the median value of each list.
*/

/* PERSON 1 - TORI HUANG

There were a few issues with our join solution. The 3 test that passed were the ones checking if sum, median, and mean functions existed. The other tests failed, and their problems are listed below.

1. There were some syntax errors in the code, so initially the program would not run.
2. evenNumberArray and oddNumberArray were declared in the test statement, and did not need to be redeclared in the project solution.
3. All functions were supposed to only take in one argument, the array, instead of two separate arguments. Instead, all functions take in two array arguments and sum everything together.

*/