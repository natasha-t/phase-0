 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.

// Bulk Up
var sarahHughes = {
  name: "Sarah Hughes",
  event: "Figure Skating"
};

var serenaWilliams = {
  name: "Serena Williams",
  event: "Tennis"
};

var husseinBolt = {
  name: "Hussein Bolt",
  event: "Running"
}


var athletes = [sarahHughes, serenaWilliams, husseinBolt]

var win = function(athletes) {

   for (var i = 0; i < athletes.length; i++) {
      console.log(athletes[i].win = athletes[i].name + " wins " + athletes[i].event);
  };
};

//console.log(win(athletes));
//console.log(serenaWilliams);


// Jumble your words

var str = "Booyah!";

function reverse(str) {
  console.log(str.split('').reverse().join(''))
}

//reverse(str)


// 2,4,6,8

var nums = [1,2,3,4,5,6]

function evenCheck(number_array) {
  var evens = []
  for (var i = 0; i <= nums.length; i++) {
    if(i % 2 === 0) {
      evens.push(i);
    };
  };

  console.log(evens);

};

//console.log(evenCheck(nums));

//"We built this city"

function Athlete(name, age, sport, quote){
    this.name = name;
    this.sport = sport;
    this.quote = quote;
    this.age = age;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// What JavaScript knowledge did you solidify in this challenge?
    // We haven't really practiced iterating through arrays and objects in Javascript so this was challenge was good practice.
// What are constructor functions?
    // Constructor functions are functions that work nearly the same way as object literal functions except for a few differences. Constructor functions use the 'this' keyword for property names. Then to use a constructor function you must instantiate it by declaring a new Constructor function.
// How are constructors different from Ruby classes (in your research)?
    // Constructors are different in that they use the 'this' keyword and they can be used to build other objects, kind of like a template.