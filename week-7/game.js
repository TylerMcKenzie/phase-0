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
var part1 = "Welcome Traveler! You have been thrust into a strange world of magic and danger! Tread lightly or lose your life to it! Ready to (start)?";
var part2 = "";
var part3 = "";
var partEnd = "";
if (playerCommand == "begin"){ 
	playerCommand = prompt(part1, "What say you?");
  switch(playerCommand) {
    case 'start':
      playerCommand = prompt("Great! Just ahead are three paths. One path is a narrow path with vines and webs along the sides leading into what appears to be total darkness, you carry a light on your person. The second path quickly climbs steeply into the sky leading up to a range of snow-capped mountains, the air is thin and brisk. The third and final path leads to an open field with bright colored daisies and wispy looking clouds, all seems calm.", "Choose one.(first path, second path, third path)");
      case 'first path';
      	playerCommand = prompt("You enter the path and use your light. Upon further inspection the path dips down a few steps, revealing precious gems and a small group of bugs amongst them. The bug are small in size but great in number. They seem to be swarming on the rocks. What next? (Pick up Rocks, Move on, Examine Closer)" );
      case 'second path';
      	playerCommand = prompt();
      case 'third path';
      	playerCommand = promt();
}

}



