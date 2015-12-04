# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.



# cartmans_phrase = "Screw you guys " + "I'm going home." 

# This error was analyzed in the README file.

# def cartman_hates(thing)
  # while true
    # puts "What's there to hate about #{thing}?"
# end


# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The name of the file is errors.rb
# 2. What is the line number where the error occurs?
# The line number where the error occurs is 169
# 3. What is the type of error message?
# The message type is "syntax error"
# 4. What additional information does the interpreter provide about this type of error?
# The extra information that is provided is "unexpected end-of-input, expecting keyword_end"
# 5. Where is the error in the code?
# The error in the code is on line 16 because the method is not closed out correctly
# 6. Why did the interpreter give you this error?
# The interpreter gave me this error because it reads the rest of the body of this file as part of the method.


#south_park

# 1. What is the line number where the error occurs?
# 34
# 2. What is the type of error message?
# in '<main':
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method 'south_park' for main:Object
# 4. Where is the error in the code?
#  the error is in the code on line 34 as 'south_park' is not defined as a variable or a method 
# 5. Why did the interpreter give you this error?
#  the interpreter gave me this error because it had nothing to assign to 'south_park'



#cartman()

# 1. What is the line number where the error occurs?
# 49 
# 2. What is the type of error message?
# in '<main>'
# 3. What additional information does the interpreter provide about this type of error?
# undefined method 'cartman' for main:Object
# 4. Where is the error in the code?
# the error is the line 49
# 5. Why did the interpreter give you this error?
# I received this error because there is no method described as 'cartman' 

# --- error -------------------------------------------------------

# def cartmans_phrase
  # puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 64
# 2. What is the type of error message?
# in 'cartmans_phrase'
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# in line 68 and the error in the code is that when the method is being run the user input an argument when the method does not call for any variables and simply outputs to the terminal
# 5. Why did the interpreter give you this error?
# you received this message because the interpreter tries to input 'I hate Kyle' but has nowhere to put it into

# --- error -------------------------------------------------------
=begin


def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end
# 1. What is the line number where the error occurs?
# line 83
# 2. What is the type of error message?
# in 'cartman_says'
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (o for 1)
# 4. Where is the error in the code?
# in line 87 in '<main>', and the error is that the method on line 87 is trying to puts the variable to the console but the variable is not defined
# 5. Why did the interpreter give you this error?
# the interpreter gives you this error because the method asks for 1 argument and the interpreter is given 0



# --- error -------------------------------------------------------
=begin


def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end
# 1. What is the line number where the error occurs?
# line 106
# 2. What is the type of error message?
# in 'cartmans_lie'
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# the error is in lin 110
# 5. Why did the interpreter give you this error?
# missing another argument 

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# line 127 
# 2. What is the type of error message?
# in '*'
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum (TypeError)
# 4. Where is the error in the code?
# the errors are in line 127
# 5. Why did the interpreter give you this error?
# we received this error because the operation is being done on a string and can't do that... Smart right?... Moreover it needed to be an object or a method or also have another operation done to it, like puts

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# on line 142
# 2. What is the type of error message?
# in '/' 
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0 (ZeroDivisionError)
# 4. Where is the error in the code?
# in line 142
# 5. Why did the interpreter give you this error?
# CANNOT, REPEAT, CANNOT DIVIDE BY 0! WORLD WILL BE DESTROYED!! 

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# line 158
# 2. What is the type of error message?
# in 'require_relative'
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- /vagrant/phase-0/cartmans_essay.md (LoadError)
# 4. Where is the error in the code?
# in line 158
# 5. Why did the interpreter give you this error?
# there was no file found so it could not load the file


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
#The first one got me for like an hour
#How did you figure out what the issue with the error was?
#I added an 'end' at the end of the file and got no errors(after commenting out everything)
#Were you able to determine why each error message happened based on the code? 
# I did not have too much trouble aside from that first problem this was a good excersise
#When you encounter errors in your future code, what process will you follow to help you debug?
#I suppose that when I run into errors in my code I'll ask myself these 5 questions to solve my problems.