#!/usr/bin/env ruby

ARGF.each_line do |e|
    puts 14 + e.chars.each_cons(14).find_index { |l| l.uniq == l }
end

