 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Make truly organic tea from backyard ingredients
// Goals:
    // Collect tea leaves
    // Milk cow
    // extract sugar cane juice
    // Retrieve water
// Characters: Artisan Tea Maker
// Objects:
    // Artisan Tea Maker
        // name, favorite_tea, tea_leaf_count (0), milk_level (0), sugar_level (0), water_level (0)
    // Tea plant
        // type, # of leaves (100)
    // Cow
        // name, milk_level (100)
    // Sugar cane
        // juice_extract_level (100)
    // Water Well
        // water_level (100)
// Functions:
    // pull Tea Leaves
    // milk cow
    // extract sugar cane juice
    // retrieve water

// Pseudocode
// create character object with prop: levels set at 0
    // name
    // favorite_tea
    // tea_leaf_count (0)
    // milk_level (0)
    //sugar_level (0)
    // water_level (0)
// create tea, cow, sugar cane, and water well objects with levels set at 100
// create functions
    // pullTeaLeaves
        // Input: character, tea plant
        // Output: character object tea leaf count is 100, tea plant leaf count is 0
    // milkCow
        // Input: character, cow
        // Output: character milk level = 100; cow milk level = 0
    // extractSugarCaneJuice
        // Input: character, sugar cane
        // Output: character sugar level = 100; sugar cane level = 0
    // retrieveWater
        // Input: character, water well
        // Output: character water level = 100; water well level = 0
//
//

// Initial Code

// //Objects
// var teaMaker = {
//   name: "Artisan Tea Guru",
//   favoriteTea: "Scraped Ginger",
//   teaLeafCount: 0,
//   milkLevel:  0,
//   sugarLevel: 0,
//   waterLevel: 0
// };

// var teaPlant = {
//   teaLeafCount: 100
// };

// var cow = {
//   milkLevel: 100
// }

// var sugarCane = {
//   juiceExtractLevel: 100
// };

// var waterWell = {
//   waterLevel: 100
// };

// //Functions
// var displayStatus = function(character) {
//   return "Name: " + character.name + "\n" + "Favorite Tea: " + character.favoriteTea + "\n" + "Tea Leaf Count: " + character.teaLeafCount + "\n" + "Milk Level: " + character.milkLevel + "\n" + "Sugar Level: " + character.sugarLevel + "\n" + "Water Level: " + character.waterLevel;
// };

// var pullTeaLeaves = function(character, teaPlant) {
//   teaPlant.teaLeafCount = 0;
//   character.teaLeafCount = 100;

//   return "You, the almighty " + teaMaker.name + " now have a leaf count of " + teaMaker.teaLeafCount;
// };

// var milkCow = function(character, cow) {
//   cow.milkLevel = 0;
//   character.milkLevel = 100;

//   return "You, the almighty " + teaMaker.name + " now have a milk level of " + teaMaker.milkLevel;
// };

// var extractSugarCaneJuice = function(character, sugarCane) {
//   sugarCane.juiceExtractLevel = 0;
//   character.sugarLevel = 100;

//   return "You, the almighty " + teaMaker.name + " now have a sugar level of " + teaMaker.sugarLevel;

// };

// var retrieveWater = function(character, waterWell) {
//   waterWell.waterLevel = 0;
//   character.waterLevel = 100;

//   return "You, the almighty " + teaMaker.name + " now have a water level of " + teaMaker.waterLevel;
// };

// //Function Calls
// console.log(displayStatus(teaMaker));

// console.log(pullTeaLeaves(teaMaker, teaPlant));
// console.log(displayStatus(teaMaker));

// console.log(milkCow(teaMaker, cow));
// console.log(displayStatus(teaMaker));

// console.log(extractSugarCaneJuice(teaMaker, sugarCane));
// console.log(displayStatus(teaMaker));

// console.log(retrieveWater(teaMaker, waterWell));
// console.log(displayStatus(teaMaker));

// for (var prop in teaMaker) {
//   if(teaMaker.hasOwnProperty(prop)) {
//     if(teaMaker[prop] === 100) {
//       console.log(prop + " is good to go!");
//     }
//   }
// };

// Refactored Code === work in progress; if statements are not fully functional with user input; also way too many alerts. Will turn alerts into html/jquery functions

// Have displayStatus iterate through object
// Let user specify quantity

//Objects
var teaMaker = {
  name: "Artisan Tea Guru",
  favoriteTea: "Grated Ginger",
  teaLeafCount: 0,
  milkLevel:  0,
  sugarLevel: 0,
  waterLevel: 0
};

