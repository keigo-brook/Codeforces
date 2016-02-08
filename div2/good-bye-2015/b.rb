n = gets.split.map(&:to_i)
b = 2
t = b - 1
ans = 0
for i in n[0]..n[1] do
  while t < i
    b *= 2
    t = b - 1
  end

  tt = i ^ t
  if tt & (tt - 1) == 0
    ans += 1
    if tt == 1
      break
    end
  end
end

puts ans
