# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

#  



# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @letter_assignments = {:B => @bingo_board[0],:I => @bingo_board[1], :N => @bingo_board[2], :G => @bingo_board[3], :O => @bingo_board[4]}  
#   end
  
#   def call
#     rand_ball = { @letter_assignments.keys[rand(@letter_assignments.size)] => rand(100) } 
#     # ball_test = {:N => 97} -- check to see if true or false
#     ball_call = rand_ball.each {|a,b| p "#{a}#{b}"}
    
#     if @letter_assignments.has_key?(rand_ball.keys[0])
#       if @letter_assignments[rand_ball.keys[0]].include?(rand_ball.values[0])
#         @letter_assignments[rand_ball.keys[0]].map! {|x| x == rand_ball.values[0] ? 'X' : x}
#         p "Match!"
#         @letter_assignments.each {|key, value| p "#{key} #{value}"}
#       else
#         p "No Match!"
#         @letter_assignments.each {|key, value| p "#{key} #{value}"}
#         end
#     end
#   end
    
  
# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = {:B => board[0],:I => board[1], :N => board[2], :G => board[3], :O => board[4]}  
  end
  
  def call
    rand_ball = { @bingo_board.keys[rand(@bingo_board.size)] => rand(100) } 
    # ball_test = {:N => 97} -- test used to see if true or false for key and value pair
    ball_call = rand_ball.each {|a,b| p "#{a}#{b}"}
    ball_letter = rand_ball.keys[0]
    ball_number = rand_ball.values[0]

    if @bingo_board.has_key?(ball_letter)
      if @bingo_board[ball_letter].include?(ball_number)
        @bingo_board[ball_letter].map! {|x| x == ball_number ? 'X' : x}
        p "Match!"
        @bingo_board.each {|key, value| p "#{key} #{value}"}
      else
        p "No Match!"
        @bingo_board.each {|key, value| p "#{key} #{value}"}
        end
    end
  end
    
  
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call

#Reflection

=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
- It was not that difficult to pseudocode for this challenge. It was kindof outlined already for us.
What are the benefits of using a class for this challenge?
- The benefits was that I could create a new bingo board with different values when I wanted and play from there
How can you access coordinates in a nested array?
- You can access them directly with its index or set a condition to equal what you are looking for.
What methods did you use to access and modify the array?
- I used .map! and found my information with .has_key?/include?
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
- I have seen and used .has_key? in the past but never with an array as the value for that key so I ran into a few bumps but pulled through when I realized that when the key is found the value is an array and needs to be treated as such.
How did you determine what should be an instance variable versus a local variable?
- I determined that the only instance variable that I needed was the bingo_board so I could transfer that hash data into a new method.
What do you feel is most improved in your refactored solution?
- I feel like the readability of my solution was improved in my revision along with the speed of the functions.

=end
