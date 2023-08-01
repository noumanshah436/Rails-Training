
# In Computer Programming, Lambda functions are anonymous functions. Lambda functions in Ruby are no different.
# Since everything in Ruby is treated as an object, lambdas are also objects in Ruby.

# Lambdas in Ruby allow us to wrap data and logic in a portable package
# A lambda is a way to define a block & its parameters with some special syntax.
# You can save this lambda into a variable for later use.

l = lambda { "Do or do not" }
puts l.call()

# You can also use the alternative syntax: ->  instead of lambda.
l = -> { "Do or do not" }
puts l.call( )
# puts l.call     #  other way to call
# puts l.()
# puts l[]
# puts l.===

# *********************

# with parameters:
square = lambda { |x| x*x }
square.call(2)   # 4

square = -> (x) { x*x }
square.call(2)   # 4

# *********************

l = lambda { |s| "My name is #{s}" }
puts l.call("humza")

addition = lambda { |a, b| return a + b }
puts addition.call(5, 6)

l = lambda do |string|
  if string == "try"
    return "There's no such thing"
  else
    return "Do or do not."
  end
end

puts l.call("try") # Feel free to experiment with this

# **********************

square = lambda { |x| x*x }

def perform(operation , a)
  return operation.call(a)
end

puts perform(square , 2)    #  passing lambda as paramether


# **********************

# A block can be created by wrapping a chunk of code with curly braces ({}) or the words do and end.
#  Unlike the curly braces that you've seen thus far, the do - end syntax requires that the do, the code for the block, and the end all be on separate lines.

# do the same thing but using different syntaxes.

addition = lambda {|a, b| a + b }
puts addition.call(5, 5)

addition = lambda {|a, b|
 a + b
}
puts addition.call(5, 5)

addition = lambda do |a, b|
 a + b
end
puts addition.call(5, 5)

addition = lambda do |a, b|; a + b; end
puts addition.call(5, 5)
