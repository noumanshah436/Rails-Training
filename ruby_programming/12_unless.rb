# Ruby unless Statement:

# Syntax:

# unless conditional [then]
#    code
# [else
#    code ]
# end

# Executes code if conditional is false.
# If the conditional is true, code specified in the else clause is executed.


x = 1
unless x >= 2
    puts "x is less than 2"
else
    puts "x is greater than 2"
end

# output :   x is less than 2

#  *************************************

# Ruby unless modifier

# Syntax
#   code unless conditional

# Executes code if conditional is false.

var =  1
print "1 -- Value is set\n" if var
print "2 -- Value is set\n" unless var

var = false
print "3 -- Value is set\n" unless var

# output
# 1 -- Value is set
# 3 -- Value is set
