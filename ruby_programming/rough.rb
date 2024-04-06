N, L, R = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)


count = 0

(0...N).each do |i|
  (i+1...N).each do |j|
    sum = arr[i] + arr[j]
     if sum >= L && sum <= R && (arr[i] ^ arr[j]).odd?
       count += 1
    end
  end
end

puts count
