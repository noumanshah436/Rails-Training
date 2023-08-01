# each_with_object is a method in Ruby on Rails (as well as in regular Ruby) that allows you to
# iterate over a collection, while accumulating a result in an object that you specify.
# It takes a single argument, which is the object that you want to accumulate your result in.

result = (1..10).each_with_object([]) do |item, array|
  # array  = passed array argument (intially empty)
  # item = one item of iterable at a time
  array << item * 2
end

p result

# **************************

# with array

result = %i[foo bar jazz].each_with_object({}) do |item, hash|
  hash[item] = item.to_s.upcase
end

p result

# ****************************

# with hash

hash = { "a": 100, "b": 200, "c": 300 }

result = hash.each_with_object({}) do |(k, v), new_hash|
  new_hash[k] = v if v > 100
end

p result # => {:b=>200, :c=>300}

# we are destructuring hash key and value here
# i.e (k, v)
# k will be the key and v will be the value

# ****************************
