# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [.5] hours on this challenge.

# Pseudocode

# Input: 
# List/array of strings (in the form of arbitrary labels)

# Output: 
# die.new will create a new Die. 
# die.sides will return the number of labels in the array
# die.roll will return a random label/string


# Steps:
# Finish the initialize method by creating instance variables equal to the array of labels and the length of the array(to count number of sides)
# Also remember to add argumentError when labels is empty.
# Finish the sides method by returning the instance variable that holds number of sides
# Finish the roll method by returning a random element in array. Use rand method and look between 0 and the last element of the array (inclusive)


# Initial Solution

=begin

class Die
  def initialize(labels)
  	if labels == nil || labels == []
  		raise ArgumentError.new("Cannot pass empty list of labels")
  	end
  	@labels = labels
  	@sides = labels.length
  end

  def sides
  	@sides
  end

  def roll
  	rand_num = rand(0..(@sides-1))
  	@labels[rand_num]
  end
end

=end

# Refactored Solution

class Die
  def initialize(labels)
  	raise ArgumentError.new("Cannot pass empty list of labels") if labels == nil || labels == []
  	@labels = labels
  	@sides = labels.length
  end

  attr_reader :sides

  def roll
  	@labels[rand(0..(@sides-1))]
  end
end


# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The main difference was the input in this die class. Instead of taking an interger, I would account for an array. Which also changed how to handle my argument error. Otherwise the sides and random method were very similar, just tailored for arrays instead of an integer.

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# Oh that was the reason why? Haha, well it's always a good idea to try to make your code as flexible as possible. That way it can be easily modified if you have to use a different but similar test case.

# What new methods did you learn when working on this challenge, if any?
# This method followed a lot of the same things I did in the last die class. I did have to look back to remember how to use attr_reader to return the side length in just one line.

# What concepts about classes were you able to solidify in this challenge?
# I had to revisit both Argument Errors and attr_reader, so hopefully I won't have to look that up again in the future when I need to use them.