# Python program to demonstrate
# duck typing


class Bird 
    def fly 
        print("fly with wings")
	end
end

class Airplane 
    def fly 
        print("fly with fuel")
	end
end

class Fish 
    def swim 
        print("fish swim in sea")
	end
end

# ----------------------------------------
# Attributes having same name are
#   considered as duck typing
# for obj in Bird(), Airplane(), Fish():
#     obj.fly()

a =  Airplane.new
b = Bird.new
for obj in [ a, b ]
    obj.fly 
	puts "\n"
end