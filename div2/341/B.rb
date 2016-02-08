n = gets.to_i
g = Array.new(1000) { Array.new(1000, -1) }
n.times do |v|
  a, b = gets.split.map(&:to_i)
  g[a-1][b-1] = v
end
ans = 0
m1 = 999

for s in 0..2*m1 do
  a = [0, s-m1].max
  b = [m1, s].min
  i = a
  j = s - a 
  tmp = []
  while i <= b
    tmp.push(g[i][j]) if g[i][j] != -1
    i += 1
    j -= 1
  end
  ans += tmp.combination(2).size
end

for s in (-1*m1)..m1 do 
  a = [0, (-1*s)].max
  b = [m1, (m1-s)].min
  i = a
  j = s + a 
  tmp = []
  while i <= b
    tmp.push(g[i][j]) if g[i][j] != -1
    i += 1
    j += 1
  end
  ans += tmp.combination(2).size
end
puts ans
