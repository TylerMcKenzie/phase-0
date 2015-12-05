# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Jovanka ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
=begin

Method total
	we create a new variable call 'sum' that we assign to zero;
	call the 'array.each' then we add the 'sum' to each part of the array;
	then display it to the terminal

=end



# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution

def total (array) 
	sum = 0
	array.each { |a| sum += a }
	sum
end

total([1,2,3,4,5,6,7])

# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!

=begin

Method sentence_maker 


=end











# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution

def sentence_maker (array) 
	array[0] = array[0].capitalize
	b = ""
	array.each { |a| b += a }
	b + "."
end

p sentence_maker(["all", "my", "socks", "are", "dirty"])


# 6. sentence_maker refactored solution