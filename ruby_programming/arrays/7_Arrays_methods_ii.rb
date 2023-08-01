puts [4, 8, 15, 16, 23, 42].count
puts [4, 8, 15, 16, 23, 42].size
puts [4, 8, 15, 16, 23, 42].length

# 6
# 6

# ****************************

# count also takes in a single object argument and returns the count of the array for which elements equal to that object.

puts [42, 8, 15, 16, 23, 42].count(42)
puts ["Jacob", "Alexandra", "Mikhail", "Karl", "Dogen", "Jacob"].count("Jacob")

# 2
# 2

# ****************************
# count also takes in a block and returns the number of elements in the array for which the block results to true. Find out the number of even numbers in this array.

p [4, 8, 15, 16, 23, 42].count { |e| e.even? }  #  4

# ****************************
# The index method returns the index of the object specified. If a block is given it returns the index of the first element for which the block results to true.

puts [4, 8, 15, 16, 23, 42].index(15)
puts [4, 8, 15, 16, 23, 42].index { |e| e % 2 == 0 }

# 2
# 0
# ****************************

# The compact method returns a new array with all the nil elements removed.

p [nil, 4, nil, 8, 15, 16, nil, 23, 42, nil].compact

# ****************************
# The zip method expects variable number of arguments and returns an array of arrays that contain corresponding elements from each array. That is, an element-wise merge with the original array.

p [4, 8, 15, 16, 23, 42].zip([42, 23, 16, 15, 8])

# [[4, 42], [8, 23], [15, 16], [16, 15], [23, 8], [42, nil]]

# ****************************
# slice is same as using the literal [] form for extracting subarrays.
# It accepts an index, like array[2] or a Range, like array[2..7]

p [4, 8, 15, 16, 23, 42].slice(2)
p [4, 8, 15, 16, 23, 42].slice(2..5)
p [4, 8, 15, 16, 23, 42].slice(-2..-1)   #  get last two elements

# 15
# [15, 16, 23, 42]

# ****************************

# shift removes the first element of the array and returns it. Shifts the rest of the array towards left, such that the second element becomes the first element, the third element becomes the second one and so on.

# You can also specify an optional argument -- shift(n) that will remove and return an array of the first n elements.

p [4, 8, 15, 16, 23, 42].shift
p [4, 8, 15, 16, 23, 42].shift(2)

# 4
# [4, 8]

# ****************************
# unshift takes a variable number of arguments and adds them to the beginning of the array.

p [8, 15, 16, 23, 42].unshift(4)
p [16, 23, 42].unshift(4, 8, 15)

# [4, 8, 15, 16, 23, 42]
# [4, 8, 15, 16, 23, 42]

# ****************************

# This method returns a flat (one-dimensional) version of the array. Nested arrays are recursively injected inline. This can prove very useful when handling the results of a recursive collection algorithm.

a = [ 0, [ 1, [2, 3], 4 ], 5 ]
a.flatten(0) # => [0, [1, [2, 3], 4], 5]

a = [ 0, [ 1, [2, 3], 4 ], 5 ]
a.flatten(1) # => [0, 1, [2, 3], 4, 5]

a = [ 0, [ 1, [2, 3], 4 ], 5 ]
a.flatten(2) # => [0, 1, 2, 3, 4, 5]

a = [ 0, [ 1, [2, 3], 4 ], 5 ]
a.flatten(3) # => [0, 1, 2, 3, 4, 5]

# With no argument, a nil argument, or with negative argument level, flattens all levels:

a = [ 0, [ 1, [2, 3], 4 ], 5 ]
a.flatten # => [0, 1, 2, 3, 4, 5]

[0, 1, 2].flatten # => [0, 1, 2]
a = [ 0, [ 1, [2, 3], 4 ], 5 ]
a.flatten(-1) # => [0, 1, 2, 3, 4, 5]

a = [ 0, [ 1, [2, 3], 4 ], 5 ]
a.flatten(-2) # => [0, 1, 2, 3, 4, 5]

[0, 1, 2].flatten(-1) # => [0, 1, 2]

# *****************************

#  Partition
#  Partition method methods return two arrays,
# first array: all elements for which partition block returns true
# 2nd array: all elements for which partition block returns false

products = [
  {name: 'Product A', in_stock: true},
  {name: 'Product B', in_stock: false},
  {name: 'Product C', in_stock: true},
  {name: 'Product D', in_stock: false}
]

in_stock_products, out_of_stock_products = products.partition { |product| product[:in_stock] }

puts "In stock products: #{in_stock_products}"
puts "Out of stock products: #{out_of_stock_products}"

# *****************************
