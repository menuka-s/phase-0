#Release 5

# Pseudocode

# Input: N/A
# Output: Two new class instances with text output
# Steps: 
# Create classes
# Initialize the classes correctly (Initialize a new class instance for NameData within Greetings)
# Create any other necessary methods

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