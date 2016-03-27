class Q

  def run
    @cnt = 0
    change(1000, [500, 100, 50, 10], 15)
    puts "count:#{@cnt}"
  end

  private

  def change(target, coins, usable)
    coin = coins.shift
    if coins.size == 0
      @cnt += 1 if target / coin <= usable
    else
      (0..target/coin).each do |i|
        change(target - coin * i, coins.clone, usable - i)
      end
    end
  end
end

q = Q.new
q.run

