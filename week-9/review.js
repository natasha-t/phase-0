
// Guessing Game - Javascript

//create GuessingGame constructor function
  //input: takes an answer as argument
  //output: calling guess function --> if answer is high, low or correct ; calling solved function --> true or false
// guess function
    // if else statements from Ruby version
// solved function
    // if else statement


function GuessingGame(answer) {

  this.guess = function(guess) {
    if (guess > answer) {
      return "high";
    } else if (guess < answer) {
      return "low";
    } else if (guess === answer) {
      return "correct!";
    }
  };

  this.solved = function(guess) {
    if (guess === answer) {
      return true
    } else {
      return false;
    }
  }

};

game = new GuessingGame(10);
var guess = 12;
game.guess(guess);
game.solved(guess);

// Reflection
// What concepts did you solidify in working on this challenge?
    //It's now clear what the similarities are between Ruby classes and Javascript Constructor functions; they both build instances of an object that contain certain functionalities.
// What was the most difficult part of this challenge?
    // At first I wasn't sure how to share the data for guess between the functions in the GuessingGame object. In a Ruby class you'd set guess equal to an instance variable. Maybe there's a way to achieve something similar within the Javascript object, but I found that if you set guess equal to a number outside of the object then guess and solved will work as if an instance variable was used.
// Did you solve the problem in a new way this time?
    //It was essentially the same, just without the use of instance variables.
// Was your pseudocode different from the Ruby version? What was the same and what was different?
    //The pseudocode was bascially the same


// Javascript Grocery List

// make groceryList empty object where functions add items and quantities to grocery list as properties and values
// functions addItem, removeItem, updateQuantities, and print functinos
// addItem function
    //input: list, item name, quantity
    //output: adds item name and quantity to grocery list object
// removeItem
    //input: list, item name to remove
    //output: grocery list with specified item removed
// updateQuantities
    //input: list, item name, new quantity
    //output: updates item's value with new quantity
// print
    //output: nicely printed out list
    //use for in loop

var groceryList = {};

function addItem(list, item, quantity) {
  list[item] = quantity;
}

addItem(groceryList, "flour", 1);

function removeItem(list, item) {
  delete list[item];
}

removeItem(groceryList, "flour");


function updateQuantities(list, item, quantity) {
  addItem(list, item, quantity);
}

updateQuantities(groceryList, "flour", 2);

function printList(list) {
  for (var item in list) {
    return item + ": " + list[item];
  }
}

printList(groceryList);

//Reflection
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
    // The concepts were essentially the same in Javascript; make an empty object and create functions that add items to that object
// What was the most difficult part of this challenge?
    //This challenge was fairly easy since it's so similar to the Ruby version
// Did an array or object make more sense to use and why?
    //An object made more sense because you set the item as a property and quantity as it's value in the object