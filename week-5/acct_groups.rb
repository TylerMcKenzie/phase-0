=begin

Pseudocode:
 Input = array of arrays
 Output = arrays of 5 or 4 depending on the total number of objects

 -
 randomize initial

 push objects into arrays
 set condition to 5 objects per array
 set condition to take 1 out of each array to fill least filled array till all groups consist of 5 or 4

=end

def group(array)
  groups = array.each_slice(5).to_a #convert large array in to sub_arrays of 5 indexes
  
  groups.each do |sub_array| # for each sub_array in groups
    if sub_array.length < 4 #Find each sub_array less than 4
      sub_array_index = groups.index(sub_array)# find selected sub_array's index
      groups.each do |sub_array| 
        if sub_array.length > 4 
          groups[sub_array_index] << sub_array.pop #push the last element of each sub_array greater than 5
        end
      end
    end
  end
end

p group([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]) # => [[1, 2, 3, 4], [6, 7, 8, 9], [11, 12, 13, 14], [16, 17, 18, 19], [21, 5, 10, 15, 20]]


=begin

Reflection:

What was the most interesting and most difficult part of this challenge?
-The most difficult part for me during this assignment was selecting information within the sub arrays and pushing that information to the other subarrays.
Do you feel you are improving in your ability to write pseudocode and break the problem down?
-I feel like I am improving my ability to pseudocode and write code based on my pseudocode
Was your approach for automating this task a good solution? What could have made it even better?
- In my opinion this was a good way of setting up the groups under any circumstance, I think that more conditionals would make it better by further seting how the lists are ordered each time
What data structure did you decide to store the accountability groups in and why?
-I decided to use an array since it would be easy to iterate over and is easy to make the arrays, but the argument could be made to use a hash and set each group to a key and the value be the list of people.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
-I learned about the .pop method which was useful in taking the last of each array in a destructive manner.

=end
