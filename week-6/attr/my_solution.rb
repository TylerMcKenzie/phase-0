#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name

  def initialize
    @name = 'Tyler'
  end
end


class Greetings
  
  def initialize
    @person = NameData.new
  end
  
  def hello
    p "Hello #{@person.name}! How are you?"
  end
end


  greet = Greetings.new
  p greet.hello

# Reflection
=begin

--Release_1 reflection--

What are these methods doing?
- These methods are printing out information in one instance and in the next changing the information
How are they modifying or returning the value of instance variables?
- They are taking the instance variables and assigning them to new variables within the "change" methods.

--Release_2 reflection--

What changed between the last release and this release?
- The method that initialized the age was commented out and an attr reader was implemented
What was replaced?
- what_is_age was replaced
Is this code simpler than the last?
- This code is a bit simpler than the last.

--Release_3 reflection--

What changed between the last release and this release?
- The only thing that changed between this release and the last is that an attr_writer was imple
What was replaced?
- The method that changed the age was changed to .age from .change_my_age
Is this code simpler than the last?
- This code is getting more simple the farther that we progress.

--Release_6 reflection--

What is a reader method?
- A reader method just returns the value outside of the class but does not change it
What is a writer method?
- A writer method changes the value of the variable outside the class
What do the attr methods do for you?
- The attr methods write global variables and methods to call that information
Should you always use an accessor to cover your bases? Why or why not?
- It is not wise to always use an accessor to cover your bases because having so many changable instance variables may cause issues debugging down the line
What is confusing to you about these methods?
- The only thing that is confusing to me is using the writer method I think, but then again I am not quite sure I know what I don't know.

=end