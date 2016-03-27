class Q

  def run
    coins = [10, 50, 100, 500]
    cnt = 0
    money = 1_000
    puts "money:#{money}"

    (2..15).each do |i|
      coins.repeated_combination(i).each do |coin_set|
        if coin_set.inject(:+) == money
          puts coin_set.join(',')
          cnt += 1
        end
      end
    end
    puts "count:#{cnt}"
  end
end

q = Q.new
q.run

