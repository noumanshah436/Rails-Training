# To skip the rest of the current iteration we use next statement. 
# When next statement is executed no other iteration will be performed. 
# next statement is similar as continue statement in any other language.


for x  in  0..6 
     
    if  x == 4 then
        next
    end

    puts "Value of x is : #{x}"
end



# Output:

# Value of x is : 0
# Value of x is : 1
# Value of x is : 2
# Value of x is : 3
# Value of x is : 5
# Value of x is : 6