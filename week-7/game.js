// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Make a basketball by selecting the correct arc of the basketball shooter
// Goals: Make the basketball into the hoop
// Characters: Basketball Player
// Objects: Player (shot success), attributes, basketball hoop
// Functions: Arc low, medium or high

// Pseudocode
//Declare shooter that will include shots made and missed
//Add different objects to 'shooter' to provide shot arc, and jump height
//Declare a 'basetball hoop distance' object and give it a random position of feet away from player (5-30 feet)
//Choose the correct arc and jump height realative to how far away the shooter is from the hope
//Check to see if the ball would go in the basket
//If the ball goes in you win!
//

// Initial Code
// ===========NOT A WORKING CODE WHATSOEVER=================
// var shooter = {
// arc: 0,
// // shot: 0,
// shot_made: false,
// };
// shot_power: function(shot_power) {
//   if(shot_power === 'high'){
//     shooter.shot += 30;
//   }
//   else if(shot_power === 'medium'){
//     shooter.shot += 20;
//   }
//   else if(shot_power === 'low'){
//     shooter.shot += 10;
//   }


// var hoop_distance = Math.floor((Math.random() * 30) + 1);

// console.log("The basketball hoop is " + hoop_distance + " feet away");

// var shooter = {
// arc: '',
// shot_made: false,
// shooters_arc: function(shot_arc) {
//   if(shot_arc === 'high'){
//     shooter.arc += 'high';
//   }
//   else if(shot_arc === 'medium'){
//     shooter.arc += 'medium';
//   }
//   else if(shot_arc === 'low'){
//     shooter.arc += 'low';
//   }}}



// if ((hoop_distance >= 21 && hoop_distance <= 30) && shooter.arc === 'high') {
//     console.log("Buckets!");
//   }

// else if ((hoop_distance >= 11 && hoop_distance <= 20) && shooter.arc === 'med') {
//     console.log("Buckets!");
// }
// else if ((hoop_distance >= 1 && hoop_distance <= 20) && shooter.arc === 'low') {
//     console.log("Buckets!");
// }

// shooter.shooters_arc('med');




// }
// //Display how far away the hoop is
// console.log("The hoop is " + player.posX + "," + player.posY);

// //After every move, check if the player is near the dragon or the gold
// if(player.posX === dragon.posX && player.posY === dragon.posY){
// console.log("You encountered the dragon, Game Over!");
// }

// else if(player.posX === gold.posX && player.posY === gold.posY){
//   player.success = true;
//   player.gold = 100;
//   console.log("You reached the gold, you win!!");
// }

// }

// };






// Refactored Code

var shooter = {
shot_made: false,
};

var shooter_attr = {
arc: "",
};

var hoop = {
distance: Math.floor((Math.random() * 30) + 1),
};

//fuction to check if ball would go in at correct distance
function arc (shot_arc) {
  if (hoop.distance <= 10 && shot_arc === 'low') {
    shooter_attr.arc = 'low';
    shooter.shot_made = true;
  }
  else if ((hoop.distance <= 19 && hoop.distance >= 11) && shot_arc === 'medium') {
    shooter_attr.arc = 'medium';
    shooter.shot_made = true;
  }
  else if (hoop.distance >= 20 && shot_arc === 'high') {
    shooter_attr.arc = 'high';
    shooter.shot_made = true;
  }

};

console.log("You are " + hoop.distance + " feet from the basket");
console.log("Enter the correct arc of the basketball to make the basket!");
// User input

//arc (shot_arc)

//
if (shooter.shot_made === true) {
  console.log("You made sinked it bruh. Now hit the REAL court baller!");
}
else {
  console.log("You missed, no biggie. Keep firing away!");
}




// Reflection
/*
What was the most difficult part of this challenge?
I made this challenge completely more difficult that what it was. I was used Coderpad and was flustered with the return console. I literally spent 6 hours to trying to find a solution to get the on-screen console to not return undefined. I then realized my error because I was misinterpreting how the on-screen console works.  In that point of time, I had already invested 5-10 hours and I said no more. I just wanted an MVP.

What did you learn about creating objects and functions that interact with one another?
It can be tedious and mentally draining if you’re not competent. I learned how the order of calling function and creating objects is vital to working code.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
Unfortunately, no. This initial solution pushed me to my mental limits, nevertheless actually refactoring and tuning up a better product.

How can you access and manipulate properties of objects?
You can access properties with a dot or square brackets. You use the dot to directly fetch the property value, and the square method actually evaluates the expression and uses the result. After you decide if you wan to use a dot or square brackets, you set it equivalent to an object.
*/
