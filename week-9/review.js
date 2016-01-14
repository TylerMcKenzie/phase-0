// Pseudocode
/*

Create empty list
add item and quantity
remove item
Update item quatities
View the list

*/


var groceryList = {};

groceryList.add = function(item, amount) {
  groceryList[item] = amount;
}
groceryList.delete = function(item) {
  delete groceryList[item];
}
groceryList.update = function(item, update) {
  groceryList[item] = update;
}
groceryList.view = function() {
  console.log("You have this on your list: ");
  for (var item in groceryList){
    if (typeof groceryList[item] !== 'function'){
      console.log (item, "--", groceryList[item]);
    }
  }
}

// Driver
groceryList.add("banana", 2);
// console.log(groceryList);
groceryList.update("banana", 5);
// console.log(groceryList);
groceryList.view();
groceryList.delete("banana");
groceryList.view();
/*

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
-I solidified adding functions to an object to create callable properties of that abject.

What was the most difficult part of this challenge?
-The most difficult part was making sure that the information of each function was passed from property to property

Did an array or object make more sense to use and why?
-Object made better sense as the properties can be directly accessed to update the list.

*/