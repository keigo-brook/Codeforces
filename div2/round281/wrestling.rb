n = gets.to_i
fp = 0
sp = 0
last = -1
n.times do
    point = gets.to_i
    if point > 0
        fp += point
        last = 0
    else
        sp += -1*point
        last = 1
    end
end
if fp > sp
    puts "first"
elsif fp < sp
    puts "second"
else
    if last == 0
        puts "first"
    elsif last == 1
        puts "second"
    end
end