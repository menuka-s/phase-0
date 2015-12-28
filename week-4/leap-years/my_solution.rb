# Leap Years

# I worked on this challenge [with: Jonathan Silvestri].


# Your Solution Below

def leap_year?(x)
  if x % 100 == 0
    if x % 400 == 0
      return true
    else
      return false
    end
  elsif x % 4 == 0
    return true
  else
    return false
  end
end