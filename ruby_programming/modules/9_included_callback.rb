# The self.included function is called when the module is included. It allows methods to be executed in the context of the base (where the module is included).


module Foo
  def self.included(klass)
    puts "Foo has been included in class #{klass}"
  end
end

class Bar
  include Foo
end

# *********************

# What if you want some methods to be instance methods and others to be class methods? A common way to implement this is to use the self.included callback.
#  Whenever a class includes a module, it runs the self.included callback on the module. We can add the logic for extending another module on the class inside of the self.included method.

module A
  def self.included(base)
    base.extend(ClassMethods)
  end

  def hello
    "world"
  end

  module ClassMethods
    def hi
      "bye"
    end
  end
end

class Foo
  include A
end

 Foo.new.hello #works
 Foo.hello #error

 Foo.new.hi #error
 Foo.hi #works


#  Using self.included, lets us provide both instance and class methods when the module is included.

# Note that this approach only works with the module that is included in a class. If we were to extend the module in this example, then Foo would have hello as a class method but not hi.


