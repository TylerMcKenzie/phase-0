# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!
  a = list_of_nums.length
  
  	loop do 
  		swapped = false
  		
  		(a-1).times do |i|
  			if list_of_nums[i].length > list_of_nums[i+1].length
  				list_of_nums[i], list_of_nums[i+1] = list_of_nums[i+1], list_of_nums[i]
  				swapped = true 
  			end
  		end

  		break if not swapped
  	end
  	smallest = list_of_nums[0]
  	smallest


end
p smallest_integer([8,4,52,7,9,2,6])