n = gets.to_i
def prime?(n)
    a = gets.split.map(&:to_i)
    if n == 1
        return 1
    end

    max = 1

    (2..n).each do |x|
        catch :out do
            if n % x == 0
                b = a.each_slice(n/x).to_a
                b.each do |v|
                    v.sort!
                end
                (b.size-1).times do |v|
                    if b[v][-1] > b[v+1][0]
                        throw :out
                    end
                end
                max = x
            end
        end
    end

    return max
end

puts prime?(n)
