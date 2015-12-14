# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: array, int defining sides
# Output: array of number from 1 to number of sides, or rand number between 1 and number of sides
# Steps:
=begin
class Die
  method intialize
    set condition if sides is less than 0 to raise argument
    initialize new array with x number of sides
  end
	
  method sides
  	call length(or sides) if the die array
  end
	
  method roll
  	call die array and select random index
  	puts to console
  end




=end


# 1. Initial Solution

class Die
  @die = []
  def initialize(sides)
    if sides.to_i <= 0
      raise ArgumentError.new("Unable to have negative sides")
    end
    @die = Array.new(sides){ |x| x += 1 }
    p @die
  end

  def sides
    # code goes here
    p @die.length
  end

  def roll
    # code goes here
    p @die.sample
  end
end

die = Die.new(6)
die.sides
die.roll

# 3. Refactored Solution







# 4. Reflection
=begin
	
What is an ArgumentError and why would you use one?
-I would use an argument error to prevent me or other users from running the code incorrectly and them or myself not know why the code did not work.
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
-The new ruby method that I implemented was the .sample method, which calls a random index of an array. The main challenge that I faced was calling for the random index in the .roll function.
What is a Ruby class?
-A class is like a bluepront from which individual objects are created
Why would you use a Ruby class?
-I would use a class to evaluate or change data of an object or the contents of said object
What is the difference between a local variable and an instance variable?
-A local variable is onyl visible within the method that it is placed while an instance variable is visible anywhere else in the instance of the class
Where can an instance variable be used?
-Anywhere in the instance of the class

=end