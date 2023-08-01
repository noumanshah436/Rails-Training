# https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/45-more-classes/lessons/104-serializing#solution4368

# At some point, you will want your Ruby programs to talk to other programs.
# Usually, if your program is talking to another program, communication between them is done through an Application Programming Interface or API. Don't let that article scare you. An API is just a generic term for any interface which allows one program to either read data from another program or write data to another program. Or both!

# One of the simplest interfaces two Ruby programs can share is a file. The first program will transform some of its objects into a string
# and then write those strings to a file. The second program will look for the file in a shared location (this is particularly easy if both programs are running on the same computer), read it, and turn the strings in the file back into Ruby objects.

class CerealBox
  attr_accessor :ounces, :contains_toy

  def initialize(ounces, contains_toy)
    @ounces = ounces
    @contains_toy = contains_toy
  end

  def self.from_s(s)
    ounces = 0
    contains_toy = false
    s.each_line do |field|
      value = field.split(":")[1].strip
      ounces = value.to_i if field.include?("ounces")
      contains_toy = to_boolean(value) if field.include?("contains_toy")
    end
    CerealBox.new(ounces, contains_toy)
  end

  def self.to_boolean(str)
    str == 'true'
  end

  def to_s
    "ounces: #{@ounces}\n contains_toy: #{@contains_toy}"
  end
end

# ************************************************
# Dumping and loading
# We want some way of automatically transforming any Ruby object into a serialized form. There are a number of serialization formats we could use.
#  You may have heard of XML, json, or YAML. Ruby can produce any of these formats (they're all strings, by the way) but we'll specifically take a look at YAML since it's built right into the Ruby language.
#  Here, YAML::dump and YAML::load do all the heavy lifting for us.

# ************************************************

require 'yaml'

class Ogre
  def initialize(strength, speed)
    @strength = strength
    @speed = speed
  end

  # this is reminiscent of our old friend, CerealBox#from_s
  def self.deserialize(yaml_string)
    YAML::load(yaml_string)
  end

  # and this is a much-simplified version of our CerealBox#to_s
  def serialize
    YAML::dump(self)
  end

  # now we're free to define #to_s however we like!
  # ...which is great, because #to_s is for programmers to read,
  # not computers or users
  def to_s
    "Ogre: [strength = #{@strength}, speed = #{@speed}]"
  end
end

wendigo = Ogre.new(47, 3)
yaml = wendigo.serialize
puts "The yaml looks like this:"
p yaml
puts "It's just a boring old string: #{yaml.class}"
puts "...and it's easy to change back: #{Ogre.deserialize(yaml)}"
puts

shrek = Ogre.new(62, 12)
fiona = Ogre.new(66, 37)
ogres = [shrek, fiona]
puts "We can even serialize arrays! They're just another object. #{ogres}"


# output


# The yaml looks like this:
# "--- !ruby/object:Ogre\nstrength: 47\nspeed: 3\n"
# It's just a boring old string: String
# ...and it's easy to change back: Ogre: [strength = 47, speed = 3]

# We can even serialize arrays! They're just another object. [#<Ogre:0x0000561b4c6fadc0 @strength=62, @speed=12>, #<Ogre:0x0000561b4c6fad98 @strength=66, @speed=37>]
