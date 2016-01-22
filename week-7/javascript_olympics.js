
// // JavaScript Olympics

// // I paired with Tyler Doershuck on this challenge.

// // This challenge took me [#] hours.


// // Warm Up
// /* PC
// function that takes an array

// create an array
// function that takes the array an argument
// iterate through array to add 'win' property


// create a function
//   function accepts a string as argument
//   use method to reverse string
/*
create a function that accepts array argument
  iterate through array
  use modulus to determind even or odd
  put even into new array
  return new array
*/

// */

// // Bulk Up
// var olympic_array = [
//   {
//     name: "Sarah Hughes",
//     event: "Ladies Singles",
//   },
//  {
//     name: "Michael Phelps",
//     event: "Mens 100m Freestyle",
//   },
//   {
//     name: "Usain Bolt",
//     event: "Mens 100m Dash",
//   }
// ];
// // console.log(olympic_array)
// function add_won (array) {
//   for (var i = 0; i < array.length; i++)
//   {var add_prop = olympic_array[i].name + " won the " + olympic_array[i].event;
//   array[i].win = add_prop;
//   }
//  return olympic_array;
// }
// console.log(add_won(olympic_array))



// Jumble your words
// var string = "Reverse Me";


// function reverse(string)
// {return string.split("").reverse().join("");}

// console.log(reverse(string))


//function reverse(string) {}



// 2,4,6,8
// var numbers = [1,4,5,6,10,13,14];
// var return_array = [];

// function even(array) {
//   for (var i = 0; i < array.length; i++ ) {
//     if (array[i] % 2 === 0) {
//        return_array.push(array[i]);
//       // return_array = array[i];
//     }

//   }
//    return return_array;
// }

// console.log(even(numbers))

// "We built this city"



var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Example can be run directly in your JavaScript console


function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
    };




// function myObject(what){
//     this.iAm = what;
//     this.whatAmI = function(language){
//         alert('I am ' + this.iAm + ' of the ' + language + ' language');
//     };
// };

/*
What JavaScript knowledge did you solidify in this challenge?
The for loop. My partner did a great job describing to me how it works. The three sections of data have confused me. It was nice to use it correctly.

What are constructor functions?
They are a function that can be used to create many objects of one type.

How are constructors different from Ruby classes (in your research)?
Ruby classes are more about methods and variables revelant to the data manipulation while constructors are able to create new data quickly.
*/