# # In Ruby, data types can be categorized as either mutable or immutable based on whether their values can be changed after they are created.

# Immutable types:
# Immutable types are objects whose state cannot be modified once they are created. Any operation that appears to modify the value of an immutable object actually creates a new object with the modified value.

# Examples of immutable types in Ruby:
# Integer
# Float
# Symbol
# TrueClass and FalseClass (for true and false values)
# nil (the absence of a value)

# For example, when you perform arithmetic operations on integers, you are not changing the original integer object but creating a new one with the result of the operation.

# x = 10
# y = x + 5 # A new integer object (15) is created, and y points to it.



# *********************
# Mutable types:
# Mutable types are objects whose state can be modified after they are created. Operations on mutable objects directly modify the content of the object.

# Examples of mutable types in Ruby:
# String
# Array
# Hash

# When you perform operations that modify the content of these objects, the changes directly affect the original object.

# str = "Hello"
# str << " World" # The original string object is modified.

# array = [1, 2, 3]
# array.push(4)   # The original array is modified by adding a new element.

# It is essential to understand the distinction between mutable and immutable types because it affects how you handle data, especially when passing arguments to methods or manipulating objects in Ruby. Immutable objects are generally safer to use in certain contexts, like using symbols for hash keys, to avoid unintended side effects.

# Keep in mind that while certain objects in Ruby are immutable by design, you can also create your own custom immutable objects by freezing them using the #freeze method. For example:

# ruby
# Copy code
# frozen_string = "I am immutable".freeze
# # Any attempt to modify frozen_string will raise an error.




