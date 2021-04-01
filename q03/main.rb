cards = Array.new(100, false)

(2..100).each do |i|
  n = i
  while n <= 100 do
    cards[n - 1] = !cards[n - 1]
    n += i
  end
end

cards.each.with_index(1) do |card, i|
  puts i unless card
end
