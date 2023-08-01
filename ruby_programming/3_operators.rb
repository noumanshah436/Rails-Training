# https://www.tutorialspoint.com/ruby/ruby_operators.htm

# Ruby Bitwise Operators
# Bitwise operator works on bits and performs bit by bit operation.

# Assume if a = 60; and b = 13; now in binary format they will be as follows −

#  a    =  0011 1100
#  b    =  0000 1101
#  ------------------
#  a&b  =  0000 1100     and
#  a|b  =  0011 1101      or
#  a^b  =  0011 0001        XOR
#  ~a   =  1100 0011      NOT


# *************************


# Logical Operators
# and	Called Logical AND operator. If both the operands are true, then the condition becomes true.	(a and b) is true.
# or	Called Logical OR Operator. If any of the two operands are non zero, then the condition becomes true.	(a or b) is true.
# &&	Called Logical AND operator. If both the operands are non zero, then the condition becomes true.	(a && b) is true.
# ||	Called Logical OR Operator. If any of the two operands are non zero, then the condition becomes true.	(a || b) is true.
# !	  Called Logical NOT Operator. Use to reverses the logical state of its operand. If a condition is true, then Logical NOT operator will make false.	!(a && b) is false.
# not	Called Logical NOT Operator. Use to reverses the logical state of its operand. If a condition is true, then Logical NOT operator will make false.	not(a && b) is false.

a=true
b=false
puts (a and b)      # false
puts (a or b)       # true
puts !(a and b)     # true
puts not(a and b)   # true

a=1
b=0
puts (a && b)       # 0
puts (a || b)       # 1
puts not(a && b)    # false


# Memoization:
#  ||= operator is known as the "conditional assignment operator". It assigns a value to a variable only if the variable is currently nil or false. If the variable already has a value other than nil or false, then ||= will not override that value.

a = 1
a ||= 23

puts a    # 1

a = {}
a ||= {
  name: 'Shah',
  age: 30
}

p a
