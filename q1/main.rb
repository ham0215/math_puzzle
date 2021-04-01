n = 10

loop do
  n8 = n.to_s(8)
  n2 = n.to_s(2)
  n10 = n.to_s
  break if n10 == n10.reverse && n8 == n8.reverse && n2 == n2.reverse
  n += 1
end

puts n
puts n.to_s(8)
puts n.to_s(2)
