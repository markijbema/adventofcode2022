#!/usr/bin/env ruby
total = 0
ARGF.each_line do |e|
    elf, goal = e.split(/ /)
    
    elf = elf.ord - "A".ord
    goal = goal.ord - "X".ord
    me = case goal.ord
        when 0
            (elf + 2) % 3
        when 1
            elf
        else
            (elf + 1) % 3
        end

    score = me + 1 +
        case elf
        when me
            3
        when (me + 1) % 3
            0
        else
            6
        end
    puts "#{e.chomp} -> #{elf} #{me} -> #{score}"
    total += score
end

    
puts total
