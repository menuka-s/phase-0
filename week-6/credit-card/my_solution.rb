# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Mike Pintar].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: Integer
# Output: True or False
# Steps:
# Count number of digits in the integer (as a string).
# Convert string of digits into an array
# Convert each object in the array back into an integer
# Use .map! to multiply each integer by 2
# Iterate through objects in the array
# If object is greater than 9, split into single digits and add together
# Sum objects.
# Return true if Sum mod 10 == 0, else return false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

=begin

class CreditCard

  attr_reader :total_sum
  
  def initialize(card_number)
    @card_num = card_number
    raise ArgumentError.new("Card number must be exactly 16 digits") if @card_num.to_s.length != 16 
  end
  

  def check_card
    @total_sum=0
    card_array = @card_num.to_s.split("")
    card_array.map! do |num|
      if card_array.index(num).even?
         num.to_i*2
      else
        num = num.to_i
      end
    end

    card_array.each do |num|
      if num > 9
        @total_sum += (num-10+1)
      else
        @total_sum += num
      end
    end

    @total_sum % 10 == 0 ? true: false
  end
  
end

=end

# Refactored Solution

class CreditCard
  
  def initialize(card_num)
    @card_array = card_num.to_s.split("")
    raise ArgumentError.new("Card number must be exactly 16 digits") if @card_array.length != 16 
  end
  
  def check_card
    total_sum = 0
    @card_array.each.with_index do |num, index|
      if index.even?
        num.to_i*2 > 9 ? total_sum += (num.to_i*2-10+1) : total_sum += num.to_i*2
      else
        total_sum += num.to_i
      end
    end
    total_sum % 10 == 0 ? true : false
  end  
  
end


# Reflection

# What was the most difficult part of this challenge for you and your pair?
# We had trouble trying to get the index of the elements in our array. Array.index(element) worked in our initial solution,  but not for the refactored one for some reason. Also we forgot to double only every odd number.

# What new methods did you find to help you when you refactored?
# We used .with_index to get the index easily in our refactored solution.

# What concepts or learnings were you able to solidify in this challenge?
# I learned more about iterating over loops and what methods to use when I want to get indexes.