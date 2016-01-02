
// As the user I'd like to input a list of numbers
var list = []

// Now I want to perform several different statistical calculations with this new program.
// I don't need all three calculations to happen at once--instead I want to specify the list of numbers and then perform the specific calculation that I want on that list.  
var math = {
// As the user I would like to calculate the sum of the numbeers  
  sum: function(list){
    return list.reduce( (prev, curr) => prev + curr );
  },
// Also I'd like to calculate the mean (aka average) of the list 
  mean: function(list){
    var average = math.sum(list)/list.length;
    return average;
  },
// Lastly, I would like to calculate the median (aka middle value of the list).
  median: function(list){
    list = list.sort( function(a,b) {return a - b;} );
    var half = parseInt(list.length/2);
    return list.length % 2 == 1 ?
    list[half] :
    (list[half] + list[half - 1])/2.0;
  }

}