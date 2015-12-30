# Longest String

# I worked on this challenge [by myself].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


#Your Solution Below

#Original Solution
=begin
def longest_string(list_of_words)
  # Your code goes here!

  unless list_of_words.nil?
  	curr_string = list_of_words[0]
  	list_of_words.each do |word|
  		if word.length > curr_string.length
  			curr_string = word
  		end
  	end
  	return curr_string
  else
  	return nil
  end
end
=end

#Refactored Solution
def longest_string(list_of_words)
	return list_of_words.max{|a,b| a.size <=> b.size}
end