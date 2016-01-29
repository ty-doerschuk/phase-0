// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
input object votes
ouput bobs total votes for president
iterate through votes objects
  IF votes.'voter'.president = bob
  push to votecount.president[bob] = 3
*/

// __________________________________________
// Initial Solution
// var presidentVotes = [];
// var vicePresidentVotes = [];
// var secretary = [];
// var treasurer = [];

// for (var key in votes) {
//    if (votes.hasOwnProperty(key)) {
//       var obj = votes[key];
//      presidentVotes.push(obj.president);
//      vicePresidentVotes.push(obj.vicePresident);
//      secretary.push(obj.secretary);
//      treasurer.push(obj.treasurer);
//         // for(var i = 0; i < obj.length; i++) {
//         //   var ballot = obj[i];
//         //   console.log(obj[i])
//         // }
//     }
// }

// for(var i = 0; i < presidentVotes.length; i++) {
//       if(!voteCount.president[presidentVotes[i]]) {
//         voteCount.president[presidentVotes[i]] = 0;
//         voteCount.president[presidentVotes[i]]++;
//       }
//       else {
//         voteCount.president[presidentVotes[i]]++
//       }
// }

// for(var i = 0; i < vicePresidentVotes.length; i++) {
//       if(!voteCount.vicePresident[vicePresidentVotes[i]]) {
//         voteCount.vicePresident[vicePresidentVotes[i]] = 0;
//         voteCount.vicePresident[vicePresidentVotes[i]]++;
//       }
//       else {
//         voteCount.vicePresident[vicePresidentVotes[i]]++
//       }
// }

// for(var i = 0; i < secretary.length; i++) {
//       if(!voteCount.secretary[secretary[i]]) {
//         voteCount.secretary[secretary[i]] = 0;
//         voteCount.secretary[secretary[i]]++;
//       }
//       else {
//         voteCount.secretary[secretary[i]]++
//       }
// }

// for(var i = 0; i < treasurer.length; i++) {
//       if(!voteCount.treasurer[treasurer[i]]) {
//         voteCount.treasurer[treasurer[i]] = 0;
//         voteCount.treasurer[treasurer[i]]++;
//       }
//       else {
//         voteCount.treasurer[treasurer[i]]++
//       }
// }

// function mode(array)
// {
//     if(array.length == 0)
//       return null;
//     var modeMap = {};
//     var maxEl = array[0], maxCount = 1;
//     for(var i = 0; i < array.length; i++)
//     {
//       var el = array[i];
//       if(modeMap[el] == null)
//         modeMap[el] = 1;
//       else
//         modeMap[el]++;
//       if(modeMap[el] > maxCount)
//       {
//         maxEl = el;
//         maxCount = modeMap[el];
//       }
//     }
//     return maxEl;
// }

// officers.president = (mode(presidentVotes))
// officers.vicePresident = (mode(vicePresidentVotes))
// officers.treasurer = (mode(treasurer))
// officers.secretary = (mode(secretary))







// __________________________________________
// Refactored Solution
var presidentVotes = [];
var vicePresidentVotes = [];
var secretaryVotes = [];
var treasurerVotes = [];

for (var key in votes) {
   if (votes.hasOwnProperty(key)) {
      var obj = votes[key];
     presidentVotes.push(obj.president);
     vicePresidentVotes.push(obj.vicePresident);
     secretaryVotes.push(obj.secretary);
     treasurerVotes.push(obj.treasurer);
    }
}

function voteTally (candidateTallyArray, candidateTallyObject) {
  for (var i in candidateTallyArray) {
    if (!candidateTallyObject[candidateTallyArray[i]]) {
      candidateTallyObject[candidateTallyArray[i]] = 0;
      candidateTallyObject[candidateTallyArray[i]]++;
    }
    else {
      candidateTallyObject[candidateTallyArray[i]]++;
    }
  }
  return candidateTallyObject
}

voteTally (presidentVotes, voteCount.president);
voteTally (vicePresidentVotes, voteCount.vicePresident);
voteTally (secretaryVotes, voteCount.secretary);
voteTally (treasurerVotes, voteCount.treasurer);

function mode (candidtateTallyArray) {
    var modeMap = {};
    var maxEl = candidtateTallyArray[0];
    var maxCount = 1;
      for (var i in candidtateTallyArray) {
        var el = candidtateTallyArray[i];
        if(!modeMap[el]) {
          modeMap[el] = 1;
        }
        else {
          modeMap[el]++;
        }
        if (modeMap[el] > maxCount) {
        maxEl = el;
        maxCount = modeMap[el];
        }
    }
    return maxEl;
}

officers.president = (mode(presidentVotes))
officers.vicePresident = (mode(vicePresidentVotes))
officers.treasurer = (mode(treasurerVotes))
officers.secretary = (mode(secretaryVotes))







// __________________________________________
// Reflection

/*
What did you learn about iterating over nested objects in JavaScript?
It’s a very tedious process. You need to take into account that properties values need special code in order to get through to the nested objects and properites.

Were you able to find useful methods to help you with this?
Not really. MDN and Stackoverflow for JS are overwhelming. It is still hard for me to translate the dialog and apply it to my code.

What concepts were solidified in the process of working through this challenge?
How to push nested elements into a variable array.
*/




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)