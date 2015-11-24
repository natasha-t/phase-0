// Guessing Game - Ruby

// class GuessingGame
//   def initialize(answer)
//     @answer = answer

//   end

//   def guess(guess)
//     @guess = guess
//     if guess > @answer
//       p :high
//     elsif guess < @answer
//       p :low
//     elsif guess == @answer
//       p :correct
//     end
//   end

//   def solved?
//    p check_answer = @guess == @answer ? true : false
//   end

// end

// game = GuessingGame.new(10)
// game.guess(10)
// game.solved?


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
    //
// What was the most difficult part of this challenge?
// Did you solve the problem in a new way this time?
// Was your pseudocode different from the Ruby version? What was the same and what was different?



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

//Refactored Solution

//use constructor function

function GroceryList() {
  var list = {};

  this.addItem = function(item, quantity) {
    list[item] = quantity;
  }

  return list;
}

groceryList = new GroceryList();
groceryList.addItem("flour", 2);