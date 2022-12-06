#!/usr/bin/env ruby
total = 0

ARGF.each_line do |e|
    (left, right) = e.chars.each_slice(e.length/2).map(&:join)
    double = left.match(Regexp.new("([#{right}])")).to_s
    cnt = double.ord <= 'Z'.ord ? 27 + double.ord - 'A'.ord : 1 + double.ord - 'a'.ord
    total += cnt
end
    
puts total
