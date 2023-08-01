# Include is used to importing module code. Ruby will throw an error when we try to access the methods of import module with the class directly
#  because it gets imported as a subclass for the superclass. So, the only way is to access it through the instance of the class.

# Extend is also used to importing module code but extends import them as class methods. Ruby will throw an error when we try to access methods of
#  import module with the instance of the class because the module gets import to the superclass just as the instance of the extended module.
#  So, the only way is to access it through the class definition.

# In simple words, the difference between include and extend is that
#  ‘include’ is for adding methods only to an instance of a class and ‘extend’ is for adding methods to the class but not to its instance.

# include import methods as instance methods while extend import the module methods as class methods on the class.

module Geek
  def geeks
    puts 'GeeksforGeeks!'
  end
end

class Lord
  # only can access geek methods with the instance of the class.
  include Geek
end

class Star
  # only can access geek methods with the class definition.
  extend Geek
end

# object access
Lord.new.geeks

# class access
Star.geeks

# NoMethodError: undefined method
# `geeks' for Lord:Class
# Lord.geeks

# ***************************

# If we want to import instance methods on a class and its class methods too. We can ‘include’ and ‘extend’ it at the same time.
# Ruby program to understand include and extend

# Creating a module contains a method



# module Geek
#   def prints(x)
#     puts x
#   end
# end

# class GFG
# # by using both include and extend we can access them by both instances and class name.
# include Geek
# extend Geek
# end

# # access the prints() in Geek
# # module by include in Lord class
# GFG.new.prints("Howdy") # object access

# # access the prints() in Geek
# # module by extend it in Lord class
# GFG.prints("GeeksforGeeks!!") # class access
