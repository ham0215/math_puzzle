class Q
  def run
    cnt = 0
    2.step(10000, 2).each do |i|
      n = i
      n = n * 3 + 1 if i%2 == 0

      while n != i && n != 1
        if n % 2 == 0
          n /= 2
        else
          n = n * 3 + 1
        end
      end

      cnt += 1 if n == i
    end
    puts "count: #{cnt}"
  end
end

q = Q.new
q.run

