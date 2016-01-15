# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
=begin
Pseudocode--

create a dispenser that represents differnt Pez to easily start with a full dispenser
count the total number of Pez
remove a Pez from the dispenser for consumption
add more Pez to never stop eating Pez
see all flavors inside the dispenser

=end

# initial solution

class PezDispenser
  def initialize(flavors)
    @dispenser = flavors
  end
  
  def add_pez(flavor)
    @dispenser.push(flavor)
  end
  
  def pez_count
    @dispenser.length
  end
  
  def get_pez
    gotten = @dispenser.sample
    @dispenser.delete(gotten)
  end
  
  def see_all_pez
    @dispenser
  end
end




# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
=begin

What concepts did you review in this challenge?
-In this review I really solidified the concepts of array manipulation and getting what I wan to display to the console efficiently

What is still confusing to you about Ruby?
-I think I am doing better this time around.

What are you going to study to get more prepared for Phase 1?
-I think I'll look up other ruby methods

=end
