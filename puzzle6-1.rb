#!/usr/bin/env ruby

ARGF.each_line do |e|
    puts 4 + e.chars.each_cons(4).find_index { |l| l.uniq == l }
end

