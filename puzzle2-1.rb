#!/usr/bin/env ruby
total = 0
ARGF.each_line do |e|
    elf, me = e.split(/ /)
    
    elf = elf.ord - "A".ord
    me = me.ord - "X".ord

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
