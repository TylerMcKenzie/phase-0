# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: paramaters to an array
# Output: string saying whether right or wrond guess
# Steps:

#  Initialize empty array and fill with .new
#  grab a last number from the array

#  method guess: takes argument and compares it to the last number
#  if is correct put correct if not put high/low respectively
#  if the game is correct run method solved? and return true


# Initial Solution
=begin

class GuessingGame
  
  @game = []
  
  def initialize(answer)
    @game = Array.new(answer) {|x| x += 1}
    @number = @game.last
  end 

  def guess(input)
    @user_guess = input
    self.try_again
  end
  
  def try_again
  	if @user_guess.to_i < @number
        :low
    elsif @user_guess.to_i > @number
        :high
    else
    	:correct
    end
  end

  def solved?
  	if self.try_again == :correct
  		true
  	else
  		false
  	end
  end
end

=end

# Refactored Solution

class GuessingGame
    
  def initialize(answer)
    game = Array.new(answer) {|x| x += 1}
    @number = game.last
  end 

  def guess(input)
    @user_guess = input
    self.try_again
  end
  
  def try_again
  	if @user_guess.to_i < @number
        :low
    elsif @user_guess.to_i > @number
        :high
    else
    	:correct
    end
  end

  def solved?
  	if self.try_again == :correct
  		true
  	else
  		false
  	end
  end
end
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
- I think that the best way to describe this is to consider instance variables and methods as small boxes that fit into a larger box. So you can fill the small boxes with whatever you want and fill the large boxes with whatever small boxes you want.
When should you use instance variables? What do they do for you?
- You should use instance variables if you are going to use a variable in multiple methods.
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
- Flow control is just the way that you direct the return of information within your code. And in this challenge I didn't have any struggles to note of.
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
-The benefits of using symbols for this assignment is that they return faster than strings, and can be comprised of strings.

=end