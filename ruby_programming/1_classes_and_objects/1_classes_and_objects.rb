# In Ruby, like other class-based object oriented languages that you may already be familiar with,
# classes act as the factories that build objects. An object built by a certain class is called 'an instance of that class.'
# Typically, calling the new method on a class results in an instance being created.

# Class have two distinct features:
#   1)  state ( attributes)
#   2)   behavior ( methods )
# A class is a blueprint from which objects are created.
# The object is also called as an instance of a class.
# For Example:
#       1)  the animal is a class and mammals, birds, fish, reptiles, and amphibians are the instances of the class.
#       2)  Similarly, the sales department is the class and the objects of the class are sales data, sales manager, and secretary.

# In ruby every thing is an object

# Syntax:

# class Class_name

# end


class Book
    attr_accessor :title, :author, :numPages
end

# If we want to access instance variables outside of class, we need to create getter and setter for it
# attr_accessor will create getter and setter for us

book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JK Rowling"
book1.numPages = 500

puts book1.title



# https://www.geeksforgeeks.org/ruby-getters-and-setters-method/?ref=lbp
