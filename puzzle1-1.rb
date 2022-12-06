#!/usr/bin/env ruby

max = 0
total = 0
ARGF.each_line do |e|
  if e.match?(/^\s+$/)
    max = max > total ? max : total
    total = 0
  else
    total += e.to_i
  end
end
max = max > total ? max : total

puts max
