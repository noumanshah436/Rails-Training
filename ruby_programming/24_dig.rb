# In Ruby on Rails, the dig method is used to safely navigate nested data structures such as hashes
#   and arrays. It allows you to access nested elements without having to explicitly check for the
#     existence of each intermediate level.

# The dig method was introduced in Ruby 2.3 and is available in Rails 5 and later versions. Here's
#   how you can use the dig method in Rails:

# Example 1: Accessing nested elements in a hash
person = {
  name: 'John',
  address: {
    street: '123 Main St',
    city: 'New York',
    zip: '10001'
  }
}

city = person.dig(:address, :city)
puts city  # Output: New York


# Example 2: Accessing nested elements in an array
data = [1, [2, [3, 4]]]

value = data.dig(1, 1, 1)
puts value  # Output: 4


# In the first example, we have a hash person with nested data. By using the dig method, we can
#   access the :city value nested within the :address key.

# In the second example, we have an array data with nested arrays. Using the dig method with the
#   indices, we can access the value 4.

# If any intermediate level in the nested structure is nil, the dig method will return nil instead of
#   raising an error. This makes it safe to access nested elements without explicitly checking for the
#     existence of each level.

# The dig method is particularly useful when working with JSON data, API responses, or any situation
#   where you need to navigate through complex nested structures.






