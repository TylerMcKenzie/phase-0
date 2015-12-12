# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# :The input will be and integer

# What is the output? (i.e. What should the code return?)
# :The output will be a string with the commas added

# What are the steps needed to solve the problem?
# the steps to solve will be the following:
# def separate_comma(int)
# 	convert the int to a string
# 	determine how long the string is to be able to add appropriate commas
# 	add the commas to the appropriate indexing
#   display the adjusted string

# 1. Initial Solution
def separate_comma(int)
  int_s = int.to_s
  int_l = int_s.length
  if int_l < 4 
    int_s
  elsif int_l >= 4 && int_l < 7
    int_s.insert(-4, ',')
  elsif int_l <= 8
    int_s.insert(-4, ',')
    int_s.insert(-8, ',')
  end
end


# 2. Refactored Solution
arr = int.to_s.split('')
	arr.reverse!
	lng = arr.length
	c = 3
	arr.each do |n|
		if n == arr[c]
			arr = arr.insert(c, ',')
			c += 4	
			end
		end
	arr.reverse!
	arr = arr.join('')
	p arr 



# 3. Reflection