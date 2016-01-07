# Research Methods

# I spent [.5] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}




# Person 3
def my_array_sorting_method(source_array)
  source_array.sort_by(&:to_s)

end

def my_hash_sorting_method(source_hash)
  source_hash.sort_by {|key, value| value}
end

# Identify and describe the Ruby method(s) you implemented.

# Array-sort
# In the array-sorting method, I wanted to sort everything by number, followed by stings. 
# A way I could do that is to convert all elements in the array into a string and then sort. 
# Strings of numbers will sort before words in an array. .sort_by(&:to_s) accomplishes this.

# Hash-sort
# Here, I wanted to only sort the keys by value, not by key. 
# I used another .sort_by block, but designated inside of it to sort only by the values.


