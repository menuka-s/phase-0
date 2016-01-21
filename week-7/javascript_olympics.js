 // JavaScript Olympics

// I paired [with: Coline Forde] on this challenge.

// This challenge took me [.75] hours.

// Warm Up

//Bulk Up

var add_win = function (athletes_array) {
  for (var index = 0; index < athletes_array.length; index++) {
    athletes_array[index].win = athletes_array[index].name + " won the " + athletes_array[index].event + "!";
    console.log(athletes_array[index].win);
  }
  
}

//Driver Code
// var mike = {name: "Mike Smith", event: "Men's swimming"};
// var sarah = {name: "Sarah", event: "Ladies running"};
// var my_array = [sarah, mike];
// add_win(my_array);


// Jumble your words
var reverse = function(words) {
 return words.split('').reverse().join('');
}

//Driver Code
// var word = "hello how are you";
// console.log(reverse(word));





// 2,4,6,8
var even_numbers = function (num_array) {
  var new_array = []
  for (var i = 0; i < num_array.length; i++) {
    if (num_array[i] % 2 === 0) {
      new_array.push(num_array[i]);
    }
  }
  return new_array;
}

//Driver Code
// var arr = [1,2,3,4,5,6,7,8]
// console.log(even_numbers(arr))




// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name; 
  this.age = age; 
  this.sport = sport; 
  this.quote = quote;
};

//Driver Code  
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// Objects was the main one. My partner and I each thought about a different way to do release 1, or at least had a different interpretation of it. Once we started working on it, we realize we basically had the same idea and it was just the Object syntax that was messing with us. 

// What are constructor functions?
// A constructor function is another way of creating an object. It will set up some prerequisite values or do some things before the object is actually created though, unlike literal notation. This is also helpful when you need to make multiple instances of an object with different information.

// How are constructors different from Ruby classes (in your research)?
// They don't have an initialize method like we need in Ruby Classes. Instead we use the .this notation for initialization purposes.  
