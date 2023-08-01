# Ruby has a more dedicated way of destructuring using the splat (*) operator.

car, *cdr = [42, 43, 44]
p car  # 42
p cdr  # [43, 44]

# This is different from our regular way of destructuring by assignment as instead of just splitting the array up into the number of variables present on the left hand side,
# we're splitting the array up by the number of variables and slurping the rest of the array into the second variable with the splat (*).

*initial, last = [42, 43, 44]

# initial -> [42, 43]
# last -> 44

*initial, second_last, last = [42, 43, 44]

# ****************

first, *middle, last = [42, 43, 44, 45, 46, 47]
p first 	# 42
p middle  # [43, 44, 45, 46]
p last 		# 47

# ****************

# ****************

# You can also slurp or collate variable number of arguments passed into a method as an array.

def zen(*args)
	[args.first, args.last]
end

p zen(42, 43, 44, 45, 46)

# ****************

# The splat isn't restricted to just the left hand side. You can also use it with Range, String and convert them into Array objects.
# Example Code:

zen = *(1..42)
str = *"Zen"

p zen
# ****************
# It's also possible to use this left hand side form to turn array items into method arguments.
# Example Code:

def zen(a, b)
	a + b
end

puts zen(*[41, 1])

# ****************
