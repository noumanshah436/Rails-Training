# self is initially set to main, an instance of the Object class that is automatically created whenever a Ruby program is interpreted.

# def name
#   puts self    # main
#   puts self.class  # Object
# end

# name

# *******************

# self is a reserved keyword in Ruby that always refers to the current object and classes are also objects,
# but the object self refers to frequently changes based on the situation or context.

#  So if you're in an instance, self refers to the instance. If you're in a class, self refers to that class.

# *******************


# self in instance refers to the instance object
class Person
  def name
    puts self  # #<Person:0x00005651890ab208>
  end
end
Person.new.name

# *******************
# In a class definition (but not in an instance method), the self keyword refers to the class itself.
# Here we have Person class, inside which we are outputting the value of self:

class Person
 puts self   # Person
end

