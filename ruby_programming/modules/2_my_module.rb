# A Module is a collection of methods, constants, and class variables.
# Modules are defined as a class, but with the module keyword not with class keyword.

# https://www.geeksforgeeks.org/ruby-module/

module Tools
    def sayHi(name)
        puts "Hello #{name}"
    end
    def sayBye(name)
        puts "Bye #{name}"
    end

end

# using module in the same file

include Tools
Tools.sayHi("Nouman")



