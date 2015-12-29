# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [.75] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb

# 2. What is the line number where the error occurs?
# 171 (end of the file - which changes as I format this file)

# 3. What is the type of error message?
# syntax error

# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of input, expecting keyword_end

# 5. Where is the error in the code?
# Well the interpreter didn't show where, but it is between the 'puts' statement and the 'end' (between line 15 and 16).

# 6. Why did the interpreter give you this error?
# We need to close the while loop. To fix this we need to add an 'end' to close the loop.

# --- error -------------------------------------------------------
south_park = "South Park"

# 1. What is the line number where the error occurs?
# 40

# 2. What is the type of error message?
# undefined local variable or method 'south_park' for main:Object

# 3. What additional information does the interpreter provide about this type of error?
# (NameError)

# 4. Where is the error in the code?
# On line 41. The interpreter isn't showing where, but this is because there is no south_park method or local variable that we are currently calling.

# 5. Why did the interpreter give you this error?
# A local variable or method called south_park doesn't currently exist. To fix this we can create a local variable.

# --- error -------------------------------------------------------
def cartman()
end

cartman()

# 1. What is the line number where the error occurs?
# 59 (before I fixed it)

# 2. What is the type of error message?
# undefined method `cartman' for main:Object

# 3. What additional information does the interpreter provide about this type of error?
# (NoMethodError)

# 4. Where is the error in the code?
# On line 59. The interpreter isn't showing where, but this is because there isn't a method called cartman() that our statement can call.

# 5. Why did the interpreter give you this error?
# There isn't a method called cartman() that our statement can call. To fix this we can create a method.

# --- error -------------------------------------------------------

def cartmans_phrase(unnecessary_string)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 80

# 2. What is the type of error message?
# wrong number of arguments (1 for 0)

# 3. What additional information does the interpreter provide about this type of error?
# (Argument Error)

# 4. Where is the error in the code?
# from errors.rb:84:in '<main>'

# 5. Why did the interpreter give you this error?
# Our method definition doesn't include arguments. But when we call the method we include one. To fix this we can either remove the argument in the method call or add one in the method definition

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("I hate Kyle")

# 1. What is the line number where the error occurs?
# 103

# 2. What is the type of error message?
# wrong number of arguments (0 for 1)

# 3. What additional information does the interpreter provide about this type of error?
# (ArgumentError)

# 4. Where is the error in the code?
# from errors.rb:107:in `<main>'

# 5. Why did the interpreter give you this error?
# Our method definition includes an argument, but when we call the method we didn't include one. To fix this we need to include some argument.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
# 128

# 2. What is the type of error message?
# wrong number of arguments (1 for 2)

# 3. What additional information does the interpreter provide about this type of error?
# (ArgumentError)

# 4. Where is the error in the code?
# from errors.rb:132:in `<main>'

# 5. Why did the interpreter give you this error?
# In the method definition expects 2 arguments while we only included 1 in our method call. To fix this we can add a second argument to our method call.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"
5.times{|x| puts "Respect my authoritay!"}

# 1. What is the line number where the error occurs?
#151

# 2. What is the type of error message?
# String can't be coerced into Fixnum

# 3. What additional information does the interpreter provide about this type of error?
# (TypeError)

# 4. Where is the error in the code?
# from errors.rb:151:in `<main>'

# 5. Why did the interpreter give you this error?
# This is trying to multiply a string by an integer. We can't mix types. If we want to output that statement 5 times we could use an iterator.

# --- error -------------------------------------------------------

amount_of_kfc_left = 0/20 #amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 171

# 2. What is the type of error message?
# divided by 0

# 3. What additional information does the interpreter provide about this type of error?
# (ZeroDivisionError)

# 4. Where is the error in the code?
# from errors.rb:171:in `<main>'

# 5. Why did the interpreter give you this error?
# Like we should expect, the computer has trouble when we divide by 0. We can fix this by fixing the division equation.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 191

# 2. What is the type of error message?
# cannot load such file -- /Users/menuka/DBC/phase-0/week-4/cartmans_essay.md

# 3. What additional information does the interpreter provide about this type of error?
# (LoadError)

# 4. Where is the error in the code?
# from errors.rb:191:in `<main>'

# 5. Why did the interpreter give you this error?
# There is no file named that in that directory. We could fix that by putting the correct file in it's place.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin

-Which error was the most difficult to read?
'5 * "Respect my authoritay!"' was the one I had most trouble with because I didn't recognize the problem at first. I had to google the error message which made me remember that I can't multiply strings by an integer.

-How did you figure out what the issue with the error was?
I didn't recognize the problem at first. I had to google the error message which made me remember that I can't multiply strings by an integer. I confused that statement with one of the iterators that I learned before: '5.times{|n| do_something}'.

-Were you able to determine why each error message happened based on the code?
Other than the one I had trouble with, yes. These examples had pretty straight forward errors. I know that this isn't the case a lot of the time in the real world.

-When you encounter errors in your future code, what process will you follow to help you debug?
It helps to decipher the error statement to find the problem. Sometimes it helps to review your syntax and make sure that you closed every loop or method. Google is also a huge tool for error messages.

=end