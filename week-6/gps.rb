# Your Names
# 1) Angelika
# 2) Tyler

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

# # creates a method called serving_size_calc which accepts two arguements, "item_to_make and num_of-ingredients
# def serving_size_calc(item_to_make, num_of_ingredients)
#   # assigns a hash to library with items and the ingredients neccessary to create each item.
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   # creating an error counter and setting initial value to 3.
#   error_counter = 3

#   # check to see if the library[food] is not equal to nil if so decrement the error counter, if it is equal to nil raise Argument error  
#   library.each do |food|
#     puts "food: #{food}"
#     print "library[food]: "
#     p library[food]
#     puts "library[item_to_make]: #{library[item_to_make]}"
#     puts; puts
    
#     if library[food] != library[item_to_make]
#       error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end
#   # lines 33 - 35 checks the library hash values for each items quantity. 
#   serving_size = library.values_at(item_to_make)[0]
#   remaining_ingredients = num_of_ingredients % serving_size

#   # If there are no remaining ingredients return the first sentence, if there is a remainder of ingredients return the second sentence
#   case remaining_ingredients
#   when 0
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

def serving_size_calc(item_to_make, num_of_ingredients)
  recipe = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  
  recipe.each do |food|
    if recipe.include?(item_to_make) == false
      raise ArgumentError.new("#{item_to_make} is not a valid input")
    end
  end

  ingredients_needed = recipe[item_to_make]
  remaining_ingredients = num_of_ingredients % ingredients_needed

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / ingredients_needed} of #{item_to_make}"
  elsif num_of_ingredients < ingredients_needed
    return "You don't have enough ingredients for that!"
  else
    return "Calculations complete: Make #{num_of_ingredients / ingredients_needed} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 6)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

=begin

What did you learn about making code readable by working on this challenge?
- After working on this challenge I learned that more concise variables and less confusing logic makes for better code. Not so much from a working standpoint, but more of a readable and logic stand point.
Did you learn any new methods? What did you learn about them?
- I learned about .values_at method. And how it returns an array of hash values.
What did you learn about accessing data in hashes? 
- I learned that you don't always need to look up a value at a specific key everytime you want that information.
What concepts were solidified when working through this challenge?
- The best that I could say that got solidified was the usage of include?. I have used it before but that was for strings and arrays so it was nice to see it used for a hash.

=end