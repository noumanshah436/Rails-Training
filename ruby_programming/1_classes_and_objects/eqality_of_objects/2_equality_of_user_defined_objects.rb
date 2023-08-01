# In Ruby, all binary operators (those which have two operands) including == are actually methods that gets invoked on the
# parameter on the left-hand side of the operator.
#  In practice that means a == b is the same as a.==(b).

class Item
  attr_accessor :item_name, :qty
  def initialize(item_name, qty)
      @item_name = item_name
      @qty = qty
  end

  def to_s
      "Item (#{@item_name}, #{@qty})"
  end

  def ==(other_item)
    # self.item_name == other_item.item_name && self.qty == other_item.qty      # OR
    @item_name == other_item.item_name && @qty == other_item.qty
  end
end



# this line should invoke the `==` method defined in the Item class.
puts Item.new("abcd",1) == Item.new("abcd", 1)


# Note that you can override almost every operator like this.
# For instance, if you need to be able to add two Items that have the same item name, you can implement the + operator on the Item class which returns a new Item object that holds the combined quantity of both the Items.
