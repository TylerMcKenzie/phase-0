// Separate Numbers with Commas in JavaScript **Pairing Challenge**



// I worked on this challenge with: .



// Pseudocode
/*
input: int
output: comma-separated number as string

convert int to string
iterate from the end, starting at (end-3), then insert comma every -4 chars until our index < 3

steps

int --> oldstring

newstring = ""

UNTIL oldstring length < 3 {
newstring = last 3 chars popped from oldstring + ',' + newstring
}

newstring = oldstring + ',' + newstring


*/
// Initial Solution

function separate_commas(int) {
  
  var oldArray = int.toString().split('');
  var newString = "";
  
  while (oldArray.length >= 3) {
    for (var i = 0; i < 3; i++) {
      newString = oldArray.pop() + newString;
    }; //pop 3 over
    newString = ',' + newString; 
  };
  
  newString = oldArray.join('') + newString;
  
  if (newString.charAt(0) == ',') {
    newString = newString.substring(1);
  }
  
  return newString;
  
  
}


console.log(separate_commas(123456789));

// Refactored Solution
 function separate_commas(int) {
    return int.toLocaleString();
}
console.log(separate_commas(123456789));



// Your Own Tests (OPTIONAL)

/*

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
- It was a little different than expected, still wrapping my brain around the concept of objects and how they can be utilized.

What did you learn about iterating over arrays in JavaScript?
-I learned that javascript has a lot of useful methods similar to ruby, not all but many.

What was different about solving this problem in JavaScript?
-If anything it was a little easier to separate the segments that I wanted.

What built-in methods did you find to incorporate in your refactored solution?
-After mush searching I found that using toLocaleString works absolutely beautifully in this context.

*/
