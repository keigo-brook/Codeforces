home_team_name = gets.chomp!
away_team_name = gets.chomp!
a={}
h={}
n = gets.to_i
ans = ""
n.times do
    l = gets.chomp!.split
    if l[1] == "a"
        if l[3]=="r"
            ans += "#{away_team_name} #{l[2].to_i} #{l[0].to_i}\n"
        elsif l[3] =="y"
            if a["#{l[2]}"] != nil
                ans += "#{away_team_name} #{l[2].to_i} #{l[0].to_i}\n"
            else
                a.store("#{l[2]}",l[0].to_i)
            end
        end
    elsif l[1]== "h"
        if l[3]=="r"
            ans += "#{home_team_name} #{l[2].to_i} #{l[0].to_i}\n"
        elsif l[3] == "y"
            if h["#{l[2]}"] != nil
                ans += "#{home_team_name} #{l[2].to_i} #{l[0].to_i}\n"
            else
                h.store("#{l[2]}",l[0].to_i)
            end
        end
    end
end
puts ans