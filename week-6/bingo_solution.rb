# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [1] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Hopefully this is okay...In the initialize method also add a hash that contains the letters and coincide those letters with positions in the column using a hash (this will make it easier to pick the appropriate column later)

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  # Create two random variables. 
  # One will pick a random element in an array of strings ("B"-"O") using the hash I created above. 
  # And the other to pick a random int between 1-100.

# Check the called column for the number called.
  #fill in the outline here
  # From the previous method use that variable and my hash to figure which column. 

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  # Each column represents a position in the nested array. Loop through each array and check that number.
  # If it is a match to the random number above, replace with an 'x'

# Display a column to the console
  #fill in the outline here
  # Iterate through the nested array. At the given position in the nested array save that number to a new array. Display that array in new lines.

# Display the board to the console (prettily)
  #fill in the outline here
  # Loop through array. In each nested array print each value followed by a tab. Make sure to add a new line between nested arrays.

# Initial Solution

=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_hash = {0=>"B", 1=>"I", 2=>"N", 3=>"G", 4=>"O"}
  end

  def call
    @rand_col = rand(0..4)
    @rand_letter = @bingo_hash[@rand_col]
    @rand_num = rand(1..100)

    return @rand_letter + @rand_num.to_s

  end

  def check
    @bingo_board.each do |nest_array|
      if nest_array[@rand_col] == @rand_num
        nest_array[@rand_col] = "X"
      end
    end
  end


  def display
    @bingo_hash.each_value {|value| print value + "\t"}
    print "\n"
    @bingo_board.each do |nest_array|
      nest_array.each do |element|
        print element.to_s + "\t"
      end
      print "\n"
    end
  end


end


=end


# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_array = ["B","I","N","G","O"]
  end

  def call
    @rand_letter = @bingo_array.sample
    @rand_num = rand(1..100)
    return @rand_letter + " " + @rand_num.to_s
  end

  def check
    @bingo_board.each do |nest_array|
      if nest_array[@bingo_array.index(@rand_letter)] == @rand_num
        nest_array[@bingo_array.index(@rand_letter)] = "X"
      end
    end
  end

  def display
    @bingo_array.each {|letter| print letter + "\t"}
    print "\n"
    @bingo_board.each do |nest_array|
      nest_array.each {|num| print num.to_s + "\t"}
      print "\n"
    end
  end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

p new_game.call
new_game.check
new_game.display


#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# I didn't think it was that hard really. The hardest part was figuiring out what the input and output was going to be and trying to figure out why I needed to pseudocode displaying a column (it seems we never coded that?).
# I honestly don't know if I my style is good. Why I think I can break down problems efficiently with pseudocode, I often run into a problem with my initial solution where I figure out a better way to code a solution. Then I run into a problem of either finishing up my code as my pseudocode dictates, or changing up my pseudocode. 

# What are the benefits of using a class for this challenge?
# In this challenge, using a class allows us to use multiple methods that can display or modify our bingo board. We only need to initialize our class once with the given board and then can use subsequent methods to accomplish our tasks.

# How can you access coordinates in a nested array?
# For one specific element: you can use the index of the nested array in the parent, plus the element you are targeting in the nested array. For example: parent_array[nest_index][nest_element].
# Otherwise you can iterate through the parent array, and then iterate through each element of the nested array.

# What methods did you use to access and modify the array?
# I used .each to iterate through. I was surprised that it actually allowed me to modify the array (I thought I would have to use .map) but it makes sense since I was directly saying which nested array coordinates to modify.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I used .sample in my refactored solution. This method is called on arrays and will return a random element in the array. I wanted to try to use that instead of picking a random number that I assinged to a character.

# How did you determine what should be an instance variable versus a local variable?
# I think I actually may have only used instance variables. In this challenge I only needed to use instance variables if they were going to be used in multiple methods. My bingo_array, rand_num, and rand_col/rand_letter were used in multiple methods so I used instance variables.

# What do you feel is most improved in your refactored solution?
# I actually don't think I was able to refactor my solution very well. I tried making the variable names more applicable and used an array instead of a hash to store B,I,N,G, and O which allowed me to try out .sample.
