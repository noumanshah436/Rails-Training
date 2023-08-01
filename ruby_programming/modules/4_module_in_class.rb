# Ruby modules allow you to create groups of methods that you can then include or mix into any number of classes.
# Modules only hold behaviour, unlike classes, which hold both behaviour and state.

# Since a module cannot be instantiated, there is no way for its methods to be called directly.
# Instead, it should be included in another class, which makes its methods available for use in instances of that class.
# There is, of course, more to this story, but let's keep it simple for now.

# In order to include a module into a class, we use the method include which takes one parameter - the name of a Module.


module WarmUp
  def push_ups
    "Phew, I need a break!"
  end
end

class Gym
  include WarmUp

  def preacher_curls
    "I'm building my biceps."
  end
end

class Dojo
  include WarmUp

  def tai_kyo_kyu
    "Look at my stance!"
  end
end

puts Gym.new.push_ups
puts Dojo.new.push_ups
