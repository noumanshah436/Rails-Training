# https://www.hackerearth.com/practice/basic-programming/input-output/basics-of-input-output/practice-problems/algorithm/find-product/

# my sol:

# n = gets.to_i
# arr = gets.split.map(&:to_i)
# modulo =  10 ** 9 + 7
# result = 1

# n.times do |i|
#   result = (result * arr[i]) % modulo
# end

# puts result

# **********************

# improved code by chatgpt
n = gets.to_i
arr = gets.split.map(&:to_i)
modulo = 10**9 + 7

result = arr.inject(1) do |product, num|
  # p "product= #{product}   num=#{num}"
  (product * num) % modulo
end

puts result
