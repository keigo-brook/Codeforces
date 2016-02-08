n = gets.to_i
a = gets.split.map(&:to_i)

a.sort!{|x, y| y <=> x }
ans = 0
odd = []
a.each do |v|
  if v % 2 == 0
    ans += v
  else
    if odd.size == 0
      odd.push(v)
    else
      ans += v + odd.shift
    end
  end
end
puts ans
