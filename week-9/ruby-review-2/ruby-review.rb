# I worked on this challenge [by myself].
# This challenge took me [.5] hours.


# Pseudocode
# Iterate through each element of the array
# If it is divisible by 15, change the element to FizzBuzz
# If it is divisible by 5, and not 3, change the element to Buzz
# If it is divisible by 3, and not 5, change the element to Fizz


# Initial Solution

# def super_fizzbuzz(array)
# 	array.each do |element|
# 		if element % 15 == 0
# 			array[array.index(element)] = "FizzBuzz"
# 		elsif element % 3 == 0
# 			array[array.index(element)] = "Fizz"
# 		elsif element % 5 == 0
# 			array[array.index(element)] = "Buzz"
# 		end
# 	end

# end


# Refactored Solution
# def super_fizzbuzz(array)
# 	array.map! do |element|
# 		if element % (3*5) == 0
# 			element = "FizzBuzz"
# 		elsif element % 3 == 0
# 			element = "Fizz"
# 		elsif element % 5 == 0
# 			element = "Buzz"
# 		end
# 		element
# 	end
# end

def super_fizzbuzz (array)
	array.map! { |element| (num_value = [["Fizz"][element % 3], ["Buzz"][element % 5]].join).empty? ? element : num_value }
end


# Driver Code
# test_array = super_fizzbuzz([1,2,3,4,5,6,15,21,35,60,61])
# p test_array




# Reflection
# What concepts did you review in this challenge?
# Enumerable methods in ruby such as .each and .map!

# What is still confusing to you about Ruby?
# Sometimes I get confused when I can modify an array using .each. 
# The implementation with .map in my first refactored solution looks more readable. 

# What are you going to study to get more prepared for Phase 1?
# There are so many cool tricks with ruby, such as that one line solution that I found. 
# I need to read more about Ruby methods to see if I can remember tricks like that. 
