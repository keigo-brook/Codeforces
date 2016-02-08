
o = [0, 0]
n, o[0], o[1] = gets.split.map(&:to_i)

def dis(x, y, o)
  Math.sqrt((o[0] - x)*(o[0] - x) + (o[1] - y)*(o[1] - y))
end

small = 10000000
big = 0
i0, j0 = gets.split.map(&:to_i)

(n-1).times do
  i1, j1 = gets.split.map(&:to_i)

  a = dis(i0, j0, o)
  b = dis(i1, j1, o)
  if [i0, i1].min < o[0] && o[0] < [i0, i1].max || [j0, j1].min < o[1] && o[1] < [j0, j1].max
    c = Math.sqrt((i0 - i1)*(i0 - i1) + (j0 - j1)*(j0 - j1))
    s = (a + b + c)/2.0
    x = Math.sqrt(s*(s - a)*(s - b)*(s - c))/c
    if x < small
      small = x
    end
    if [a, b].max > big
      big = [a, b].max
    end
  else
    if [a, b].min < small
      small = [a, b].min
    end
    if [a, b].max > big
      big = [a, b].max
    end
  end
  i0, j0 = i1, j1
end

puts big*big*Math::PI - small*small*Math::PI
