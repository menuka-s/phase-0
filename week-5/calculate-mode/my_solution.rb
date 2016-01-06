# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Tom Yancy]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# Array of numbers

# What is the output? (i.e. What should the code return?)
# Array of most frequent numbers

# What are the steps needed to solve the problem?
# 1. Create a hash
# 2. Iterate through the array, and each value is becomes hash key. Increment value +1
# 3. Look through hash for highest value to key


# 1. Initial Solution

=begin
def mode(arr)
  num_hash = {}
  arr.each do |x|
    if num_hash.has_key?(x)
      num_hash[x] += 1
    else
      num_hash[x] = 1
    end
  end

  modes = []
  max_value = num_hash.values.max
  num_hash.select {|key, value| modes << key if value == max_value }
  modes
end
=end


# 3. Refactored Solution

def mode(arr)
  num_hash = arr.each_with_object(Hash.new(0)) { |num,hash| hash[num] += 1 }
  Hash[num_hash.select {|k,v| v == num_hash.values.max }].keys
end



# 4. Reflection
=begin
  
* Which data structure did you and your pair decide to implement and why?
We decided to create a hash that will store the values in the array as keys. Each key in the hash has a value of the total occurrences of that key in the array. We chose this because it would more efficient than using an array to hold numbers and the total occurrence values of each number.

* Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
Yeah, it made the initial solution easier to code since we made some rough steps on what we should code.
 
* What issues/successes did you run into when translating your pseudocode to code?
We needed to figure out a way to get the highest values in the hash.

* What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used a .each iterator in the initial solution. In the refactored solution we used .each_with_object to create a hash and count the values in one line. It was a little hard to understand the method, but we made it work.
  
 =end
