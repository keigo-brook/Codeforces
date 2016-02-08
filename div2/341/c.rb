n, p = gets.split.map(&:to_i)
a = []
t = []
n.times do |i|
  t.push(i)
  a.push(gets.split.map(&:to_i))
end

ans = 0
allc = t.combination(2).size
alla = 2**n
for i in 0...alla do 
  c = []
  a.each_with_index do |v, j|
    c.push v[i[j]]
  end
  tm = c.select{ |x| x % p != 0 }
  ans += ((allc*2 - tm.combination(2).size*2)*1000.0) / alla
end
puts ans