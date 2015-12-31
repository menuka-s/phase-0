# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

#First Solution
=begin

def array_concat(array_1, array_2)
  # Your code here
  array_2.each do |x| 
  	array_1.push(x)
  end
  return array_1
end

=end

#Refactored Solution
def array_concat(array_1, array_2)
	return (array_1 << array_2).flatten
end