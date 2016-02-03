# OO Basics: Student


# I worked on this challenge [with: Sydney Rossman-Reich].
# This challenge took me [2] hours.


# Pseudocode

# Release 1
# 1. Create empty array
# 2. At each index create new Student object with first_name and score array

# Release 2
# 1. Create an average score method in the class
# 2. This would add the scores divide by length
# 3. Create letter_grade method that shoots out letter based on score

# Release 3
# 1. Create linear search method outside of class
# 2. Arguments should be array and student name
# 3. Create counter to iterate through array.
# 4. For each object in array, check its first_name
# 5. If it matches, return counter number - this is the index
# 6. If the name isn't in the array, return -1

# Release 4
# 1. Sort array since Binary search only works on sorted lists
# 2. Figure out midpoint of array (index)
# 3. If our name is the midpoint return that index
# 4. Else check if it should go left (smaller) or right (bigger) than the midpoint
# 5. If so, recursively call this method again on the smaller chunk
# 6. If the value is never found after getting to the last recursion iteration, return -1

# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name,scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end
  
  def average
    @scores.reduce(:+)/@scores.length
  end   
  
  def letter_grade
    return "A" if average >= 90
    return "B" if average >= 80
    return "C" if average >= 70
    return "D" if average >= 60
    return "E" if average < 60
  end
  
end

# def linear_search(my_array, name)
#   counter = 0    
#   until counter == my_array.length
#     if my_array[counter].first_name == name        
#       return counter
#     end
#     counter +=1
#   end
#   return -1
# end

# def binary_search(my_array, name, from=0, to=nil)
#     test_array = my_array.sort{|a,b| a.first_name <=> b.first_name}
#     if to == nil
#         to = test_array.count - 1
#     end

#     if (to < from)
#     	return -1
#     end
#     mid = (from + to) / 2

#     if (name <=> test_array[mid].first_name) == -1
#         return binary_search test_array, name, from, mid - 1
#     elsif (name <=> test_array[mid].first_name) == 1
#         return binary_search test_array, name, mid + 1, to
#     elsif (name <=> test_array[mid].first_name) == 0
#         return mid
#     end
# end


students = []
students[0] = Student.new("Alex",[100,100,100,0,100])
students[1] = Student.new("Sam",[30,20,50,100,20])
students[2] = Student.new("Menuka",[30,20,50,100,20])
students[3] = Student.new("Sydney",[30,20,50,100,20])
students[4] = Student.new("Neha",[30,20,50,100,20])

# Refactored Solution

def linear_search(my_array, name)
	index = my_array.index{|obj| obj.first_name == name}
	return index.nil? ? -1 : index
end

#Just renamed some terms to hopefully make it clearer to understand
def binary_search(my_array, name, from_pos=0, to_pos=nil)
    sorted_array = my_array.sort{|a,b| a.first_name <=> b.first_name}
    if to_pos == nil
        to_pos = sorted_array.count - 1
    end

    if (to_pos < from_pos)
    	return -1
    end
    mid_pos = (from_pos + to_pos) / 2

    if (name <=> sorted_array[mid_pos].first_name) == -1
        return binary_search sorted_array, name, from_pos, mid_pos - 1
    elsif (name <=> sorted_array[mid_pos].first_name) == 1
        return binary_search sorted_array, name, mid_pos + 1, to_pos
    elsif (name <=> sorted_array[mid_pos].first_name) == 0
        return mid_pos
    end
end




# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1


#p linear_search(students, "test")
p binary_search(students, "Menuka") == 1
p binary_search(students, "adf") == -1


# Reflection

#What concepts did you review in this challenge?
#How to access properties in objects and create class-specific methods.

#What is still confusing to you about Ruby?
#The Binary search algorithm was really confusing. They only work on sorted lists, so we didn't know if we were supposed to sort ours first or not.

#What are you going to study to get more prepared for Phase 1?
#Enumerable methods in Ruby. It would be great to have a good knowledge of what methods are available and when I one would be better over another. 