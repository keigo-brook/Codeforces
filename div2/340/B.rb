n = gets.to_i
a = gets.split.map(&:to_i)
unless a.include?(1)
  puts 0
  exit
end
t = 0
z = 0
c = [1]
b = 0
b = a.shift while b == 0
until a.empty?
  b = a.shift
  if b == 1
    c.push(z+1)
    z = 0
  else
    z += 1
  end
end
puts c.inject(:*)