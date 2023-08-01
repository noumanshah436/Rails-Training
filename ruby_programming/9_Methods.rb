# https://www.geeksforgeeks.org/ruby-methods/?ref=lbp

# Syntax
# def method_name [( [arg [= default]]...[, * arg [, &expr ]])]
#     expr..
#  end


# #####################

def sayHi()
    puts "Hello"
end

sayHi()

# #####################
# we can remove brackets in case of no parameters

def sayHi
    puts "Hello"
end

sayHi


# #####################

def sayHi(name)
    puts "Hello " + name
end

sayHi "Mike"
sayHi("Mike")

# #####################


def test(a1 = "Ruby", a2 = "Perl")
    puts "The programming language is #{a1}"
    puts "The programming language is #{a2}"
end


test("C","C++")     # no space between method name and brackets
test "C", "C++"
test

# ########################

def display a = 0, b = 0
    puts "1st Argument: #{a}, 2nd Argument: #{b}"
end

display "Sudo_Placement", "GFG"