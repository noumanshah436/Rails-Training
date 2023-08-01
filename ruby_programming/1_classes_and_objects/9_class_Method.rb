# https://www.geeksforgeeks.org/ruby-class-method-and-variables/?ref=lbp

# Class Methods are the methods that are defined inside the class, public class methods can be accessed with the help of objects. The method is marked as private by default, when a method is defined outside of the class definition. By default, methods are marked as public which is defined in the class definition.

# ************************

# Syntax 1:

# def class_method_name
#   # some code
# end


# Here, we can access the above method only with the help of an object.

# ************************

# Syntax 2:

# def class_name.class_method_name or self.class_method_name
#   # some code
# end

# Here, we can access the above method there is no need to create objects of the Class as we can directly access it.
# Here, the self keyword refers to the entire class itself, not to an instance of the class.
# In this case, we are inside the class only, not inside an instance method of that class. So, we are in the class scope.

# ************************

# Program in Ruby for a count of total Grocery items

class Grocery
  # class variable
  @@total_count = 0

  # class array
  @@items_list = []

  def add_item(item)
    # adding item to the array
    @@items_list.push(item)
    @@total_count += 1 # counting
  end

  def print_items
    puts "Total number of items --> #{@@total_count}"
    puts "All items --> #{@@items_list}"
  end

  # direct access
  def self.printitems_only       # or Grocery.printitems_only
    puts "\nGrocery.printitems_only", @@items_list.join("\n")
  end
end

list = Grocery.new

list.add_item('shampoo')
list.add_item('face wash')
list.add_item('serum')
list.add_item('mud pack')
list.add_item('tea tree oil')
list.add_item('toner')

list.print_items

# direct access
Grocery.printitems_only

# throws an error
# list.printitems_only

# *************************************

# In def self.printitems_only, the keyword self denotes that the method printitems_only is being defined in the context of the Class itself, not its instances.
#  Any method definition without the self qualifier is by default an instance method.


# Class methods do not have access to instance methods or instance variables.
# However instance methods can access both class methods and class variables.
