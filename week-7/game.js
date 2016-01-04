/* 
Your previous Ruby content is preserved below:

Make a Game!

Pseudocode
Adventure Game

inputs: receive user commands to guide through the story
outputs: different story structured off user input
steps:

Initialize player
initialize player commands
give player options
put out story based on input.
end game.

*/
var playerOne = new Object();
var playerCommand = prompt("Type (begin) to start.", ">");
var welcome = "Welcome Traveler! You have been thrust into a strange world of magic and danger! Tread lightly or lose your life to it! Ready to (start)?";

if (playerCommand == "begin"){ 
	alert(welcome);
    playerCommand = prompt("Great! Just ahead are three paths. One path is a narrow path with vines and webs along the sides leading into what appears to be total darkness, you carry a light on your person. The second path quickly climbs steeply into the sky leading up to a range of snow-capped mountains, the air is thin and brisk. The third and final path leads to an open field with bright colored daisies and wispy looking clouds, all seems calm.", "Choose one.(first path, second path, third path)");

  switch(playerCommand) {      
    case 'first path':
      player = prompt("You enter the path and use your light. Upon further inspection the path dips down a few steps, revealing precious gems and a small group of what appears to be bugs amongst them. The bugs are small in size but great in number. They seem to be swarming on the rocks. What next?(Pick up Gems, Move on, Examine)");

      	switch(player) {
    	  case 'Pick up Gems':
      		alert("You stoop down to pick up the gems and the swarm shoots up your arm. It feels like a million tiny pin pricks as the black mass approaches your eye at an almost blinding speed. Ironically the speed blinded you. Everything is black now. You feel the crushing darkness on your body as the mass finishes you off. You have died.");
      	  case 'Move on':
      		alert("You blatantly ignore the bugs on the ground and step over them. Futher inspection of the path shows the remains of other travelers. You glance over their remains and see some of the bugs where the eyes of the skeletons should be. There is a light ahead. You exit the vines and webs. Unharmed. You live out your days on a mediocre wage and die alone.");
      	  case 'Examine':
      		alert("You bring your light closer to get a better look at the ground before you. The closer you get the more the bugs disperse. They continue to flee your light till only the gems remain. You take them with glee and live a long and fruitful life.");
        };
    case 'second path':
      	playerCommand = prompt("You start the long climb up the moutainside. The air grows thinner and thinner. You wish you brought warmer clothes as you lose feeling in your toes.", "(Keep Going)? or (Turn Back)?");
      	switch(player) {
          case 'Keep Going':
            	alert("You continue foolishly up the mountains side. To what end? Why even climb a mountain. Especially poorly dressed. The cold should've bothered you.");
          case 'Turn Back':
            	alert("You turn back avoiding the peril. This was a short journey.");
        };
    case 'third path':
      	alert("You walk out into the field. All is quiet. The sky is so clear some would say it had a diamond like quality. There is a woman here. She approaches you slowly, she says her name is Lucy. You are never seen again.");
	};
};

/*
What was the most difficult part of this challenge?
-The most difficult part of this challenge was deciding what direction I wanted to go in.

What did you learn about creating objects and functions that interact with one another?
-I learned that when creating branching paths the amount of information that can be processed is ridiculous.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
-I learned about the switch method which I used to refactor my if statements but I lost that data.

How can you access and manipulate properties of objects?
- You can add to them by simply adding .property to your object
*/
