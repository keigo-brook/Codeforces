n, m = gets.split.map(&:to_i)

a = Array.new(m, 0)

n.times do
  x = gets.split.map(&:to_i)
  x.shift
  x.each do |v|
    a[v - 1] = 1
  end
end

if a.include?(0)
  puts 'NO'
else
  puts 'YES'
end