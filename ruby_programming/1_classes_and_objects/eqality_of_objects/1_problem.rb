# It is easy to check for equality for standard Ruby objects like strings, numbers, arrays and hashes. Some quick examples:

puts [1,2] == [1,2]
puts [1,2] == [1,3]

puts "a" == "xyz"

# ***********************************

# Arrays, string and Hashes are standard Ruby data structures the equality operator == is already implemented by Ruby for them.
# But how do you check for equality for objects that you define? Take a look at this simple Item class:

class Item
  attr_reader :item_name, :qty
  
  def initialize(item_name, qty)
      @item_name = item_name
      @qty = qty
  end

  def ==(other)
    self.class == other.class && @item_name == other.item_name && @qty == other.qty
  end

end

p Item.new("abcd",1) == Item.new("abcd",1)
