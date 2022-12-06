#!/usr/bin/env ruby
total = 0

ARGF.each_line do |e|
    (left, right) = e.gsub(/-/, "..").split(/,/)

    total += 1 if eval("((#{left}).to_a-(#{right}).to_a).empty? || ((#{right}).to_a-(#{left}).to_a).empty?")
end
    
puts total
