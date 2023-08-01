# "require" is similar to the C include, which may cause newbie confusion.
#  (One notable difference is that locals inside the required file "evaporate" when the require is done.)

# The Ruby include is nothing like the C include. The include statement "mixes in" a module into a class.
# It's a limited form of multiple inheritance. An included module literally bestows an "is-a" relationship on the thing including it.


# *********************

# So if you just want to use a module, rather than extend it or do a mix-in, then you'll want to use require.
# Oddly enough, Ruby's require is analogous to C's include,
