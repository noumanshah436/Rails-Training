# Ruby has a concept of Block:

# Ruby blocks are little anonymous functions that can be passed into methods.
# A block is the same thing as a method, but it does not belong to an object.
# Block can accept arguments and returns a value.
# Block does not have their own name.
# Blocks are enclosed in a
#    1)  do / end statement (for multiple lines)  or
#    2)  between brackets {} (for single line ),
#               and they can have multiple arguments.
# The argument names are defined between two pipe | characters
# A block is always invoked from a function with the same name as that of the block.
#     This means that if you have a block with the name test, then you use the function test to invoke this block.
# You invoke a block by using the yield statement.
#  there are two types of blocks Implicit and Explicit Blocks

# A Ruby block is useful because it allows you to save a bit of logic (code) & use it later.
# This could be something like writing data to a file, comparing if one element is equal to another, or even printing an error message.
# Blocks can be used in many Ruby methods to customize their behavior. They are a powerful feature of Ruby that allow for flexible and concise code.

# ********************

def test
  puts "You are in the method"
  yield # this will run the code inside the block
  puts "You are again back to the method"
  yield # this will again run the code inside the block
end

test { puts "You are in the block" }    # this is the block test
puts ""

# ********************

# passing parameter to block

def test
  yield 5
  puts "You are in the method test"
  yield 100
end

test { |i| puts "You are in the block #{i}" }


# *****************************
# Explicit Blocks
# Explicit means that you give it a name in your parameter list.
# You can pass an explicit block to another method or save it into a variable to use later.


# If the last argument of a method is preceded by &, then you can pass a block to this method and
#  this block will be assigned to the last parameter.
# In case both * and & are present in the argument list, & should come later.

def test( &block )
  block.call
  # puts block.class  # Proc
end

test { puts "Hello World!"}

# *****************************
# useful example of block

students = ["Nouman", "Ali", "Hammad", "Shahmeer"]

def each(array, &blk)
  i = 0
  while i < array.count
    el = array[i]
    blk.call(el)
    i = i+1
  end
end

each(students) do |student|
  puts student
end

# *****************************


# How To Check If A Block Was Given
# If you try to yield without a block you will get a no block given (yield) error.

# You can check if a block has been passed in with the block_given? method.

def do_something_with_block
  puts block_given?
  return "No block given" unless block_given?
  yield
end

do_something_with_block                               #  use puts if you want to get return string
# do_something_with_block { puts "hello"}


# This prevents the error if someone calls your method without a block
