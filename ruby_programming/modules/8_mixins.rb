# Ruby does not support multiple inheritance directly and instead uses a facility called mixin.
# Mixins in Ruby allows modules to access instance methods of another one using include method.

# Mixins provides a controlled way of adding functionality to classes.
# The code in the mixin starts to interact with code in the class.

# In Ruby, a code wrapped up in a module is called mixins that a class can include or extend. A class consist many mixins.

# In the mixin concept we are using the modules concept, in one class we can include many modules and every modules
# contains some class and methods, which means we are able to access multiple inheritance here with the help of the modules
# and this methodology is called mixin in Ruby.
# We can use simple include keyword for including many modules inside a class and we know that every modules can have some class and methods.


# Module can have methods and constants
# ************************



# Modules consist a method
module Child_1
  def a1
    puts 'This is Child one.'
  end
end

module Child_2
  def a1
    puts 'This is Child two.'
  end
end

module Child_3
  def a3
  puts 'This is Child three.'
  end
end

# Creating class
class Parent
  include Child_1
  include Child_2
  include Child_3
  def display
    puts 'Three modules have included.'
  end
end

# Creating object
object = Parent.new

# Calling methods
object.display
object.a1
# object.a1
object.a3
