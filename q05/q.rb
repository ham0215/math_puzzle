class Q

  def run
    money = 1_000
    puts "money:#{money}"

    cnt = 0

    0.upto(15) do |c500|
      m = money
      m -= 500 * c500
      if m == 0
        puts "500:#{c500.to_i}"
        cnt += 1
        next
      end
      0.upto(15 - c500) do |c100|
        m = money
        m -= 500 * c500
        m -= 100 * c100
        if m == 0
          puts "500:#{c500.to_i}, 100:#{c100.to_i}"
          cnt += 1
          next
        end
        0.upto(15 - c500 - c100) do |c50|
          m = money
          m -= 500 * c500
          m -= 100 * c100
          m -= 50 * c50
          if m == 0
            puts "500:#{c500.to_i}, 100:#{c100.to_i}, 50:#{c50.to_i}"
            cnt += 1
            next
          end
          0.upto(15 - c500 - c100 - c50) do |c10|
            m = money
            m -= 500 * c500
            m -= 100 * c100
            m -= 50 * c50
            m -= 10 * c10
            if m == 0
              puts "500:#{c500.to_i}, 100:#{c100.to_i}, 50:#{c50.to_i}, 10:#{c10.to_i}"
              cnt += 1
              next
            end
          end
        end
      end
    end
    puts "count:#{cnt}"
  end
end

q = Q.new
q.run

