def change_case(s)
  s.each_char.map { |char|
      # Toggle case using XOR with 32
      if ('a'..'z').include?(char)
          char.ord ^ 32
      elsif ('A'..'Z').include?(char)
          char.ord ^ 32
      else
          char
      end
  }.map(&:chr).join
end

str = gets.chomp
puts change_case(str)
