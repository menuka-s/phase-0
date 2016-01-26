/*
Gradebook from Names and Scores
I worked on this challenge [with:Tim Kelly]
This challenge took me [1] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

var gradebook = {};

// for (var i = 0; i < students.length; i++) {
//   gradebook[students[i]] = {};
//   gradebook[students[i]].testScores = scores[i];
// }

gradebook.addScore = function(name, score){
  gradebook[name].testScores.push(score); 
}

gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
};

/*
function average(numArray){
  var sum = 0;
  for (var i = 0; i < numArray.length; i++){
    sum += numArray[i];
  };
  return (sum / numArray.length)
}
*/
// __________________________________________
// Refactored Solution


for (index in students) {
  gradebook[students[index]] = {};
  gradebook[students[index]].testScores = scores[index];
}

function average(numArray){
  var sum = numArray.reduce(function(a,b){
    return a + b;
  });
  return (sum / numArray.length);
}


// __________________________________________
// Reflect


// What did you learn about adding functions to objects?
// I didn't realize at first that we could easily add functions to objects in the same way we add properties, but it makes sense. Otherwise accessing data within the object for the function was pretty easy.

// How did you iterate over nested arrays in JavaScript?
// Well we just iterated through the parent array with a for loop, which was pretty easy. We didn't need to access values in the nested arrays.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// We tried using .reduce to sum all of the values in the array. 
// .reduce will reduce an array to a single value using some provided function. In our case we had the array add each element together by designating variables a and b and return the sum of a and b for every iteration.
// (I believe reduce will name the first two elements as a and b, combine and replace them and then iterate again will summing the first two elements over and over)





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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)