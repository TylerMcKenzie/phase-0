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
