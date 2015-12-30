# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

#Original Solution
=begin

def largest_integer(list_of_nums)
  # Your code goes here!
  unless list_of_nums.nil?
  	curr_small = list_of_nums[0]
  	list_of_nums.each do |num|
  		if num > curr_small
  			curr_small = num
  		end
  	end
  	return curr_small
  else
  	return nil
  end
end

=end

#Refactored Solution
def largest_integer(list_of_nums)
	unless list_of_nums.nil?
		return list_of_nums.max
	else
		return nil
	end
		
end