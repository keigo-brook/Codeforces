l, r, k = gets.split.map(&:to_i)
if r < k
  puts -1
else
  t = 1
  while t < l
    t *= k
  end
  while t <= r
    print "#{t} "
    t *= k
  end
  puts ""
end
