# I worked on this challenge [with: Jonathan Silvestri].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!

  if (a + b > c) && (b + c > a) && (c + a > b)
    return true
  else
    return false
  end


end



