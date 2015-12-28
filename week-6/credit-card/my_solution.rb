# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A integer comprised of 16 numbers
# Output: Validated card true or false
# Steps:
=begin
initialize credit card







=end
# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
  
#   def initialize(card_number)
#     @card = []
#     @card = card_number.to_s.split(//)
    
#     if @card.size == 16 
#       true
#     else
#       raise ArgumentError.new("Incorrect number of digits #{@card.size} for 16")
#     end
#   end

#   def check_card
#     algorythm = @card
#     algorythm.map!.with_index do |x, i| 
#       if i % 2 == 0
#         x = algorythm[i].to_i * 2
#       end
#       x.to_i
#     end
#     alg_num = algorythm.join.split(//).map(&:to_i)
#     sum = alg_num.inject(:+)
#     if sum % 10 == 0
#     	true
#     else
#     	false
#     end
#   end

# end

# card_t = CreditCard.new(4408041234567901)

# card_t.check_card

# card_f = CreditCard.new(4408041234567906)

# Refactored Solution

class CreditCard
  
  def initialize(card_number)
    @card = []
    @card = card_number.to_s.split(//)
    
    if @card.size == 16 
      true
    else
      raise ArgumentError.new("Incorrect number of digits #{@card.size} for 16")
    end
  end

  def check_card
    algorythm = @card
    algorythm.map!.with_index do |x, i| 
      if i % 2 == 0
        x = algorythm[i].to_i * 2
      end
      x.to_i
    end
    alg_num = algorythm.join.split(//).map(&:to_i)
    sum = alg_num.inject(:+)
    if sum % 10 == 0
    	true
    else
    	false
    end
  end
end






# Reflection
=begin

What was the most difficult part of this challenge for you and your pair?
- The part that was most difficult for me in this challenge was multiplying every other index and returning the changed array
What new methods did you find to help you when you refactored?
- I found that .inject worked well in summing up the integers of the array.
What concepts or learnings were you able to solidify in this challenge?
- In this challenge I was able to solidify the concept of breaking an array apart, evaluating and joining arrays.

=end
