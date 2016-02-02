// DOM Manipulation Challenge


// I worked on this challenge [Mike Pintar].


// Add your JavaScript calls to this page:

// Release 1:

var release0div = document.getElementById("release-0");  
release0div.className += "done";



// Release 2:

document.getElementById("release-1").style.display = "none";


// Release 3:

document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";


// Release 4:

document.getElementById("release-3").style.backgroundColor = "955251";


// Release 5:

var release4 = document.getElementsByClassName("release-4");
for (var i=0; i<release4.length; i++){
  release4[i].style.fontSize = "2em";
}

// Release 6:

var release5 = document.getElementById("hidden");
document.body.appendChild(release5.content.cloneNode(true));


// Reflection:

// What did you learn about the DOM?
// A lot of stuff. I had no prior experience with the DOM so this was all new to me.
// The DOM allows us to create dynamic things with code. 
// In this challenge I learned how to manipulate it using JavaScript using various new methods. 

// What are some useful methods to use to manipulate the DOM?
// .getElementById is pretty useful. Anything with styling would need something with .style and some child method.