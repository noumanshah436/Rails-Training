# Hashes allow an alternate syntax form when your keys are always symbols. Instead of

options1 = { :font_size => 10, :font_family => "Arial" }

# You could write it as:
options2 = { font_size: 10, font_family: "Arial" }

p options1[:font_size]  # => 10
p options2[:font_size] # => 10

# Even the address of both ARE SAME
p options1[:font_size].object_id
p options2[:font_size].object_id


# ************************

p options1.keys.map(&:object_id)
p options2.keys.map(&:object_id)




#    :foo is a Symbol literal, just like 'foo' is a String literal and 42 is an Integer literal.

# foo: is used in three places:

# as an alternative syntax for Symbol literals as the key of a Hash literal: { foo: 42 } # the same as { :foo => 42 }
# in a parameter list for declaring a keyword parameter: def foo(bar:) end
# in an argument list for passing a keyword argument: foo(bar: 42)
