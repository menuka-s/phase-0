# I worked on this challenge [by myself].
# This challenge took me [1.5] hours.

# Pseudocode
# Input: number
# Output: boolean value indicating if number is a fibonacci number.

# Steps: I've thought of two different ways to do this. T
# The first way will be my initial solution since it's not as elegant. 
# The second way uses a well known equation and some new variable types.

# Steps for initial solution:
# Create recursive formula to automatically add numbers together in a recursive fashion. Store each generated number in an array.
# Stop the recursive formula when my generated number is greater than or equal to the given number.
# Check if the given number is in my array of generated values



# Initial Solution

# def is_fibonacci?(num)
# 	my_array = [1, 1]
# 	my_array = fib_num_array(1, 1, my_array, num)
# 	return my_array.include?(num)
# end

# def fib_num_array(n1, n2, num_array, num_limit)
# 	n3 = n1 + n2 
# 	num_array.push(n3)
# 	if n3 >= num_limit
# 		return num_array
# 	else
# 		fib_num_array(n2,n3,num_array,num_limit)
# 	end
# end

# Refactored Solution

# This solution will use an equation: 
# "A number is Fibonacci if and only if one or both of (5*n^2 + 4) or (5*n^2 – 4) is a perfect square”
# Ruby has a built in sqrt function, but apparently there are some precision problems for big floats.
# Instead I just learned about BigDecimal and I will use that.

require 'bigdecimal'

def is_fibonacci?(num)
	num = BigDecimal.new(num)
	n1 = (5 * (num**2) + 4).sqrt(0)
	n2 = (5 * (num**2) - 4).sqrt(0)
	return (n1 == n1.round || n2 == n2.round)

end


# Reflection
# What concepts did you review or learn in this challenge?
# In my initial solution I had more practice with recursion. 
# In my refactored solution I got to learn about BigDecimal and the .round method.

# What is still confusing to you about Ruby?
# Not much. It took some time to remember certain methods or what the syntax should be though.

# What are you going to study to get more prepared for Phase 1?
# I guess I should study what methods are associated with each data type. 
# It would probably help to do more challenges like this too, so I can learn new things.