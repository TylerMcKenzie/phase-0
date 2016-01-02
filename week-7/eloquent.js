// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var Tyler = "So Smart :)"
console.log(Tyler)

// var userPrompt = prompt("What is your favorite food?");
// console.log("Your favorite food is "+ userPrompt + "." + " Mine too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// LoopingTriangle

var pound = ""
for(var i = 0; i <= 7; i++){
	console.log(pound += "#");
}
// =>  // #
	   // ##
	   // ###
	   // ####
	   // #####
	   // ######
	   // #######
	   // ########



// Functions

// Complete the `minimum` exercise.
function min(num1, num2){
	if(num1 < num2)
      return num1;
    else
      return num2;
}
console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10


// Data Structures: Objects and Arrays

// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = new Object();
me.name = "Tyler";
me.age = 20;
me.favFoods = ["Steak", "Brownies", "Grape JollyRanchers"];
me.quirk = "Left leg is longer than right."
console.log(me)