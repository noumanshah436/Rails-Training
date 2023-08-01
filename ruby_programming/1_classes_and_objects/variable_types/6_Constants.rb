# https://www.rubyguides.com/2017/07/ruby-constants/

# *************************

# A constant is a type of variable which always starts with a capital letter.
# They can only be defined outside of methods, unless you use metaprogramming.

# Constants are used for values that aren’t supposed to change, but Ruby doesn’t prevent you from changing them.

# A constant doesn’t require any special symbol or syntax to declare. You just need to make the first letter an uppercase letter.

# The following are valid constants:

ABC = 1
Goo = 2
Foo = 3

# Foo =45
# p Foo


# ********************
# Notice that you can’t define constants inside a method.
# You will get this cryptic error message:
# ********************

# So just define your constants outside methods, typically we want to have constant definitions at the top of your class
#  so they are clearly visible.


class RubyBlog
  URL    = "rubyguides.com"
  AUTHOR = "Nouman"
end

# You can then access these constants inside the class methods or outside the class using the following syntax:

p RubyBlog::AUTHOR
