##### GPS 2_2 #####

##### PSEUDOCODE #####

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # initialize hash
  # add each item 
  # set default quantity
  # print the list to the console [we can use the print method we will create]
# output: hash

# Method toadd an item to a list
# input: item name and optional quantity
# steps: 
# 1. Receive input that is one item or two items.
# 2. If input is already in the hash, update quantity and print "Item is already in list, and quanity has been updated. Otherwise:
# 3. If one item, add item to hash as a key and set default to 1; if two items, add as key and value.
# 4. Print statement "Item" has been added to your list.
# output: updated list (hash)

# Method to remove an item from the list
# input: item name (key)
# steps: 
# 1. Receive input (key)
# 2. Delete key
# output: Removed item name from list.

# Method to update the quantity of an item
# input: item name and a quatity
# steps:
# 1. Receive input. Check if item is in list.
# 2. If item is in list, can look for item key, and update value.
# 3. Print statement, "item has been updated to new quantity of num"
# output: print statement

# Method to print a list and make it look pretty
# input: command from user
# steps: 
# 1. Print title of list
# 2. Iterate through all keys .each 
# 3. print key + ":" + tab + value
# output: will be formatted list


##### CODE #####
##### ORIGINAL SOLUTION ######

=begin

### Method to create new list ###
def new_list(string_list)
  grocery_list = {}
  unless string_list.nil?
    list_array = string_list.split(" ")
    list_array.each do |item|  
      grocery_list[item] = 1
    end
    print_list(grocery_list)
    return grocery_list
  else
    print "Error: empty string"
  end
end

### Method to add item to list ###
def add_item(list, item, quantity=1)
  # if quantity.nil?
  #   list[item] = 1
  # else 
    list[item] = quantity
  # end
  return list
end

### Remove item ###
def remove_item(list, item)
  list.delete(item)
  return list
end

### Method to update quantity for existing item ###
def update_quantity(list, item, num)
  list[item] = num #Will add item if it doesn't exist
  return list
end

### Print list ###
def print_list(list)
  if list.nil?
    print "List doesn't exist"
  else
    puts "Grocery List"
    list.each do |key, value|
      puts "#{key}: #{value}"
    end
  end
end

=end

##### REFACTORED SOLUTION #####

### Method to create new list ###
def new_list(string_list)
  grocery_list = Hash[string_list.split(" ").map {|item| [item, 1]}]
  print_list(grocery_list)
end  

### Method to update or add new item ###
# I'm combining the add and update methods since similar code can be used to accomplish both
def add_or_update_item(list, item, quantity=1)
  unless list.nil?
    list[item] = quantity
    return list
  else
    return "List doesn't exist\n"  
  end
end

### Removes item ###
def remove_item(list, item)
  unless list.nil?
    list.delete(item)
    puts "#{item} has been deleted\n\n"
  else
    puts "List doesn't exist\n"
  end
end

### Prints list ###
def print_list(list)
  if list.nil?
    print "List doesn't exist\n"
  else
    puts "Grocery List Contents: "
    list.each do |key, value|
      puts "#{key}:\t#{value}"  
    end
    print "\n"
    return list
  end
end






##### DRIVER CODE #####
#nilList = nil

#p testlist = new_list("milk apples bread eggs")
#p add_item(testlist, "banana")
#p add_item(testlist, "pear", 2)
#p remove_item(testlist, "bread")
#p update_quantity(testlist, "milk", 3)
#print_list(testlist)

testlist = new_list("milk apples bread eggs")
add_or_update_item(testlist, "banana")
remove_item(testlist, "milk")
print_list(testlist)


##### REFLECTION #####
# What did you learn about pseudocode from working on this challenge?
# The pseudocode was a big help for developing the overall structure of the initial solutions. It was nice to break up the methods into step by step pieces to complete.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# Arrays would pose a problem if we want to store quantity values for a list of items, we would probably have to make a 2D array to complete this challenge which each element of the array being a smaller array that has the item and the quantity. Hashes can be easier to create since we can have the item be the key.

# What does a method return?
# A method will return the last item edited, or return some specific item you specify.

# What kind of things can you pass into methods as arguments?
# You can pass anything, variables, data structures, other methods.

# How can you pass information between methods?
# We can create classes to store information, or else we can pass local variables between methods by calling other methods within the first method. Or use global variables.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# Using local variables for this challenge was a little challenging at first, but it makes sense now. I'd rather use classes, but I can see how the implementation in this challenge will work in the future. I think there could have been more refactoring I could have done.
