# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [.75] hours on this challenge.

# Pseudocode

# Input: 
# To initialize the class we are given an integer that represents the answer. We have create a guess method that accepts an integer and a .solved? method

# Output:
# .guess will modify my instance variables and return if the guess was low, high, or correct
# .solved will return true or false based on @last_result

# Steps:
# In initialize create @answer, @last_guess, and @last_result
# In .guess create an if statement to check if the provided guess is low, high, or correct when compared to the answer. Remember to modify last_guess and last_result too.
# In .solved check if either last_result is correct or if last_guess is equal to the answer and return true or false accordingly. 


# Initial Solution

=begin

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @last_guess = nil
    @last_result = nil
  end

  def guess(guess)
  	if guess < @answer
  		@last_guess = guess
  		@last_result = :low
  		return @last_result
  	elsif guess > @answer
  		@last_guess = guess
  		@last_result = :high
  		return @last_result
  	else 
  		@last_guess = guess
  		@last_result = :correct
  		return @last_result
  	end
  end

  def solved?
  	if @last_result == :correct 
  		return true 
  	else
  		return false
  	end
  end
end

=end

# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
    @last_guess, @last_result = nil
  end

  def guess(guess)
  	@last_guess = guess
  	if @last_guess < @answer
  		return @last_result = :low
  	elsif @last_guess > @answer
  		return @last_result = :high
  	else 
  		return @last_result = :correct
  	end
  end

  def solved?
  	return @last_result == :correct ? true : false
  end
end


# Reflection


# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instancd variables and methods can represent real-world concepts and objects. They can be defined to do certain actions that can mimic real-world things. They can store information or do certain tasks. For example in this exercise we had an instance variable to store the last guess. In the real world we could remember what the last guess was. This is similar in methods too, like in our .guess method, which we would do in our head.

# When should you use instance variables? What do they do for you?
# We should use instance variables in specific instances for objects. For example when we create a class and need to share a variable (such as 'last_guess', or 'answer') between methods of that specific class we would use instance variables. They allow us an easy way to share information between methods in a class and can be accessed by driver code too.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control such as an if statement will use conditional operators to check if a certain statement is true. For example you can check if 'Statement A' is true. If it is do something. If not, you may have an optional else if statement that evaluates 'Statement B'. If neither Statement A or Statement B can be done, an else statement can be used.
# Another walkthrough may be "if something is true, do this", "elsif this case, do this", or "else, do this".
# In this challenge I didn't have a lot of trouble with flow control. I considered using nested ternary operators for .guess when refactoring, but I thought that wouldn't be too readable.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# I think this challenge wants to make sure that we know how to use immutable variables. Immutable variables such as symbols cannot be changed, only overwritten. Overwritting variables when you don't need to change them often (such as in this challenge) is much better for memory use. 
