# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? 
# An integer

# What is the output? (i.e. What should the code return?)
# A comma-separated number as a string.

# What are the steps needed to solve the problem?
# 1. Convert int to string
# 2. Find string.length
# 3. Add commas at specific positions (every three char)


# 1. Initial Solution

=begin 

def separate_comma(num)
	temp_string = num.to_s
	new_string = ""
	counter = temp_string.length - 1
	threes_count = 0
	while counter >= 0
		threes_count += 1
		if threes_count % 3 == 0 && counter != 0
			new_string = "," + temp_string[counter] + new_string
		else
			new_string = temp_string[counter] + new_string
		end
		counter -= 1
	end
	return new_string
end

=end

# 2. Refactored Solution

# My refactored solution
def separate_comma(num)
	temp_string = num.to_s.reverse
	final_string = ""
	threes_count = 0
	while threes_count < (temp_string.length )
		if (threes_count + 1) % 3 == 0 && threes_count != (temp_string.length-1)
			final_string += temp_string[threes_count] + ","
		else
			final_string += temp_string[threes_count]
		end
		threes_count += 1
	end
	return final_string.reverse
end

# Online solution
#def separate_comma(num)
#	num.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
#end	


# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# I actually struggled in breaking this down into steps. I had a couple initial ideas that I thought could work, but I couldn't pick a good one. Initially I wanted to use recursion, but that proved too troublesome. Eventually I had to take a break and look at the problem with fresh eyes, and then I saw a simple solution that honestly took 5 minutes to code. It helps to take a break!

# Was your pseudocode effective in helping you build a successful initial solution?
# Eh....maybe? The pseudocode I have up there was one of my initial ideas, but I couldn't think of a way to implement it with code at first, so I tried other ideas too. When I actually thought of my solution and coded it, it was basically what my pseudocode suggested.  

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# Since we were advised not to use regular expressions, I wanted to see what enumerable methods we could use. I did some googling and found some cool ways to accomplish this challenge. But since my refactored solution has to be similar to my initial solution, I just decided to figure out ways to simplify my code. .reverse helped me get rid of one of my counters.
# I also inclduded a refactored solution (on line 65) that I found online, because it worked really great. The logic of converting the string to an array of the characters in reverse and using .each_slice was really smart. I wish I thought of a solution like that.

# How did you initially iterate through the data structure?
# I used a while loop to iterate through my original string in reverse. I used a new string to hold the reverse string plus commas (which I counted using another counter to figure out the postitions.) 

# Do you feel your refactored solution is more readable than your initial solution? Why?
# I don't really think so. My refactored solution still uses a while loop with some convoluted if statements. Using .reverse and getting rid of one while loop really only saved two lines of code. The online solution that I found is way more readable.