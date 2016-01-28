// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Mike Pintar
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
Input: nested Object of votes
Output: vote results object
Steps:
1. Iterate through the vote object, through each person's ballot, which is itself an object.
2. Through that ballot object, iterate through each property.
3. Check to see if that name is already initialized as a property of voteCount for that specific race, and if not, initialize to 1.
3. If it is initialized already, increment by 1.
4. Create a seperate for/in loop to iterate through all of the different race results and through each race object.
5. Identify the largest vote count and the candidate name attached to it, and add that to an officer's object for the final results.
*/

// __________________________________________
// Initial Solution


// for (var name in votes){
//   var voteObject = votes[name]
//   for (var voteName in voteObject){
//     var voter = voteObject[voteName]
//     if (voteName === "president"){
//       if (!voteCount.president.hasOwnProperty(voter)){
//         voteCount.president[voter] = 1;
//       }
//     else {
//       voteCount.president[voter] += 1;
//     }
//   }
//     if (voteName === "vicePresident"){
//       if (!voteCount.vicePresident.hasOwnProperty(voter)){
//         voteCount.vicePresident[voter] = 1;
//       }
//     else {
//       voteCount.vicePresident[voter] += 1;
//     }
//   }
//     if (voteName === "secretary"){
//       if (!voteCount.secretary.hasOwnProperty(voter)){
//         voteCount.secretary[voter] = 1;
//       }
//     else {
//       voteCount.secretary[voter] += 1;
//     }
//   }
//     if (voteName === "treasurer"){
//       if (!voteCount.treasurer.hasOwnProperty(voter)){
//         voteCount.treasurer[voter] = 1;
//       }
//     else {
//       voteCount.treasurer[voter] += 1;
//     }
//   }
//     }
// }

// for (var position in voteCount) {
//   var tempMax = 0;
//   for (var candidate in voteCount[position]){
//     if (voteCount[position][candidate] > tempMax){
//       tempMax = voteCount[position][candidate];
//       officers[position] = candidate;
//     }
//   }
// }






// __________________________________________
// Refactored Solution
for (var voter in votes){
  var ballot = votes[voter]
  for (var race in ballot){
    var candidate = ballot[race]
      if (!voteCount[race].hasOwnProperty(candidate)){
        voteCount[race][candidate] = 1;
      }
      else {
         voteCount[race][candidate] += 1;
      }

  }
}

for (var race in voteCount) {
  var tempMax = 0;
  for (var candidate in voteCount[race]){
    if (voteCount[race][candidate] > tempMax){
      tempMax = voteCount[race][candidate];
      officers[race] = candidate;
    }
  }
}

// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// From the methods we used, this follows a lot of the same logic as we used in Ruby for iterating through nested arrays. 
// We just used the "for (var element in object)" syntax 

// Were you able to find useful methods to help you with this?
// We needed to make sure to initialize the tally counts for each candidate, but at the same time make sure we don't initialize it to the same variable per iteration.
// To check if the object hasn't been initialized, we used .hasOwnProperty.

// What concepts were solidified in the process of working through this challenge?
// Iterating through nested objects was the main thing that I understood better.




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