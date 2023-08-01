
# load "gym.rb"
# load "dojo.rb"

require_relative "gym.rb"
require_relative "dojo.rb"

dojo_push = Dojo::Push.new
p dojo_push.up

gym_push = Gym::Push.new
p gym_push.up




# load vs require ( https://prograils.com/ruby-methods-differences-load-require-include-extend )

# The load method simply reads and parses other files into your code every time a script is executed.

# Another commonly used method is require. It reads the file from the file system, parses it, saves to the memory and
# runs it in a given place. What does it mean? Simply, even if you change the required file when the script is running,
#  those changes won't be applied - Ruby will use the file from memory, not from the file system.
# require gives you access to many libraries and extensions built in Ruby as well as much more stuff written by other programmers.


# So when to use load?
# In most cases you’ll use require, but there are some cases when load is useful, for example, when your module changes frequently you may want to pick up those changes in classes that load this module.

# To summarize:
# require reads and parses files only once, when they were referenced for the first time.
# load reads and parses files every time you call load.
