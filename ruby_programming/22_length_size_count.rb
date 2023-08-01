arr = [1,2,3,4,5]
arr.length   # => 5
arr.size     # => 5
arr.count    # => 5

# The size method is an alias of #length, meaning that the two share their source code and can be used interchangeably.

# ****************
#  count:

# With no arguments, #count will perform the same function as #size and #length.

# Interestingly, #count cannot be used with a string in exactly the same way as #length and #size. For example:
# p "my name is jeff".count    # give error

"Mississippi".count("i") # => 4


array = [1, 2, 3, 4, 5]
even_numbers_count = array.count { |num| num.even? } # This will be 2 (count of even numbers)



# ****************

# count:

# count is a method available for arrays and ActiveRecord relations in Ruby on Rails.
# For arrays, it returns the number of elements that match a given condition if a block is provided. If no block is provided, it returns the total number of elements in the array.
# For ActiveRecord relations, count is used to perform a SQL COUNT query on the database to get the number of rows that match the conditions in the relation.

# Post.where(published: true).count

# ****************

# size:

# size is a method available for arrays and ActiveRecord relations in Ruby on Rails.
# For arrays, it behaves the same as length, returning the number of elements in the array.
# For ActiveRecord relations, size is used to fetch all the records from the database and count the number of rows locally in Ruby.
# This is different from count, which directly performs a SQL COUNT query on the database without fetching all the records.

# Post.where(published: true).size

# ****************

# In summary:

# Use length or size for arrays, as they both give you the number of elements in the array. size may be preferred in some cases for its consistency with ActiveRecord relations.
# Use count for ActiveRecord relations when you want to perform a SQL COUNT query on the database, especially if you only need the count and not the actual records. count is generally more efficient than size in this context.
