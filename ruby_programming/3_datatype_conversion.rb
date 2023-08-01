# to_i
# to_s
# to_a   to array
# to_f
# to_sym   to symbol

print "What is the first number? "
first_number = gets.chop

print "What is the second number? "
second_number = gets.chop

# convert strings to numbers
first_number = first_number.to_f
second_number = second_number.to_f

sum = first_number + second_number

print sum

# **********************

25.to_s                    # "25"
(25.5).to_s                # "25.5"
["Sammy", "Shark"].to_s    # "[\"Sammy\", \"Shark\"]"

# **********************

CHARS = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a

"one two three".split

string = :first_name.to_s

"first_name".to_sym
