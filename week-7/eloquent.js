// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
// var boogie = "I like to boogie";

// var userFood = prompt("What's your favorite food?");
// alert("Hey " + userFood + " is my favorite food too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// Looping a triangle
// start with one pound sign
// add one pound sign until length is 7

var pound = "";
while (pound.length < 7) {
  console.log(pound += "#");
}

//FizzBuzz
// Print numbers 1 to 100
// If number is divisible by 3 print "Fizz"
// If number is divisible by 5 print "Buzz"
//Print "FizzBuzz" if number is divisible by both 3 and 5

for (var i = 1; i <= 100; i++) {
  if ((i % 3 === 0) && (i % 5 === 0))
    console.log("FizzBuzz")
  else if (i % 3 === 0)
    console.log("Fizz")
  else if (i % 5 === 0)
    console.log("Buzz")
  else
    console.log(i)
}


// Functions

// Complete the `minimum` exercise.
// function that accepts two arguments
// returns the smallest number

var min = function(x,y) {
  if (x === y)
    console.log(x + y + " are equal");
  else if (x > y)
    console.log(y+ " is the minimum number");
  else
    console.log(x + " is the minimum number");
}

min(400,300);

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Natasha",
  age: 23,
  favorite_foods: ["popcorn", "cherry tomatoes", "bacon"],
  quirk: "mild obsession with notebooks with thin paper"
}