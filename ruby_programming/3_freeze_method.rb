# https://www.educative.io/edpresso/how-to-freeze-objects-in-ruby
# https://www.youtube.com/watch?v=laH0v3ZWu2I&list=PL6Eq_d2HYExeKIi4d9rUEoD6qSiKS4vfe&index=7

# The freeze method in Ruby is used to ensure that an object cannot be modified. 
# This method is a great way to create immutable objects

# Any attempt to modify an object that has called the freeze method will result in the program throwing a runtime error.
# Freeze is only one level deep

# Ruby objects, such as integers and floats, are all frozen by default and cannot be updated or modified.

# *******************************************

str = "Hello World".freeze
# str << "This is a new string"    #  try to modify ( appending here will cause error )
# puts str                         

# *******************************************

# It is important to note that variables referencing frozen objects can be updated.
#  This is because only the objects are frozen, not the variables that point to those objects.


str = "Hello World" 
str.freeze
str = "This is a new string"
puts str                              # the program prints the variable without errors


# *******************************************

arr = ["Nouman", "farhan", "Shahmeer"].freeze
# arr<< "Nomi"    #  can't modify frozen Array

# imp note here is that freeze will not freeze every thing, it will only freeze the immediate object ( that is array)
# but we can modify the objects inside the array like 
# ( this is what one level deep means )

arr[0].concat("Nouman042")
p arr


# ******************************************
# to verify if an object is immutable.

str1 = "Hello World"
str1.freeze

str2 = "This a second string"

var = 20.5
var.freeze

puts 20.frozen?   # Ruby objects, such as integers and floats, are all frozen by default and cannot be updated or modified.
puts str1.frozen?
puts str2.frozen?
puts var.frozen?
