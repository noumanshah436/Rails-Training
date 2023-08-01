# https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/

# Here is a summary of how procs and lambdas are different:

# A Proc object is an encapsulation of a block of code, which can be
#     stored in a local variable,
#     passed to a method or another Proc,
#     and can be called.
# Proc is an essential concept in Ruby and a core of its functional programming features.

# In Ruby, a proc is an instance of the Proc class and is similar to a block.
# As opposed to a block, a proc is a Ruby object which can be stored in a variable and therefore reused many times throughout a program

# Lambda vs Proc (3 main differences)
# 1) Lambdas are defined with -> {} and procs with Proc.new {}.
# 2) Procs return from the current method, while lambdas return from the lambda itself.
# 3) Procs don’t care about the correct number of arguments, while lambdas will raise an exception.

# summary
# In Ruby, a lambda is an object similar to a proc.
# Unlike a proc, a lambda requires a specific number of arguments passed to it,
# and it returns to its calling method rather than returning immediately.

# *******************

my_proc = Proc.new { |x| puts x }
my_proc.call(10)

t = Proc.new { |x,y| puts "I don't care about arguments! #{x}" }
t.call

# Should work
# my_lambda = -> { return 1 }
# puts "Lambda result: #{my_lambda.call}"

# *******************

# Should raise a LocalJumpError exception.
# The reason is that you can’t return from the top-level context.

# my_proc = Proc.new { return 1 }
# my_proc.call
# puts "Proc result: #{my_proc.call}"

# *******************

# If the proc was inside a method, then calling return would be equivalent to returning from that method.
def any_method
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  my_proc.call
  puts "After proc"
end

p any_method


# **********************

# previous block example , now with procs

students = ["Nouman", "Ali", "Hammad", "Shahmeer"]

def each(array, &blk)   # blk will be a proc
  i = 0
  while i < array.count
    el=array[i]
    blk.call(el)
    i=i+1
  end
end

# using block
each(students) do |student|
  puts student
end

# using proc
print_proc = Proc.new { |student| puts student}
each(students, &print_proc)

# using lambda
print_lambda = lambda { |student| puts student}
each(students, &print_lambda)

# **********************

# lambda and procs are similar to block but they are objects
#
# procs treat as an inline code ( behaves like it’s a part of the calling method )

# **********************


# Kernel#proc factory method is identical to Proc.new. Note that proc is a method and not a literal form like -> nor a keyword like yield.

# The following two lines produce identical results.

short = proc { |a, b| a + b }
puts short.call(2, 3)

long = Proc.new { |a, b| a + b }
puts long.call(2, 3)

