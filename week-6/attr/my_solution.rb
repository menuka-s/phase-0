
#Attr Methods

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# Pseudocode

# Input: N/A
# Output: Two new class instances with text output
# Steps: 
# Create classes
# Initialize the classes correctly (Initialize a new class instance for NameData within Greetings)
# Create any other necessary methods

### Copied from release_5.rb to make it easier for the reviewer 
class NameData
  attr_reader :name

  def initialize
    @name = "Menuka"
  end

end


class Greetings
  def initialize
    @nameData = NameData.new
  end

  def hello
    puts "Hello #{@nameData.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello


# Reflection

###release_1.rb
# What are these methods doing?
# Well there is an instance method to create the class, followed by methods that either return or printss instance variables, or change instance variables within the class.

# How are they modifying or returning the value of instance variables?
# To return the instance variables, they are just calling it within the method. To modify them, they are just setting the instance variable equal to the argument.


###release_2.rb
# What changed between the last release and this release?
# What_is_age has been replaced by attr_reader :age. Also .age is called on the class object instead of calling the method when retrieving the age.

# What was replaced?
# What_is_age has been replaced by attr_reader :age. But they both do the same thing, so what_is_age is no longer required.

# Is this code simpler than the last?
# Yes, I would say so.


###release_3.rb
# What changed between the last release and this release?
# change_my_age has been replaced by attr_writer :age. Also .age is used now to also change the age.

# What was replaced?
# change_my_age has been replaced by attr_writer :age. 

# Is this code simpler than the last?
# Yes, I believe so. I believe we can use attr_accessor instead though. I wonder if that will be the next release.


### Actual Reflection Questions

# What is a reader method?
# A reader method allows you to read the instance variable outside of the class, but not change it.

# What is a writer method?
# A writter method allows you to change an instance variable outside of the class, but not allow you to see what that value is.

# What do the attr methods do for you?
# They are a form of shorthand that allows you read and write variables without having to create dedicated methods to do those simple tasks.

# Should you always use an accessor to cover your bases? Why or why not?
# No, some values may not ever want to be changed (such as constants) and by making everything an accessor, there is a chance that some code might accidently change it later down the road.

# What is confusing to you about these methods?
# Not too much, this challenge was pretty straightforward. I had some trouble figuring out how to do release 5, but the examples on Canvas helped.

