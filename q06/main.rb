cnt = 0

(2..10000).each do |i|
  next if i.odd?

  j = i * 3 + 1
  loop do
    if j.even?
      j /= 2
    else
      j = j * 3 + 1
    end

    if j == i
      cnt += 1
      break
    elsif j == 1
      break
    end
  end
end

puts cnt
