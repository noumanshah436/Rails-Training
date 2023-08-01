class Cat
  def initialize(color)
    @color = color
  end

  def to_s
    "I am a #{@color} cat"
  end

  def inspect
    "inspect method : color=#{@color}"
  end
end

cat1 = Cat.new('Black')
cat2 = Cat.new('White')

p cat1    #  p calls inspect method
p cat2

puts cat1     # puts called to_s method
puts cat2


# If you override to_s for an object, Ruby will treat it as the result of inspect as well, unless you override inspect separately.

# Also, it is generally a best practice to override the to_s method in your classes so that it can return meaningful result that is tailored for each class.
