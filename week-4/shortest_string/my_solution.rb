# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
  a = list_of_words.length
  
  	loop do 
  		swapped = false
  		
  		(a-1).times do |i|
  			if list_of_words[i].length > list_of_words[i+1].length
  				list_of_words[i], list_of_words[i+1] = list_of_words[i+1], list_of_words[i]
  				swapped = true 
  			end
  		end

  		break if not swapped
  	end
  	smallest = list_of_words[0]
  	smallest
end