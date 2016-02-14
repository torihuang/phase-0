
// Add the finished solution here when you receive it.
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

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

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)