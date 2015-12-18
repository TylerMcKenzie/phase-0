# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: An array of strings, the size of the array, and a random value of the array
# Steps:
=begin

def initialize
	check to see if the array is empty
	return the array	
end

def sides
	returns size of the array
end

def roll
	returns a random index value
end

=end

# Initial Solution

class Die
  @die = []
  def initialize(labels)
    @die = Array.new(labels)
    
    if @die.empty?
    	raise ArgumentError.new("Empty set")
    end
    p @die
  end

  def sides
    # code goes here
    p @die.size
  end

  def roll
    # code goes here
    p @die.sample
  end
end

#Reflect  
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
-The main difference between this die class and the last one is that this class takes in strings instead of integers. Suprisingly enough not a lot of changes were needed to be made.
What does this exercise teach you about making code that is easily changeable or modifiable? 
-It taught me that not all code is difficult to modify.
What new methods did you learn when working on this challenge, if any?
-The new method that I implemented in this assignment was .empty? which was used to check to see if the die class was empty or not
What concepts about classes were you able to solidify in this challenge?	
-The best that I could say that I solidified in this challenge is the idea of setting my own argument errors within a class to test whether the code works or not.

=end