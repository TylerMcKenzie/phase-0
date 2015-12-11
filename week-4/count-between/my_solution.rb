# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  similarities = []
	a, b = lower_bound.to_i, upper_bound.to_i 
	range = (a..b).to_a
	similarities = list_of_integers & range
	h = list_of_integers - similarities
	f = h + list_of_integers
	if list_of_integers[a..b] == 0
		0
	elsif f == list_of_integers
		f.length
	elsif a == b
		list_of_integers.length
	else
		similarities.length		
	end
end