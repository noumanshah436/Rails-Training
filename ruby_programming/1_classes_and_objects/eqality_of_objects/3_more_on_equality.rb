# https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/45-more-classes/lessons/105-equality_of_objects

# There are other methods that are crucial to get object equality correct: the eql? and hash methods. Why do we need these two over and above the simple == ?

# There are a lot of operations in Ruby that need to check the equality of two objects.
# While == serves the purpose well, it is not really fast. For operations that might involve large number of equality checks (like Array#uniq and Hash lookups), the speed disadvantage adds up and becomes an overhead.
#  To get around this, Ruby provides a hash method with every object. It returns a numeric value which is usually unique to every object.

class Item
  attr_reader :item_name, :qty

  def initialize(item_name, qty)
    @item_name = item_name
    @qty = qty
  end

  def to_s
    "Item (#{@item_name}, #{@qty})"
  end

  def hash
    self.item_name.hash ^ self.qty.hash
  end

  def eql?(other_item)
    puts "#eql? invoked"
    @item_name == other_item.item_name && @qty == other_item.qty
  end

end

p Item.new("abcd", 1).hash

items = [Item.new("abcd", 1), Item.new("abcd", 1), Item.new("abcd", 1)]
puts items.uniq


# Array#uniq now works correctly for the item object. This is because we implemented two methods: hash and eql?.

# What is the hash method doing? The ^ operator used is the binary XOR. The hash method returns the result of XORing all the instance variables that determine the state of the object. This ensures that whenever the state of the object changes, the hash code as well changes. Distinct hash codes for distinct objects is an extremely desirable property of hash codes through which operations on collections become faster.

# We also introduced the eql? method in the above example. In fact it was called by Array#uniq twice to check the equality of the elements of the array. Even though we use == to check for equality of objects, routines like Array#uniq uses the eql? instead. This means that we must implement the eql? method as well whenever we override ==. In most cases, these two methods will be identical, so you can implement the actual comparison in one method and have the other method just call it.

# To summarize, if you ever override any of the ==, eql? or the hash method, you must override the others as well.


# *******************************

# Wrapping up Object Equality in Ruby:

# Here is the final exercise in this lesson. I have an Item class which stores the item name, quantity and price.
#  You have to implement the equality methods for this object. Remember, you have to:

# Define a == method that compares the state of your object with that of the other one and returns a boolean value.
# Define a eql? method that simply calls the == to do the actual comparison.
# and
# Define a hash method that returns the result of XORing (using the ^ operator) the hash of all that instance variables which together determine the state of the object.
# Go forth, brave soldier!

class Item

  attr_reader :item_name, :quantity, :supplier_name, :price

  def initialize(item_name, quantity, supplier_name, price)
    @item_name = item_name
    @quantity = quantity
    @supplier_name = supplier_name
    @price = price
  end

  def ==(other_item)
    @item_name == other_item.item_name &&
    @quantity == other_item.quantity &&
    @supplier_name == other_item.supplier_name &&
    @price == other_item.price
  end

  def eql?(other_item)
    self == other_item
  end

  def hash
    @item_name.hash ^ @quantity.hash ^ @supplier_name.hash ^ @price.hash
  end
end
