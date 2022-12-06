#!/usr/bin/env ruby
total = 0

regex = Regexp.new("([a-zA-Z])")

ARGF.each_line do |e|
    double = e.scan(regex).flatten.uniq.join
    if double.length == 1
        cnt = double.ord <= 'Z'.ord ? 27 + double.ord - 'A'.ord : 1 + double.ord - 'a'.ord
        total += cnt
        regex = Regexp.new("([a-zA-Z])")
    else
        regex = Regexp.new("([#{double}])")
    end
end
    
puts total
