# 5.6 Create Accountability Groups

# PSEUDOCODE
# Input: List of names

# Output: One data structure that consists of Arrays of 4 or 5 elements(which are names). Make sure groups are randomized.

# Steps
# 1. Assume list of names is one array already. 
# 2. Randomize it. (Optional)
# 3. Check if it makes sense to divide groups into 3,4, or 5 people.
# 4. Chop up main array to slices
# 5. Return data structure (probably a hash so it is somewhat organized)



# Initial Solution

=begin

def create_groups(list_of_names)
	group_array = list_of_names.each_slice(5).to_a
	group_len = group_array.length

	if group_array.length > 1
		group_array[group_len - 2] = group_array[group_len - 2].concat(group_array[group_len-1])
		group_array[group_len - 2], group_array[group_len - 1] = group_array[group_len-2].each_slice((group_array[group_len-2].length/2.0).round).to_a
	end

	group_hash = {}
	group_array.each_index do |x|
		group_hash["Group " + (x+1).to_s] = group_array[x]
	end

	return group_hash

end

=end

# Refactored Solution

def create_groups(list_of_names)
	group_array = list_of_names.shuffle.each_slice(5).to_a
	group_hash = {}

	if group_array.length > 1
		temp_array = group_array[group_array.length - 2].concat(group_array[group_array.length-1])
		group_array[group_array.length - 2], group_array[group_array.length - 1] = temp_array.each_slice((temp_array.length/2.0).round).to_a
	end

	group_array.each_index do |x|
		group_hash["Group " + (x+1).to_s] = group_array[x]
	end

	return group_hash

end



#Driver Test code
#  Create new array of any size to simulate list of multiple names
# p create_groups(Array.new(18))


# Reflections

# -What was the most interesting and most difficult part of this challenge?
# The most interesting aspect was using .each_slice to help in this challenge. I know I wasn't supposed to use enumerable methods in the initial solution, but .each_slice was the best thing to use for my pseudocode, and I already used it in a previous challenge.
# The most difficult part of this challenge was trying to figure out a way to accomplish this challenge without any enumerable methods. Still haven't figured out a way. My refactored solution also is very similar to my initial solution and I wish I found some methods that provided less complexity to accomplish this challenge.

# -Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Honestly, as the challenges get harder, I'm finding that I've been modifiying my pseudocode a lot more as I'm working on the initial challenge. For example in this challenge, I figured out that I couple combine the last two groups of arrays and divide them in half so I'd never have a group of less then 3 elements. My pseudocode didn't have that.

# -Was your approach for automating this task a good solution? What could have made it even better?
# My solution will automatically convert an array of names into groups seperated into a hash, so I think that is a good starting point. I think classes would be better since we can save classes and do things like remove people a lot easier.

# -What data structure did you decide to store the accountability groups in and why?
# I used a hash. This way I could name each group with a key (i.e. "Accountability group 1"). This makes it a little more organized. 

# -What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I found a cool method to randomize arrays (.shuffle). Otherwise I highly recommend .each_slice for chopping the array.