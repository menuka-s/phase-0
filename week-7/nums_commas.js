// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Mike Pintar.

// Pseudocode
//Input: An integer
//Output: A comma-separated number as a string

/*

1. Defining method that takes in an integer as an argument.
2. Convert integer to string, then reverse the string.
3. Define a counter variable and use while loop or use for loop.
4. In the loop, while the counter is less than the given string's length minus 3, 
    4a. Insert a comma at a postion 3 places after the counter index within the string.
    4b. Increment the counter by 4
5. Out of the loop, reverse the string.
6. Print it.


*/


// Initial Solution

// function separateComma (number) {
//   var num_comma = number.toString();
//   var num_comma = num_comma.split('').reverse().join('');
  
//   for (var counter = 0; counter < (num_comma.length - 3); counter += 4) {
//     num_comma = [num_comma.slice(0, counter + 3), ",", num_comma.slice(counter+3)].join('');
//   }

//   return num_comma.split('').reverse().join('');
  
// }



// Refactored Solution

function separateComma (number) {
  return number.toLocaleString() 
}



// Your Own Tests (OPTIONAL)

console.log(separateComma(123123402)); 


// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// We actually approached in the same way. We knew there were going to problems since there weren't the same built-in methods between the two languages, but we thought the logic would be familiar. 

// What did you learn about iterating over arrays in JavaScript?
// Our solution didn't include iterating over arrays, but we could have use a "for (var element in array)" but that is considered bad practice. Instead we can use a counter and loop through the array by index with either a while or for loop.

// What was different about solving this problem in JavaScript?
// Figuring out ways to accomplish things that similar methods in Ruby would. There is no reverse method for strings nor an insert method for arrays. For insert we could either slice and join (which we did) or splice the array. There is also a substr function that may have been helpful. 

// What built-in methods did you find to incorporate in your refactored solution?
// There is a built-in function for Numbers in JavaScript where we can convert an integer directly to a comma-separated string. The one downside is that it is only available in every web browser yet (Safari doesn't support it).

