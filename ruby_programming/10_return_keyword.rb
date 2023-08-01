# Ruby return Statement
# The return statement in ruby is used to return one or more values from a Ruby Method.

# Syntax
# return [expr[`,' expr...]]
# return    |    return 12   |   return 1,2,3

def add_numbers(num1, num2 = 99)
  num1 + num2
end

sum = add_numbers(4, 3)
puts sum

#  ********************

def test
  i = 100
  j = 200
  k = 300
  [i, j, k] # it will be returned like an array
end

var = test
puts var
puts var[0]      #  100
puts var.class   # Array
