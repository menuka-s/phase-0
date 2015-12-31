# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Jon Schwartz ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: Total sum of numbers in given array
# Steps to solve the problem.

# Define method
# Define total_sum = 0
# Iterate through array
#     total_sum += array[x]
# End iterator
# Return total_sum



# 1. total initial solution

=begin

def total(num_array)
	total_sum = 0
	num_array.each do |x|
		total_sum += x
	end
	return total_sum
end

=end


# 3. total refactored solution
def total(num_array)
	return num_array.inject { |total_sum, x| total_sum + x}
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: A sentence in the form of string.
# Steps to solve the problem.

# Define the method
# Define total_string
# Iterate through array
#	total_sum += " " + x
# Capitalize and remove whitespace
# Return sentence


# 5. sentence_maker initial solution

=begin
	
def sentence_maker(string_array)
	total_string = ''
	string_array.each do |x|
		total_string += " " + x.to_s
	end
	return total_string.strip.capitalize + "."
end

=end


# 6. sentence_maker refactored solution
def sentence_maker(string_array)
	return string_array.map(&:to_s).join(" ").capitalize + "."
end

