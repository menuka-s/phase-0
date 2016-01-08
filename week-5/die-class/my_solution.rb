# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: Number of sides for desired die

# Output: Die class with specified side count. Roll method to randomly choose number (to specify die roll).

# Steps:
# 1. Create Die class
# 2. Create Initialize method that takes sides count
# 3. Create sides method within Die class that returns number of sides
# 4. Create a random number generator for the roll number. Returns result between 1 and sides. I don't want to find a random number in the constructor, but only with the class method.


# 1. Initial Solution

=begin

class Die
  def initialize(sides)
    # code goes here
    if sides < 1
    	raise ArgumentError.new("Die cannot have less than 1 side")
    end
    @sides = sides
  end

  def sides
    # code goes here
    return @sides
  end

  def roll
    # code goes here
    return rand(1..@sides)
  end
end

=end

# 3. Refactored Solution

class Die
  def initialize(sides)
    raise ArgumentError.new("Die cannot have less than 1 side") if sides < 1
    @sides = sides
  end

  attr_reader :sides 

  def roll
    rand(1..@sides)
  end
end


# 4. Reflection

# -What is an ArgumentError and why would you use one?
# An ArgumentError is a an error message that is hard-coded in to catch certain errors that the developer expects will break the program. One should include ArgumentError statements when the know a case that will cause an error, but their isn't a more specific existing error/exception.

# -What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# rand(number range) will pick a random number within the given range. attr_reader is a shorthand for returning instance variables without creating a seperate method to return it.

# -What is a Ruby class?
# A class is a specified blue print for an object. Objects in general will hold certain information. When you create a class, you can create a new type of object that will have set infomation, methods, and behaviors.

# -Why would you use a Ruby class?
# Classes allow you to create objects that can do almost whatever you want. You have way more added flexibility than using just a hash or array for storing data. Classes allow you to create specific methods just for that class or easily set default values. 

# -What is the difference between a local variable and an instance variable?
# Local variables will only exist in the method/loop/etc. they were created in. Instance methods can exist in it's instance. That means an instance variable defined in one class can be used by any method in that specific object and are designated with an '@' symbol. Instance variables are not accessible in other instances of that same class type (if I have two different Die classes, one die class can't see the side count of the other).

# -Where can an instance variable be used?
# Instance variables defined in one class can be used by any method in that specific object and are designated with an '@' symbol. Instance variables are not accessible in other instances of that same class type (if I have two different Die classes, one die class can't see the side count of the other).