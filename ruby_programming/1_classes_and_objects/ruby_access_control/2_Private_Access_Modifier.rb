# Private methods are those methods which are not accessible outside the class or
# in other words, private methods are called only inside the class definition.
# The methods of the class can access private members.
# In private methods, we do not use the self-keyword.
# By default, initialize method will be private method.
# The user cannot make the initialize method as the public method.
# A private method is defined by using private keyword.
# private method can be called in public method of the class

# NOTE: As we know that private methods are strictly restricted for their visibility,
# only defined class members can access these methods, but they can be inherited by the subclass.
# A subclass can access them and can override them.
 
# !/usr/bin/ruby

# creating class
class GeeksforGeeks
  # using initialize method
  # it can't be private
  def initialize
    puts 'This is the initialize Method'
  end

  # public method
  def geeks_1
    puts 'Public geeks_1 Method'
  end

  # using the private keyword to
  # declare a private method
  private

  def geeks_2
    puts 'This is Private Method'
  end
end

# creating the object of
# the class GeeksforGeeks
obj = GeeksforGeeks.new

# calling method geeks_1
# (geeks1 method is public method)
obj.geeks_1

# calling private method will give the error
obj.geeks_2
