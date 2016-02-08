d1, d2, d3 = gets.split.map(&:to_i)

min = d1 + d2 + d3

tmp = (d1 + d2)*2
if min > tmp
    min = tmp
end
tmp = d1*2 + d3*2
if min > tmp
    min = tmp
end
tmp = d3*2 + d2*2
if min > tmp
    min = tmp
end

puts min

