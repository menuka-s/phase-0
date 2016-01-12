# Your Names
# 1) Menuka Samaranayake @menuka
# 2) Charlie Bliss @charliebliss

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# Initial Solution 

=begin 

def serving_size_calc(item_to_make, num_of_ingredients)
  #hash of ingredients and serving size
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #Input validation
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #Ingredient Cost
  serving_size = library.values_at(item_to_make)[0]
  #Ingredients Leftover
  remaining_ingredients = num_of_ingredients % serving_size

  case remaining_ingredients
  #Calculates created recipes no leftover
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  #Calculates created recipes with leftover
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

=end

# To-Do List

# Refactor input validation
# Change serving size variable name
# Refactor ingredient cost calculator
# Refactor Created recipes calculator
# Add Leftover Ingredient Suggestion

# Refactored solution

def serving_size_calc(item_to_make, num_of_ingredients)
  #hash of ingredients and serving size
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  # Input Validation
  if !library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input") 
  end


  #Ingredient Cost
  ingredient_cost = library[item_to_make]
  #Ingredients Leftover
  remaining_ingredients = num_of_ingredients % ingredient_cost

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / ingredient_cost} of #{item_to_make}"
  else
    extra_item_and_quantity = suggestion_maker(library, remaining_ingredients)
    return "Calculations complete: Make #{num_of_ingredients / ingredient_cost} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{extra_item_and_quantity[0]}, quantity: #{extra_item_and_quantity[1]}"
  end

end


# Recursion method that will figure out what else can be made plus the quantity
def suggestion_maker(item_hash, num_remainder, count=0)
  count += 1
  if num_remainder == 0
    return
  else
    if item_hash.has_value?(num_remainder)
      return item_hash.key(num_remainder), count
    else
      return suggestion_maker(item_hash, num_remainder - 1, count)
    end
  end
end



# Driver code

#p serving_size_calc("pie", 7)
#p serving_size_calc("pie", 9)
#p serving_size_calc("cake", 5)
#p serving_size_calc("cake", 8)
#p serving_size_calc("cookie", 1)
#p serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

#What did you learn about making code readable by working on this challenge?
# Wow, it is really important to make code readable for others. I will definitely work on making my code more readable.

#Did you learn any new methods? What did you learn about them?
# I don't know if I learned any new methods, but my guide and parter did help a lot in trying to break down and understand the code piece by piece.

#What did you learn about accessing data in hashes? 
# There are different ways to access data in a hash including .include? .has_key? .has_value? etc.

#What concepts were solidified when working through this challenge?
# Breaking down code and understanding it in sections was my main problem with this challenge. I was really confused at first. It really helped when working with a guide.

