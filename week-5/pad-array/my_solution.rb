# Pad an Array

# I worked on this challenge [with: Carl Conroy]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# Array, new_size for the array, and an optional padding value

# What is the output? (i.e. What should the code return?)
# A new array, or a modified array (based on usage of destructive method) with size determined by min_size

# What are the steps needed to solve the problem?
# 1. Check size of array and compare to min_size
# 2. If min_size is smaller, return original array (or new array with same values)
# If min_size is larger, create array of that size and map orignal array to that. Or modify the orignal one.
# return array or new array based on destructive method usage. 


# 1. Initial Solution

=begin

def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if min_size > array.size
    for num in array.size...min_size
      array.push(value)
    end
  end
  return array
end



def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  if min_size <= array.size
    my_array = Array.new(array.size)
    counter = 0
    while counter < array.size
      my_array[counter] = array[counter]
      counter += 1
    end
  else
    my_array = Array.new(min_size, value)
    counter = 0
    while counter < array.size
      my_array[counter] = array[counter]
      counter += 1
    end  
  end
  return my_array
end

=end

# 3. Refactored Solution


def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if min_size > array.size
     array.concat(Array.new(min_size-array.size, value))
  end
  return array
end



def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  if min_size > array.size
    return array + Array.new(min_size-array.size, value)
  else
    return array.dup
  end

end


# 4. Reflection

#Were you successful in breaking the problem down into small steps?
# I feel we were able to break it down in to small steps which we then tackled one-by-one.

#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Kind of, we changed out initial solution to be a little different than the pseudocode to figure out how to pass a new object instead of modifiying the original array. We didn't write about iterators in the pseudocode a lot, but we used them in our solution.

#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# No, we had to change it up since were weren't creating a new object in the non-destructive method.

#When you refactored, did you find any existing methods in Ruby to clean up your code?
# Yes, we were able to manipulate the concat method and adding an array together to accomplish our task.

#How readable is your solution? Did you and your pair choose descriptive variable names?
#I think it is pretty readable. Especially our refactored solutions.

#What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods will modify the existing variable or data structure. Non-destructive will use the variable, but not modify it and return a new object.
