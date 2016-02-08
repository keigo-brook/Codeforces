g = gets.chomp!
a = gets.chomp!
c = 0
ans = 0
for i in 0...g.size
  if g[i] == a[c]
    c += 1
  else
    c = 0
  end
  if c == a.size
    ans += 1
    c = 0
    g[i] = "#"
  end
end
puts ans