var teaPlant = {
  teaLeafCount: 100
};

var cow = {
  milkLevel: 100
}

var sugarCane = {
  sugarLevel: 100
};

var waterWell = {
  waterLevel: 100
};

//Functions
var displayStatus = function(character) {
  for (var prop in character) {
    if (character.hasOwnProperty(prop)) {
      console.log(prop + ": " + character[prop]);
    };
  };
};

var pullTeaLeaves = function(character,teaPlant, quantity) {

  if (quantity < teaPlant.teaLeafCount) {
      teaPlant.teaLeafCount -= quantity;
      character.teaLeafCount += quantity;
  } else if (quantity === teaPlant.teaLeafCount) {
      teaPlant.teaLeafCount -= quantity;
      character.teaLeafCount += quantity;
      alert("Damn you wiped that tea plant clean!");
  } else {
    alert("The tea plant doesn't even have that many leaves! Please choose a lower quantity.");
  };

  alert("You, the almighty " + teaMaker.name + " have a leaf count of " + teaMaker.teaLeafCount);
};

var milkCow = function(character, cow, quantity) {
  if (quantity < cow.milkLevel) {
      cow.milkLevel -= quantity;
      character.milkLevel += quantity;
  } else if (quantity === cow.milkLevel) {
      cow.milkLevel -= quantity;
      character.milkLevel += quantity;
      alert("Damn you wiped that cow clean!");
  } else {
    alert("The cow doesn't even have that much milk! Please choose a lower quantity.");
  };

  alert("You, the almighty " + teaMaker.name + " have a milk level of " + teaMaker.milkLevel);
};

var extractSugarCaneJuice = function(character, sugarCane, quantity) {
   if (quantity < sugarCane.sugarLevel) {
      sugarCane.sugarLevel -= quantity;
      character.sugarLevel += quantity;
  } else if (quantity === sugarCane.sugarLevel) {
      sugarCane.sugarLevel -= quantity;
      character.sugarLevel += quantity;
      alert("Damn you wiped that sugar cane clean!");
  } else {
    alert("The sugar doesn't even have that much sugar! Please choose a lower quantity.");
  };

 alert("You, the almighty " + teaMaker.name + " have a sugar level of " + teaMaker.sugarLevel);

};

var retrieveWater = function(character, waterWell, quantity) {
    if (quantity < waterWell.waterLevel) {
      waterWell.waterLevel -= quantity;
      character.waterLevel += quantity;
  } else if (quantity === waterWell.waterLevel) {
      waterWell.waterLevel -= quantity;
      character.waterLevel += quantity;
      alert("Damn you wiped that water well clean!");
  } else {
    alert("The well doesn't even have that much water! Please choose a lower quantity.");
  };

  alert("You, the almighty " + teaMaker.name + " have a water level of " + teaMaker.waterLevel);
};

// REALLY repeating myself here but got sick over the weekend so didn't have a chance to refactor fully

var playGame = function(character) {

  var userInput = prompt("Please pick a quantity between 1 and 100 for number of leaves");
  var quantity = parseInt(userInput);
  pullTeaLeaves(character,teaPlant,quantity);

  var userInput = prompt("Please pick a quantity between 1 and 100 for amount of milk");
  var quantity = parseInt(userInput);
  milkCow(character, cow, quantity);

  var userInput = prompt("Please pick a quantity between 1 and 100 for amount of sugar");
  var quantity = parseInt(userInput);
  extractSugarCaneJuice(character, sugarCane, quantity);

  var userInput = prompt("Please pick a quantity between 1 and 100 for amount of water");
  var quantity = parseInt(userInput);
  retrieveWater(character, waterWell, quantity);

};

playGame(teaMaker);
displayStatus(teaMaker);


// Reflection
// What was the most difficult part of this challenge?
    // I'd say the most difficult part was incorporating user input into the game; it involved accounting for various conditions that I didn't get a chance to fully code out, so the game is incomplete in that sense.
// What did you learn about creating objects and functions that interact with one another?
    // Once you have the objects created, it's fairly straightforward to make functions that interact with the objects and have the objects interact with each other. When putting all the individual functions into one playGame function, I had to keep track of the arguments for all the functions.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
    // My game is fairly simple so there weren't any fancy built-in JS methods used other than the almighty for loop and if/else statements. The for loop was used to display the status of the player in a presentable way.
// How can you access and manipulate properties of objects?
    // Accessing and maniplating properties of objects is similar to working with hashes in Ruby; you use the keys and values to do what you want to the objects.
