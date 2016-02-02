// 9.2.2 Translate Ruby to JavaScript

// The challenge I'll translate is the ruby review challenge from last week.
// For that challenge I chose the fibonacci verifier. 
// Basically I will have a number and check if that is a number from the fibonacci sequence.

// Pseudocode
// Input: number
// Output: True or False if number is Fibonacci number

// Steps:
// There exists an equation that can be used: 
// if the one or both results of 5(n^2) +/- 4 is a perfect square, then the number is a fibonacci number.

// 1. I will create a method that accepts a number
// 2. Create two variables for each equation result (notice there are + or - results)
// 3. Figure out how to get a square root for both variables.
// 4. Check if square root value is a whole number for both variables.
// 5. If one result is, then return true, else return false.

// Initial Solution

// function is_fibonacci(number) {
// 	var num1 = 5 * (number * number) + 4;
// 	var num2 = 5 * (number * number) - 4;
// 	if (Math.sqrt(num1) == Math.floor(Math.sqrt(num1))){
// 		return true;
// 	} else if (Math.sqrt(num2) == Math.floor(Math.sqrt(num2))) {
// 		return true;
// 	} else {
// 		return false;
// 	}
// }

// Refactored solution
function is_fibonacci(number) {
	var num1 = 5 * Math.pow(number, 2) + 4;
	var num2 = 5 * Math.pow(number, 2) - 4;
	if (Math.sqrt(num1) == Math.floor(Math.sqrt(num1))){
		return true;
	} else if (Math.sqrt(num2) == Math.floor(Math.sqrt(num2))) {
		return true;
	} else {
		return false;
	}
}

// Reflection

// What concepts did you solidify in working on this challenge? 
// How to use some Math functions in JavaScript such as .sqrt, .floor, and .pow.

// What was the most difficult part of this challenge?
// So while my solution is fairly simple, there is a problem when the number becomes really big (like 20 digits). 
// The computer makes an approximation for what this number is. That means my solution fails for huge numbers. 
// The thing is that I tried just outputting my number variable at the beginning for a huge number and that wasn't the same as my input.
// It looks like I will need to do more research into how number variables work in JavaScript.

// Did you solve the problem in a new way this time?
// I used the same formula as my refactored solution last time. However, I didn't know what to use instead of BigDecimal in Ruby.
// BigDecimal helped with some of the approximation problems that I talked about above.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// Well my initial solution was very different last time. I used an array and calculated each value up to my given number.
// This solution isn't as complex.