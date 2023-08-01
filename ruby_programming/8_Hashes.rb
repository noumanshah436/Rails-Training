test_grades = {
    "Andy" => "B+",
    :Stanley => "C",
    "Ryan" => "A",
    3 => 95.2
}

#  use quotes or use : for a key, that will work same

test_grades["Andy"] = "B-"
puts test_grades["Andy"]
puts test_grades[:Stanley]
puts test_grades[3]

puts test_grades

# puts test_grades.has_key?("Andy")        # check if given key is present in the hsh
# puts test_grades.has_value?(95.2)        # check if given value is present in the hsh
# puts test_grades.keys                    # returns an array of keys that present in the hash.
# puts test_grades.length


test_grades.clear   #  remove all pairs



# https://www.youtube.com/watch?v=BtHKhsDUPwQ&list=PLLAZ4kZ9dFpO90iMas70Tt4_wYjhLGkya&index=14
# https://www.tutorialspoint.com/ruby/ruby_hashes.htm

# ******************************

h = {                        # A hash that maps number names to digits
    :one => 1,               # The "arrows" show mappings: key=>value
    :two => 2                # The colons indicate Symbol literals
}
h[:one]                         # => 1. Access a value by key
h[:three] = 3                   # Add a new key/value pair to the hash

h.each do |key,value|           # Iterate through the key/value pairs
  print "#{value}:#{key}; "      # Note variables substituted into string
end                             # Prints "1:one; 2:two; 3:three; "


# ******************************

# numbers = Hash.new          # Create a new, empty, hash object
# numbers["one"] = 1          # Map the String "one" to the Fixnum 1
# numbers["two"] = 2          # Note that we are using array notation here
# numbers["three"] = 3
# sum = numbers["one"] + numbers["two"]       # Retrieve values like this
# puts sum


# ******************************

# Hash is often created using the array form that takes in even number of arguments as key-value pairs,
#  or directly, a two-dimensional array with paired arrays.

puts Hash[4, 8]
puts Hash[ [[4, 8], [15, 16]] ]

# ******************************
ary = [[4, 8], [15, 16], [23, 42]]
puts Hash[*ary.flatten]
# ******************************

# more on hash
# https://www.geeksforgeeks.org/ruby-hash-class/#:~:text=In%20Ruby%2C%20Hash%20is%20a,be%20in%20the%20insertion%20order.


# ****************************

h = {                        # A hash that maps number names to digits
  :one => 1,               # The "arrows" show mappings: key=>value
  :two => 2                # The colons indicate Symbol literals
}

p h.values
