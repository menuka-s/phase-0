 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: 
// Overall mission: King Kong is attacking New York! It's up to you, the pilot, to defeat him with your plane!
// Goals: Defeat King Kong, don't die.
// Characters: Pilot, King Kong
// Objects: Pilot (health, hash of attacks with max damage possible, health packs), King Kong (health, hash of attacks with max damage possible)
// Functions: heal, attack damage, battle phase (driver code)

// Pseudocode
// 1. Declare "king_kong" object with a health and attack property. Attack property should hold a list of possible attacks with the max damage each attack could do.
// 2. Declare pilot object with similar health and attack properties as king kong. Also include a property that holds how many health packs (to heal) the pilot has left.
// 3. Create an attack function that targets the opponent's health. This attack function will deal damage equal to a random attack from each object's attack list. 
// 4. Create a heal function for the pilot. Heal the pilot if there are health packs remaining. Max health is 100.
// 5. Create some driver code. One possible option is to create a battle phase loop where king kong and the pilot try to do a little mini-game like guess a number between 1-100. 
// 		- Whoever is closest gets to do some action, such as attack (available to king kong and the pilot) or heal (only available to the pilot). Keep repeating the battle phase until one object's health property reaches 0.


// Initial Code

var game_over = false;

//Object 1
var king_kong = {
	name: "King Kong",
	health: 100,
	attack_hash: {smash: 20, jump_spin: 30, forward_throw: 15, punch: 5}
};

//Object 2
var pilot = {
	name: "Pilot",
	health: 100,
	attack_hash:{homing_missle: 20, machine_gun: 10, grenade_launcher: 15},
	total_health_packs: 5
};


//Function that will choose an attack from the attacker and inflict damage on the enemy
function attack(attacker, enemy){
	//Picks a random attack from the attacker to use
	attack_keys = Object.keys(attacker.attack_hash);
	random_attack_choice = attack_keys[Math.floor(Math.random() * attack_keys.length)];
	
	//Calculate's the opponent's health after the attack. 
	//If it reaches 0 or becomes a negative number, then adjust the health to 0 and change the boolean variable game_over to true to signify that the enemy lost.
	enemy.health -= attacker.attack_hash[random_attack_choice];
	if (enemy.health <= 0) {
		enemy.health = 0;
		game_over = true;
	}

	//Output
	console.log("They use " + random_attack_choice.toUpperCase().replace(/_/g, ' ') + " to deal " + attacker.attack_hash[random_attack_choice] + " damage!");
	console.log(enemy.name + "'s health is now " + enemy.health + ".");

	if (game_over == true) {
		console.log(attacker.name + " wins!"); 
	}
}

//Function that will heal the pilot
function heal() {
	if (pilot.total_health_packs == 0) {
		//The pilot can't do anything if they don't have health packs
		console.log("Can't heal,; no more health packs!");
	} else {
		if (pilot.health == 100) {
			//Can't have more than 100 health
			console.log("Can't use health pack; Pilot has max health!");
		} else if (pilot.health > 75) {
			pilot.health = 100;
			pilot.total_health_packs --;
			console.log("Pilot health has gone up to " + pilot.health.toString() + ".");
		} else {
			pilot.health += 25
			pilot.total_health_packs --;
			console.log("Pilot health has gone up to " + pilot.health.toString() + ".");
		}
	}
}

//Driver Code

var counter = 0;
while (game_over != true) {
	//Output what iteration of this loop we are on
	counter ++;
	console.log("\nMove " + counter + ":");
	
	//Figure out who gets to do an action. 
	//Mini-game time!
	//Pick random numbers for Kong, the Pilot, and the actual answer
	var rand_num = Math.floor(Math.random() * 100);
	var kong_guess = Math.floor(Math.random() *100);
	var pilot_guess = Math.floor(Math.random() * 100);

	//Whoever is the closest to the actual answer gets to do the action this move
	if (Math.abs(rand_num - kong_guess) < Math.abs(rand_num - pilot_guess)){
		//King Kong gets to attack
		console.log("King Kong finds an opportunity to attack!");
		attack(king_kong, pilot)
	} else if (Math.abs(rand_num - kong_guess) > Math.abs(rand_num - pilot_guess)){ 
		//The Pilot gets to either attack or heal themselves
		//The Pilot has a 20% chance of deciding to heal in this current implementation
		console.log("The Pilot gets ready to do something...");
		var rand_action_num = Math.floor(Math.random() * 5) + 1;
		if (rand_action_num != 1) {
			//Pilot gets to attack
			console.log("Attack!");
			attack(pilot,king_kong);
		} else {
			//Pilot gets to heal
			console.log("They decide to try to heal themselves");
			heal();
		}
	} else {
		//In case both guess a number that is at equal distance from the random number
		console.log("Both King Kong and the Pilot make a mistake. Proceed to next move...")
	}


}




// Refactored Code

//I'm just going to change the driver code to have prompts for when this isn't run with node in the console.
//I need to work more on the error checking for pilot_guess.


// var counter = 0
// while (game_over != true ){
// 	counter++;
// 	console.log("\nMove "+ counter + ":");

// 	console.log("Let's see who gets to do an action first.")
// 	var pilot_guess = prompt("Pick a number between 1 and 100");

// 	// if (typeof pilot_guess != "number" || pilot_guess <= 0 || pilot_guess >= 100) {
// 	// 	pilot_guess = prompt("Please pick a valid number.");
// 	// } 

// 	var rand_num = Math.floor(Math.random() * 100) + 1;
// 	var kong_guess = Math.floor(Math.random() *100) + 1;

// 	if (Math.abs(rand_num - kong_guess) < Math.abs(rand_num - pilot_guess)){
// 		console.log("King Kong finds an opportunity to attack!");
// 		attack(king_kong, pilot)
// 	} else if (Math.abs(rand_num - kong_guess) > Math.abs(rand_num - pilot_guess)){ 
// 		console.log("The Pilot gets ready to do something...");
// 		var user_action = prompt("Should the pilot 'attack' or 'heal'?");
// 		if (user_action = "attack") {
// 			attack(pilot, king_kong);
// 		} else if (user_action = "heal") {
// 			heal();
// 		} else {
// 			console.log("Invalid input. Let's just attack.")
// 			attack(pilot, king_kong);
// 		}
// 	} else {
// 		console.log("Both King Kong and the Pilot make a mistake. Proceed to next move...")
// 	}

// }




// Reflection
// What was the most difficult part of this challenge?
// Probably trying to think of an idea for a game. This challenge was very open-ended so I had lots of options. Once I thought of something it was very easy to code. I also had to work on balancing the two objects so King Kong wouldn't win everytime.

// What did you learn about creating objects and functions that interact with one another?
// Objects are very useful to store data and can easily be modified when needed. Accessing an element in my attack list was a little complicated so I had to figure out how to do that.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I didn't refactor my code like in previous challenges. I thought my initial solution was pretty readable as it was. 
// It was interesting trying to figure out how to get a random element in arrays. I thought JS would have a built-in method for this, but it does not. Instead I would basically use Math.random to pick a random number and then use that as an index in my array.
// Also Math.random itself is pretty interesting. I forgot that it picks a random number between 0 and 1. So I would have to mulitply that my a certain number and then use Math.floor to get a random integer value. 

// How can you access and manipulate properties of objects?
// We can either access the properties using strings such as object["property"] or we can do object.property and with both we can easily change the associated value if we want to.