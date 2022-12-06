#!/usr/bin/env ruby
total = 0

stacks = [[], [], [], [], [], [], [], [], []]

ARGF.each_line do |e|
    break if e.match?(/1/)
    e.chars.each_slice(4).with_index { |slice, index|
        stacks[index].unshift(slice[1]) if slice[1] != " "
    }
end
ARGF.each_line do |e|
    eval e.gsub(/move (.*) from (.*) to (.*)/, 'stacks[\3-1].concat stacks[\2-1].slice!(-\1, \1)')
end


puts stacks.filter {|s| !s.empty?}.map {|s| s.pop }.join
