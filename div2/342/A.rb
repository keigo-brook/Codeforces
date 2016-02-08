n = gets.to_i
a = gets.to_i
b = gets.to_i
c = gets.to_i
d = b - c
if a <= b - c || n < c
  puts n / a
else
  ans = (n - b)/ d
  n -= d * ans
  if n == b
    ans += 1
    n -= d 
  end
  if n > 0
    ans += n / a 
  elsif n < 0
    ans -= 1
  end
  puts ans
end