# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# take a string as an argument
# if string is empty return nil
# split string into individual arrays and reverse
# join arrays after words are reversed


# Initial Solution
def reverse_words(string)
  reverse = string.split(' ')
  reverse.map! {|x| x.reverse }
  reverse.join(' ')
end



# Refactored Solution





# Reflection
=begin

What concepts did you review or learn in this challenge?
-I reviewed making strings into arrays and editing the arrays and returning them to strings

What is still confusing to you about Ruby?
- I think that I have a pretty good grasp of ruby and ruby ideas at this point

What are you going to study to get more prepared for Phase 1?
-I will probably study more on multidimensional arrays and iterating through those.

=end
