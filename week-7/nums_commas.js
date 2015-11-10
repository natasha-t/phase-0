// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Jon Clayton

// Pseudocode
//turn integer into string
// while loop; until index is larger than length of string
// slice off last three digits
// put comma in front of them
// store in variable fromRight
// slice next three digits, put comma in front


// Initial Solution

var separateComma = function(number) {
  var str = number.toString();

  var fromRight = str.slice(-3);
  var i = -3;

  while(str.length + i > 0) {
    i += -3;
//    var nextThreeDigits = str.slice(i,i+3) + ",";
    fromRight = str.slice(i,i+3) + "," + fromRight;
  }
  return fromRight;

};

// Refactored Solution

var separateComma = function(number) {
  var str = number.toString();

  var fromRight = str.slice(-3);
  var i = -3;

  while(str.length + i > 0) {
    i += -3;
    fromRight = str.slice(i,i+3) + "," + fromRight;
  }
  return fromRight;
};

console.log(separateComma(153456734));

// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
     // Yes, the approach had to be different because there isn't a .reverse method in Javascript, which would be an initial approach to this challenge in Ruby.
// What did you learn about iterating over arrays in JavaScript?
    // Iterating over arrays feels more numerical, with the focus on index values. Ruby's built-in iteration methods use English words like each, map, collect which are easier to grasp.
// What was different about solving this problem in JavaScript?
    // Solving this problem was entirely different for me because I depended on the reverse method in Ruby, while in Javascript calculating the index values from the right was the focus. Luckily my pair had completed the Ruby separate comma challenge by the 'from right' approach where negative indices are used so that helped.
// What built-in methods did you find to incorporate in your refactored solution?
    // slice was the main Javascript method we used to break the number down into three's.