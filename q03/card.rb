class Card
  def run
    cards = Array.new(100, true)
    (2..100).each do |i|
      index = i - 1
      while index < 100 do
        cards[index] = !cards[index]
        index += i
      end
    end
    card_numbers = []
    cards.each.with_index(1) do |card, i|
      card_numbers << i if card
    end
    puts card_numbers.join(',')
  end
end

c = Card.new
c.run

