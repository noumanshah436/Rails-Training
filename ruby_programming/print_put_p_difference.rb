#  https://www.rubyguides.com/2018/10/puts-vs-print/#:~:text=p%20is%20a%20method%20that,correct%2C%20then%20you%20use%20p%20.



# Puts automatically adds a new line at the end of your message every time you use it.

# If you don’t want a newline, then use print.



puts [1,2]
# 1
# 2

print [1,2]
# [1,2]


# **************************

# p is a method that shows a more “raw” version of an object.

puts "Ruby Is Cool"
# Ruby Is Cool
p "Ruby Is Cool"
# "Ruby Is Cool"

# *******

# puts always returns nil
# p returns the object you pass to it

puts [1,nil,nil,2]
# 1


# 2

p [1,nil,nil,2]
# [1, nil, nil, 2]


# **************************

# Pretty Printing
# Ruby has yet another printing method.

# Called pp.

# This is like p, but it prints big hashes & arrays in a nicer way.









