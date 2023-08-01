# rand with no arguments, it returns a float that is greater than or equal to 0.0 and less than 1.0
# rand()

rand(8)  #  give 0 to 7
# *****************

# The following uses an inclusive Range to generate random numbers from a lower limit (1), up to (and including) the upper limit (10).
rand(1..10)

# *****************

# 9.times do
#   puts rand(8)

# end

# *********************
# p rand("a".."b")

# *********************


# p (0...50).map { ('a'..'z').to_a[rand(26)] }.join

# (0..10).map { "?/\\ |}{[]!@# $%^&*()_-+=<>,.`~'':;".to_a[rand(26)] }.join

pu = "?/\\ |}{[]!@# $%^&*()_-+=<>,.`~'':;".split('')
p pu.length
p pu
