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
def separate_comma(int)
  int.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end



# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
#	- I evaluated how I would as a human place the commas and then translated for the computer. I consider using .times but couldn't find an efficient way to implement it.
# Was your pseudocode effective in helping you build a successful initial solution?
# 	-I think that my pseudocode was successful in helping the flow of my code.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# 	-I found a method that combines several methods on one line to create the solution. This was a new and exciting experience for me because I am so used to writing the code line by line whereas this does it all in one fell swoop. Which of course significally changed the way my code worked where instead of starting from the end it reverses the string and subs/places a comma if it is next to an integer every 3 spaces. 
# How did you initially iterate through the data structure?
# 	-Initialy the code checked to see how large the int was and if if returned true it placed a comma accordinly
# Do you feel your refactored solution is more readable than your initial solution? Why?
# 	-I feel that my refactored solution is a little clutterd but is more effective at placing the commas in any int.