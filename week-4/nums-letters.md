# 4.2 Numbers, Letters, and Variable Assignment

## Scroll down for reflections

### Release 1 Questions

###### What does `puts` do?
Puts will print out the output of your statement or expression to the console in a new line. It does not return this output value though; it returns `nil`.

###### What is an integer? What is a float?
An integer is a whole number. This means it has no decimal or fractional value at all. It can be negative or positive.

Floats, on the other hand, can include numbers with decimals.

###### What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Float division is the kind of division you learned in math class. These are exact calculations that produce the actual answers.

Integer division is more of an approximation. The result of an integer division calculation has to be an integer (unless typecasted). To avoid getting a decimal value, the floating point value is rounded down. For example in integer division, `8/3` would equal `2`.

### Release 2 Code
###### Hours in a year
```
irb(main):001:0> x = 24*365
=> 8760
irb(main):002:0> puts "There are #{x} hours in a year"
There are 8760 hours in a year
```
###### Minutes in a decade (using same `x` from previous exercise)
```
irb(main):003:0> min_in_decade = 60*x*10
=> 5256000
irb(main):004:0> puts "There are #{min_in_decade} minutes in a decade"
=> "There are 5256000 minutes in a decade"
```

## Challenge solution files
[Defining Variables](https://github.com/menuka-s/phase-0/blob/master/week-4/defining-variables.rb)

[Simple String Methods](https://github.com/menuka-s/phase-0/blob/master/week-4/simple-string.rb)

[Local Variables and Basic Arithmetical Operations](https://github.com/menuka-s/phase-0/blob/master/week-4/basic-math.rb)

## Reflections
###### How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Just like a normal math problem. It does the same order of operations that we used in grade school. It will take into account the type of variables you are using. If you are using integers, then integer division will take place instead of float division.

###### What is the difference between integers and floats?
An integer is a whole number. This means it has no decimal or fractional value at all. It can be negative or positive.

Floats, on the other hand, can include numbers with decimals.

###### What is the difference between float and integer division?
Float division is the kind of division you learned in math class. These are exact calculations that produce the actual answers.

Integer division is more of an approximation. The result of an integer division calculation has to be an integer (unless typecasted). To avoid getting a decimal value, the floating point value is rounded down. For example in integer division, `8/3` would equal `2`.

###### What are strings? Why and when would you use them?
Strings are variables that hold sets of characters. These can be alphanumeric characters or symbols. You use them when you want to store any type of information that is conveyed through text.

###### What are local variables? Why and when would you use them?
Local variables are stored infomation used directly by and declared within the funtion/argument that houses them. They are good to use when they originate outside the program (through user prompts) or not constants that are already known through a program (say the function needs to know the user's name; it doesn't know that before the user starts the function and types it in). 

###### How was this challenge? Did you get a good review of some of the basics?
The challenge was fine and pretty basic. I did spend too much time looking at the simple string challenge and not realizing that `"LOOC SI YBUR"` is `"Ruby is cool"` backwards and `upcase`'d.

