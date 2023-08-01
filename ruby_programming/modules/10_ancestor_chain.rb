# So what’s actually happening when you include or extend a module? When you include a module, you add it to the ancestor chain of the class.
# The ancestor chain is the order of lookup Ruby follows when determining if a method is defined on an object.
# When you call a method on a class, ruby will check to see if the method is defined on the first item in the ancestor chain (the class).
# If it is not, it will check the next item in the ancestor chain and so on.


module A
  def hello
  "world"
  end
end

class Foo
  include A
end

p Foo.ancestors # [Foo, A, Object, Kernel, BasicObject]


# Similarly, if you extend a module, you add the module to the ancestor list of the singleton class. If you’re unfamiliar with singleton classes, I mention them in my post on singleton methods in ruby.
# The main idea is that every object has a hidden singleton class which stores methods implemented only on that object. A class object also has a singleton class that stores methods implemented on that class ie class methods.

# When calling a class method, ruby will look at the singleton classes ancestor chain to see where the class method is defined. Since class methods get defined on the singleton class, extending a module adds it to the singleton class’s ancestor chain.


module A
 def hello
 "world"
 end
end

class Bar
 extend A
end

p Bar.ancestors # [Bar, Object, Kernel, BasicObject]
p Bar.singleton_class.ancestors # [#<Class:Bar>, A, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject]
