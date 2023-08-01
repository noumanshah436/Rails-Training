a = [18, 22, 33, nil, 5, 6]
b = [1, 4, 1, 1, 88, 9]
c = [18, 22, nil, nil, 50, 6]


# join
puts "join : #{  a.join("^") }   \n\n"            # join : 18^22^33^^5^6
puts "join : #{  b.join('-')  }  \n\n"            # join : 1-4-1-1-88-9
puts "join : #{  c.join("*")  }  \n\n"            # join : 18*22***50*6

# append
# add elements at the end of the array , also return the  array.
puts "adding elements in a : #{  a.append("tree") }    \n\n"


# The push() function in Ruby is used to push the given element at the end of the given array and
#  returns the array itself with the pushed elements.
Array1 = [1, 2, 3, 4]
Array2 = Array1.push(5, 6, 7)
puts "#{Array2}"                   #  [1, 2, 3, 4, 5, 6, 7]

puts "\n\n"
p "Origional Arrays"
p a
p b
p c


#  In Ruby, the method map is used to transform the contents of an array according to a specified set of rules defined inside the code block.
puts [1, 2, 3, 4, 5].map { |i| i + 1 }

# ********************

# select elements acording to condition
puts [1,2,3,4,5,6].select {|number| number % 2 == 0}

names = ['rock', 'paper', 'scissors', 'lizard', 'spock']
names.select { |num|  num.length > 5}

# ********************

a = [18, 22, 33, 3, 5, 6]
p a.delete_if{|i| i < 10 }
p a

# ********************

b = [1, 4, 1, 1, 88, 9]
puts "reject method : #{b.reject {|num| num > 10 }}"
p b

#

# The map method takes an enumerable object and a block, and runs the block for each element, outputting each returned value from the block (the original object is unchanged unless you use map!):
arr = [1, 2, 3]
p arr.map { |n| n * n } #=> [1, 4, 9]
p arr                   #=> [1,2,3]
p arr.map! { |n| n * n } #=> [1, 4, 9]
p arr                     #=> [1, 4, 9]

# ********************


# arr = [1,2,3,4,5]
# arr.length   # => 5
# arr.size     # => 5
# arr.count    # => 5

# arr = [1,2,3,3,4,5]
#  arr.count(3) #=> 2

# ********************
# inject and reduce are same
puts "Inject"
# Inject applies the block result + element. to each item in the array
[1,2,3,4,5,6,7,8,9,10].inject do |sum, val|
  p "sum= #{sum}   val=#{val}" # sum = previous sum or initial value   , val = next item in array
  sum += val
end

puts "\n"

[1,2,3,4,5,6,7,8,9,10].inject(15)do |sum, val|
p "sum= #{sum}   val=#{val}" #
sum += val
end

# ****************************

# Collect is similar to Map which takes the enumerable object and a block, evaluates the block for each element and then return a new array with the calculated values.
[1,2,3,4,5,6,7,8,9,10].collect{ |val| val * 5 }
# => [5, 10, 15, 20, 25, 30, 35, 40, 45, 50]


# If you are try to use collect to select any specific values like where n <= 5 then it will evaluate each element and will output only the result which will be either true or false

[1,2,3,4,5,6,7,8,9,10].collect{ |val| val <= 5 }
# => [true, true, true, true, true, false, false, false, false, false]

# The collect method returns the entire collection, regardless of whether it is an array or a hash.
a = [1,2,3,4,5]
b = Array.new
b = a.collect
puts b


# *****************************

# The detect() of enumerable is an inbuilt method in Ruby returns the first element which satisfies the given condition in the block.
# If there is no block, then it returns the enumerator itself.

array =(1..10).to_a
p array.detect { |val|  val % 3 == 0 && val % 9 == 0}
# => 9


# ****************************


# summary:

# Inject applies the block result + element. to each item in the array ( same as reduce)

# detect returns the first element which satisfies the given condition in the block

# Collect is similar to Map which takes the enumerable object and a block, evaluates the block for each element and
#  then return a new array with the calculated values.


# The each method allows one loop through the elements of an array to perform operations on them
