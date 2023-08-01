# Ruby makes it very easy to convert blocks from implicit to explicit and back again, but requires special syntax for this.

# Let's start with converting implicit to explicit.

def calculation(a, b, &block)           # &block is an explicit (named) parameter
 block.call(a, b)
end

puts calculation(5, 5) { |a, b| a + b } # this is an implicit block
                                        # -- it is nameless and is not
                                        # passed as an explicit parameter.


# ***********************************


# explicit to implicit.
def calculation(a, b)
  yield(a, b) # yield calls an implicit (unnamed) block
end

addition = lambda { |x, y| x + y }
puts calculation(5, 5, &addition) # like our last example, &addition is
                                  # an explicit (named) block
                                  # -- but `yield` can still call it!

# ***********************************


# So from these two examples, we derive a simple set of syntactic rules to convert blocks from one form to the other:

# The block should be the last parameter passed to a method.
# Placing an ampersand (&) before the name of the last variable triggers the conversion.


# ***********************************

# We have a method called filter that accepts an explicitly passed block. We look to the block to tell us whether a value from the array
#  should be accepted or rejected.

# The Array#select method does exactly this but requires an implicit block. Try converting the explicit block into an implicit block and passing
#  it on to Array#select.


def filter(array, block)
  return array.select(&block)
end

p filter([1, 2, 3, 4], lambda {|number| number.even? })         # returns [2, 4]
p filter([1, 2.0, 3, 4.0], lambda {|number| number.integer? })  # returns [1, 3]

# ***********************************

# Ok, let’s make this more complicated by changing our filter method itself to a block, and make the incoming block that does the filtration
#  an implicitly passed one. Here, you’ll need to convert the block passed to Filter from implicit to explicit, then back again.

# Sounds complicated? Yes, the conversion of blocks from implicit to explicit and back again can be confusing. It's simpler to focus on making the tests pass and let the learning be a part of that process.

Filter = lambda do |array, &block|
  array.select(&block)
end

p Filter.call([1, 2, 3, 5, 4]){|number| number.odd?}

# ***********************************
