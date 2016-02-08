n, k = gets.split.map(&:to_i)
ans = Array.new(n){Array.new(n)}
n2 = n*n
for i in 0...n
  for j in 0..(n - k)
    ans[i][n - 1 - j] = n2
    n2 -= 1
  end
end
a = 1
for i in 0...n
  for j in 0...(k-1)
    ans[i][j] = a 
    a += 1
  end
end
sum = 0
n.times do |i|
  sum += ans[i][k-1]
end
puts sum
n.times do |i|
  puts "#{ans[i].join(' ')}"
end