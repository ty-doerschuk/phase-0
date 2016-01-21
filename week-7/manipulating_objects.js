// Manipulating JavaScript Objects

// I worked on this challenge: [by myself, with: ]

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
// __________________________________________
// Write your code below.











// __________________________________________
// Reflection: Use the reflection guidelines
//
//
//
//
//
//


// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  ((adam = {}) instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  ((adam.name = "Adam") === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  ((terah.spouse = adam) === adam),
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  (terah.weight = 125) === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  (terah.eyeColor = undefined) === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  (terah.spouse.spouse = terah) === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  ((terah.children = {}) instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  ((terah.children.carson = {}) instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  (terah.children.carson.name = "Carson") === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  ((terah.children.carter = {}) instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  (terah.children.carter.name = "Carter") === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  ((terah.children.colton = {}) instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  (terah.children.colton.name = "Colton") === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  (adam.children = terah.children) === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)

// Reflection
// What tests did you have trouble passing? What did you do to make it pass? Why did that work?
// The first few tests were difficult because I had hard time deciphering what JS wanted. I was changing around the original value too much because I was digging too deep. Everything passed, but I am clueless of why one of the values returns ‘Circular’ on the console. I spent a good amount of time to figure that out, but gave up due to time demands.

// How difficult was it to add and delete properties outside of the object itself?
// It’s pretty easy, but then again, the assignment holds your hand inputting new proprieties.

// What did you learn about manipulating objects in this challenge?
// Not to dig too deep into assigning values, try to keep it simple for readability and comprehension.
