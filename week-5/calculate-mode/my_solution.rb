# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Tyler McKenzie]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?an array of numbers
# What is the output? (i.e. What should the code return?)an array of the numbers that appear most frequently
# What are the steps needed to solve the problem?
=begin
iterate through the array and find the frequency of each number
create a hash with the key as the number and the frequency as the value
Find the largest frequency
return an array of all keys with that frequency
=end

# 1. Initial Solution
def mode(array)
  frequency = Hash.new(0)
  new_array = []
  
  array.each { |int| frequency[int] += 1 }
  
  frequency = frequency.sort_by{|x, y| y}
  
  frequency.each do |x, y|
    if x.is_a? Numeric
      if y == frequency.last.last
        new_array << x
      end
    else 
      if y == frequency.last.last
        new_array << x.to_s
      end
    end
  end
  
  return new_array.sort

end


# 3. Refactored Solution

def mode(array)
  frequency = Hash.new(0)
  
  new_array = []
  
  array.each { |int| frequency[int] += 1}
  
  frequency.each do |x, y|
    if x.is_a? Numeric
      if y == frequency.values.max
        new_array << x
      end
    else 
      if y == frequency.values.max
        new_array << x.to_s
      end
    end
  end
  return new_array.sort
end


# 4. Reflection
=begin

Which data structure did you and your pair decide to implement and why?
-For our data structure we chose to use a hash, because it would be easier to store and evaluate the keys and their values
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
-The two were problems were fairly easy to pseudocode, so I'd say they were the same.
What issues/successes did you run into when translating your pseudocode to code?
-The main issues that we ran into was that 1. for awhile we couldn'y implement strings into the method and 2. when we ran the rspec we had no idea why it was not giving the correct answer so we just sorted the result
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
-We found that .each worked best in this scenario, we did think about using .find_all or .select, but just didn't feel as if the results that they gave were as simple as .each

=end