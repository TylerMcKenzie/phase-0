# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# # 0. Pseudocode

# # What is the input?
# array, min_size, padding
# # What is the output? (i.e. What should the code return?)
# array padded according to min_size
# # What are the steps needed to solve the problem?
# Destructive
# determine difference between array and min_size
# store difference
# If min_size < array 
#   return array
# else

# loop difference
#   add padding
#   close 
#   return value 

#_____________________________

# Make a copy of the original array
# loop difference
#   add padding
#   close 
#   return value
#

  
 
# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  iter = min_size - array.length
  if min_size <= array.length
    return array
  else
    iter.times {array << value}
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  self_copy = array.clone
  
  iter = min_size - self_copy.length
  if min_size <= self_copy.length
    return self_copy
  else
    iter.times {self_copy << value}
  end
  return self_copy
end

  


# 3. Refactored Solution



# 4. Reflection
=begin

Were you successful in breaking the problem down into small steps?
-Yes I would say that my pair was very good at starting with small steps. 
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
-Once our pseudocode was finished we had almost no problem to impliment. Didn't have many issues with our code, mainly we took a bit to set up the clone array(just looking up how to do it)
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
-I think that my solution was successful at first because we approached each 
When you refactored, did you find any existing methods in Ruby to clean up your code?
-Given our paramaters we looked any couldn't think of a refactored version of our code.
How readable is your solution? Did you and your pair choose descriptive variable names?
-Our solution is pretty readable, we could have mabe used more descriptive variables but that may be all
What is the difference between destructive and non-destructive methods in your own words?
-The difference between the two is that destructive overwrites the array or hash and a non-destructive does not overwrite the original array or hash
=end