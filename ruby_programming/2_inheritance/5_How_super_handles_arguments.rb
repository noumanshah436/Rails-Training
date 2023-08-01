# Regarding argument handling, the super keyword can behave in three ways:

# When called with no arguments, super automatically passes any arguments received by the method from
#           which it's called (at the subclass) to the corresponding method in the superclass.

class A
  def some_method(*args)
    puts "Received arguments: #{args}"
  end
end

class B < A
  def some_method(*args)
    super
  end
end

b = B.new
b.some_method("foo", "bar")     # Output: Received arguments: ["foo", "bar"]


************************************


# If called with empty parentheses (empty argument list), no arguments are passed to the corresponding method in the superclass,
#  regardless of whether the method from which super was called (on the subclass) has received any arguments.

class A
  def some_method(*args)
    puts "Received arguments: #{args}"
  end
end

class B < A
  def some_method(*args)
    super()  # Notice the empty parentheses here
  end
end

b = B.new
b.some_method("foo", "bar")     # Output: Received arguments: [ ]



************************************


# When called with an explicit argument list, it sends those arguments to the corresponding method in the superclass, 
# regardless of whether the method from which super was called (on the subclass) has received any arguments.

class A
  def some_method(*args)
    puts "Received arguments: #{args}"
  end
end

class B < A
  def some_method(*args)
    super("baz", "qux")  # Notice that specific arguments were passed here
  end
end

b = B.new
b.some_method("foo", "bar")     # Output: Received arguments: ["baz", "qux"]