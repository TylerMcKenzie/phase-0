
# create a new (empty) list
# add an item and optional quantity
# remove an item list
# Update quantity
# Print

# view the list


# Method create_list
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")

# steps: 
# create new list 
# LOOP Through Items on List
# # If Item already exists
#     Add 1 to the quantity
#  Else 
#    it creates it with quantity 1
# End IF
# End Loop
# - call the 'print_list' method to display the list.
# output:nothing


# Method to add an item to a list - add_item
# input: item name and optional quantity
# steps: check if item already exists
#  If Item already exists
#     Add 1 to the quantity
#  Else 
#    it creates it with quantity 1 if no quantity, quantity if there
# End IF
# 
# output: nothing

# Method to remove an item from the list
# input: item name
# steps: Checks if item exists on list
# If it exists
#  Delete Item
# Print "item" deleted
# Else 
# print "item" is not on list on screen.
# output:

# Method to update the quantity of an item
# input: item name and quantity
# steps: Check if item Exists
#         If it exists
#           change quantity of item
#           Print quantity item now 
#         Else
#           Print item doesn't exist. 

# output: nothing

# Method to print a list and make it look pretty
# input: nothing
# steps:
#     Loop through list
#     print item and quantities
#     End Loop
# output: nothing




# INITIAL CODE:
# -------------


def initialize_list(desired_start_items)
  
  arr = desired_start_items.split(' ')

  # The each loop will run once for every element in the array.
  arr.each do |item_name|
    add_item(item_name) # this will be updating $list_items
  end
  
  display_list
end

# my_string
# my_string.split(' ') => array

# array.each do |item_name|
  
  # Array#include?(element)
  
def add_item(item_name, qty = 1)
# For each item, check if the item already exists in the hash.
  if $list_items.include?(item_name)
    # Increase the quattiy for that item
    $list_items[item_name] += qty
  else
    # Add a new key value pair
    $list_items[item_name] = qty
  end
end

def remove_item(item_name)
  if $list_items.include?(item_name)
    $list_items.delete(item_name)    
  else
    puts "#{item_name} not found"
  end
  display_list
end

def update_quantity(item_name, qty)
    if $list_items.include?(item_name)
      $list_items[item_name] = qty
    else
      puts "#{item_name} not found"
  end
  display_list
end

def display_list
  puts "Grocery List"
  puts "____________"
  $list_items.each { |item_name,qty| puts "#{item_name}: #{qty}"}
  puts ""
end





# DRIVER CODE:
# -----------

desired_starting_items = "apple bananas oranges"

$list_items = {}
initialize_list(desired_starting_items)

add_item("apple", 1)
display_list
# => {"Apples" => 1}

=begin Reflect
What did you learn about pseudocode from working on this challenge?
  -I learned that pseudocode is a good way to communicate to others when coding.
What are the tradeoffs of using Arrays and Hashes for this challenge?
  -The tradeoffs to using an array versus hash for this assignment is that finding what is in the list would be more difficult because everything is a numerical index versus the object indexing done by hashes.
What does a method return?
  -Anything that you want it to return
What kind of things can you pass into methods as arguments?
  -You can pass objects, arrays, variables, and even other methods
How can you pass information between methods?
  -You can make global variables that can be passed from method to method 
What concepts were solidified in this challenge, and what concepts are still confusing?
  -The concept of using methods within methods was really solidified in this section. I am perhaps still a little sketchy on setting default values for variables within the definition of a method

=end
