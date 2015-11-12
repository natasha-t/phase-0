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

//Objects
var teaMaker = {
  name: "Artisan Tea Guru",
  favoriteTea: "Scraped Ginger",
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
  juiceExtractLevel: 100
};

var waterWell = {
  waterLevel: 100
};

//Functions
var displayStatus = function(character) {
  return "Name: " + character.name + "\n" + "Favorite Tea: " + character.favoriteTea + "\n" + "Tea Leaf Count: " + character.teaLeafCount + "\n" + "Milk Level: " + character.milkLevel + "\n" + "Sugar Level: " + character.sugarLevel + "\n" + "Water Level: " + character.waterLevel;
};

var pullTeaLeaves = function(character, teaPlant) {
  teaPlant.teaLeafCount = 0;
  character.teaLeafCount = 100;

  return "You, the almighty " + teaMaker.name + " now have a leaf count of " + teaMaker.teaLeafCount;
};

var milkCow = function(character, cow) {
  cow.milkLevel = 0;
  character.milkLevel = 100;

  return "You, the almighty " + teaMaker.name + " now have a milk level of " + teaMaker.milkLevel;
};

var extractSugarCaneJuice = function(character, sugarCane) {
  sugarCane.juiceExtractLevel = 0;
  character.sugarLevel = 100;

  return "You, the almighty " + teaMaker.name + " now have a sugar level of " + teaMaker.sugarLevel;

};

var retrieveWater = function(character, waterWell) {
  waterWell.waterLevel = 0;
  character.waterLevel = 100;

  return "You, the almighty " + teaMaker.name + " now have a water level of " + teaMaker.waterLevel;
};

//Function Calls
console.log(displayStatus(teaMaker));

console.log(pullTeaLeaves(teaMaker, teaPlant));
console.log(displayStatus(teaMaker));

console.log(milkCow(teaMaker, cow));
console.log(displayStatus(teaMaker));

console.log(extractSugarCaneJuice(teaMaker, sugarCane));
console.log(displayStatus(teaMaker));

console.log(retrieveWater(teaMaker, waterWell));
console.log(displayStatus(teaMaker));

for (var prop in teaMaker) {
  if(teaMaker.hasOwnProperty(prop)) {
    if(teaMaker[prop] === 100) {
      console.log(prop + " is good to go!");
    }
  }
};

// Refactored Code

// Have displayStatus iterate through object
// Let user specify quantity






// Reflection
//
//
//
//
//
//
//
//