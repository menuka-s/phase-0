# First Mini-Challenge
def name_greeting
  puts "What is your first name?"
  first_name = gets.chomp
  puts "What is your middle name?"
  middle_name = gets.chomp
  puts "What is your last name?"
  last_name = gets.chomp

  puts "Hello #{first_name} #{middle_name} #{last_name}"
end

name_greeting

# Second Mini-Challenge
def better_number
  puts "What is your favorite number?"
  better_num = Integer(gets.chomp)
  better_num += 1
  puts "I think #{better_num} might be a bigger and better number."
end

better_number

=begin

REFLECTIONS

-How do you define a local variable?
You can declare a variable with the syntax of 'local_variable = "sort sort of information"''

-How do you define a method?
There are multiple ways of defining a method. You could do:
  def method
    #method body
  end
or if you need arguments:
  def method(argumentX)
    #method body
  end


-What is the difference between a local variable and a method?
Methods in general do a certain process, such as calculating a value or finding some data. Local variables will hold or store some sort of information, such as a integer or string.

-How do you run a ruby program from the command line?
If you have a .rb file, you can run it in command line with 'ruby my_file.rb', where my_file is the name of your file.

How do you run an RSpec file from the command line?
If you have an RSpec file you can run it with 'RSpec my_rspec_file.rb', where ,my_rspec_file.rb is the name of your file.

What was confusing about this material? What made sense?
A lot of this was familiar since we learned some of the basics for our inteview. I got confused with Ruby and IRB in command line; I thought typing 'Ruby' would open the ruby shell. IRB does that.


=end
