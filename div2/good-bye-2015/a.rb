n = gets.split
d = n[0].to_i
if n[2] == 'month'
  if d == 31
    puts '7'
  elsif d == 30
    puts '11'
  else
    puts '12'
  end
else
  if d == 5 || d == 6
    puts '53'
  else
    puts '52'
  end
end