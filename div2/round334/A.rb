m = []
w = []
h = []
m = gets.split.map(&:to_i)
w = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

tmp = 0
5.times do |v|
    ms = 500*(v+1)
    ma = 0.3*ms
    mt = (1-m[v]/250.0)*ms - 50*w[v]
    if ma < mt
        tmp += mt
    else
        tmp += ma
    end
end
tmp += (100*h[0] - 50*h[1])
puts tmp.to_i