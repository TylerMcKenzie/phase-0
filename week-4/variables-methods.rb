
puts "What is your first name?"
first = gets.chomp
puts "Middle?"
middle_name = gets.chomp
puts "Last?"
last = gets.chomp
puts "Hello #{first} #{middle_name} #{last}. How are you?"

puts "Also, what is your favorite number?"
number = gets.chomp
new_number = number.to_i + 1
puts "Wouldn't it be better, bigger?"
puts "Like so? #{new_number}! Much nicer right?"