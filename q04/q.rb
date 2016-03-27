class Q
  def run
    n = ARGV[0].to_i
    m = ARGV[1].to_i
    puts "n:#{n}, m:#{m}"
    stick = 1

    cnt = 0
    while n > stick
      stick = (stick < m ? stick : m) * 2 + (stick < m ? 0 : stick - m)
      cnt += 1
    end

    puts "count:#{cnt}"
  end
end

q = Q.new
q.run

