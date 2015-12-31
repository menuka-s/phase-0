
# Factorial

# I worked on this challenge [with: Jon Schwartz].


# Your Solution Below
def factorial(number)
  # Your code goes here
  curr_product = 1
  while number > 0
  	curr_product *= number
  	number -= 1
  end
  return curr_product
end
