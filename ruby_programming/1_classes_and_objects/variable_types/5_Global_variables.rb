# Global Variables:
# A global variable name always starts with $.
# Class variables are not available across classes.
# If you want to have a single variable, which is available across classes, you need to define a global variable.
# Its scope is global, means it can be accessed from anywhere in a program.
# By default, an uninitialized global variable has a nil value and its use can cause the programs to be cryptic and complex.

# !/usr/bin/ruby
# Ruby program to illustrate
# the Global Variables

# !/usr/bin/ruby

# global variable
$global_variable = 10

class Class1
  def print_global
    puts "Global variable in Class1 is #{$global_variable}"
  end
end

class Class2
  def print_global
    puts "Global variable in Class2 is #{$global_variable}"
  end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global
