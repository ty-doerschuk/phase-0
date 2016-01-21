// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var bicycle = "Surly Cross Check";
console.log(bicycle);

prompt("What is your favorite food", "...");
alert("Mine too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var number = 0

while (number <= 100) {
  var word = "";
  number += 1;
  if (number % 3 == 0)
    word += "Fizz";
  if (number % 5 == 0)
    word += "Buzz";
  console.log(word || number);
}



// Functions

// Complete the `minimum` exercise.
var min = function(x, y) {
  if (x < y)
    return x;
  else
    return y;
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Ty Doerschuk",
  age: 29,
  favorite_foods: ["pizza", "hamburger", "chips"]
  quirk : "Hates bananas that aren't prefectly ripe"
};
