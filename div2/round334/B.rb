n, k = gets.split.map(&:to_i)
s = gets.split.map(&:to_i)

max = 0

single = n - k - 1
if n/k == 2
    max = s[0] + s[-1]
elsif k == 1
    max = s.inject(:+)
elsif single < 0
    max = s.pop
else
    max = s.pop
    single.times do 
        s.pop
    end
    if single == 0
        aaa = s[0] + s[1]
        ac = [aaa, s[-1]].max
        bb = s[0] + s[-1]
        tt = [ac, bb].min
        if tt > max
            max = tt
        end
    else
        while s.length > 1
            tmp = s.shift + s.pop
            if max < tmp
                max = tmp
            end
        end
        
    end
end
puts max