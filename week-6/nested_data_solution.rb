# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:2
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:3
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:2
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |x| 
  if x.is_a?(Array) 
    x.map! {|x_nest| x_nest += 5}
  else 
    x += 5
  end
end

p number_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


# REFLECTION

=begin

What are some general rules you can apply to nested arrays?
- Some general rules that can be applied to nested arrays are like iterators and such.
What are some ways you can iterate over nested arrays?
- Some ways that you could iterate over a nested array is by using the specific index or search for the nested arrays using booleans. 
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
- I found that I could have used .kind_of? to see if the information was an array or not but I perfer .is_a? because is a bit easier to read.


=end
