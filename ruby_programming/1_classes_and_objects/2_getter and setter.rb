# https://www.geeksforgeeks.org/ruby-getters-and-setters-method/



# attr_reader :description will define def description; @description; end
# attr_writer :description gives you def description=(new_description); @description = new_description; end
# and
# attr_accessor :description is equivalent to attr_reader :description; attr_writer :description



class Item
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end

  def quantity=(new_quantity)    #  custom setter
    @quantity = new_quantity
  end

  def quantity                   #  custom getter
    @quantity
  end
end

# We can access instance variables, within the class directlt, in any instance method/

# But if we want to access instance variables outside of class, we need to create getter and setter for it.
# attr_accessor will create both getter and setter for us

item = Item.new("Lays", 50)
p item.quantity
