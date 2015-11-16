
// Add the finished solution here when you receive it.


function seperateArray(array) {
  var array1 = array;
  var array2 = [];
  var array3 = [];
  array1.forEach(function(eachNumber) {
    if(eachNumber % 2 === 0) {
    array2.push(eachNumber);
    console.log(array2);
    }
    else {array3.push(eachNumber);
    console.log(array3); }
  }
  );
}

seperateArray([2,1,5,7,8])

function sum(array) {
  var array1 = array;
  total = 0
  array1.forEach(function(eachNumber) {
    total += eachNumber;
  }
  );
  console.log(total)
}
sum([3,4,5,6,7])


function average(array) {
  var array1 = array;
  total = 0;
  array1.forEach(function(eachNumber) {
  total = total + eachNumber;
  }
  );
console.log(total/array1.length);
}

average([3,4,5,6,7])


function median(array) {
  var array1 = array;
  array1.sort(function(a,b) {return a-b});
  console.log(array1);
  var halfArray = (array1.length)/2;
  if(halfArray % 2 === 0) {
console.log(halfArray);
}else {
  console.log(((halfArray-1) + halfArray)/ 2)
}
}

median([1,5,10,2])
median([2,3,4,5,6])
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


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