// Group Project Week 7
// Accountability Group 9

// This challenge focuses on creating some functions that do some sort of calculation to an array of numbers. I don't know if we can assume that the array is already sorted from low to high.  I will try to descibe each function as a user case.


// 1. As the user, I want a function named "sum" that will return the sum of all elements in array. 
function sum(array) {
  return array.reduce((a,b) => a + b);
};


// 2. As the user, I want a function named "mean" that will return the average of all the elements in the array. 
function mean(array) {
  return sum(array) / array.length;
};


// 3. As the user, I want a function named "median" that will return the median of all elements in the array. Hint: if there is an array that has an even number of elements, return the average of the two middle elements.
function median(array) {
  var arr = array.sort(function(a, b){return a-b});
  if (arr.length % 2 === 0) {
    return mean([arr[arr.length/2], arr[(arr.length/2)-1]])
  } else {
    return arr[Math.floor(arr.length/2)]
  }


// Summary
// All tests passed! Great job team!