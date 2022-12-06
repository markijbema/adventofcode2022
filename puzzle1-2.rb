#!/usr/bin/env ruby -i

elf = []
total = 0
ARGF.each_line do |e|
  if e.match?(/^\s+$/)
    elf.push total
    total = 0
  else
    total += e.to_i
  end
end
elf.push total
elf.sort!
puts elf.slice(-3, 3).sum()
