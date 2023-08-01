# Symbols are immutable data structure in ruby.

# Symbol is the most basic Ruby object we can create. It's just a name and an internal ID.
#  Since a given symbol name refers to the same object throughout a Ruby program, Symbols are useful and more efficient than strings.
#  Two strings with the same contents are two different objects, but for any given name, there is only one Symbol object. This can save both time and memory.

# Symbols are identifiers.

# Symbol Usage:
# 1) One of the most common uses for symbols is to represent method & instance variable names.
#   The :title after attr_reader is a symbol that represents the @title instance variable.

# 2)  You should use symbols as names or labels for things (like methods) & use strings when you care more about the data (individual characters).
# 3) Symbols can be as a key in a hash. In two diff hashes

puts "string".object_id
puts "string".object_id
puts :item.object_id
puts :item.object_id


# Output:
# 17960080
# 17960020
# 357448
# 357448

# The rule of thumb - which one to use, variable or symbol?

# If the contents (the sequence of characters) of the object are important, we use a string.
# If the identity of the object is important, we use a symbol.

# *******************************

# We can also transform a string into a symbol and vice-versa:

puts "string".to_sym.class      # symbol
puts :symbol.to_s.class         # string

# *******************************

something = :something
p something.class    # Symbol

name = "Nouman"
my_sym = :"#{name}"
p my_sym.class      # Symbol


# *****************************

# Yes, you can pass the symbols :update and :create to a method to differentiate which method called that method.

# For example:

def save_record(data, action)
  if action == :create
    puts "Creating new record with data: #{data}"
    # code to create new record
  elsif action == :update
    puts "Updating record with data: #{data}"
    # code to update existing record
  else
    puts "Unknown action: #{action}"
  end
end

save_record({name: "John", age: 30}, :create)
save_record({name: "Jane", age: 35}, :update)
