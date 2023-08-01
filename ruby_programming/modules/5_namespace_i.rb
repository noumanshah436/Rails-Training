# Namespacing is a way of bundling logically related objects together. Modules serve as a convenient tool for this.
# This allows classes or modules with conflicting names to co-exist while avoiding collisions.
# Think of this as storing different files with the same names under separate directories in your filesystem.

# Modules can also hold classes. In this example, we'll try and define an Array class under our Perimeter module from
# the last lesson. Notice how it does not affect Ruby's Array class at all.

# ***********************************

module Perimeter
  class Array
    def initialize
      @size = 400
    end
  end
end

our_array = Perimeter::Array.new
ruby_array = Array.new

p our_array.class
p ruby_array.class

# :: is a constant lookup operator that looks up the Array constant only in the Perimeter module.

# ***********************************


