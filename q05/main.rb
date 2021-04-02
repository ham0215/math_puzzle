n = 15
m = 1000
cnt = 0

(0..2).each do |i|
  (0..10).each do |j|
    (0..15).each do |k|
      (0..15).each do |l|
        next if i + j + k + l > n

        if i * 500 + j * 100 + k * 50 + l * 10 == m
          puts "#{i} * 500 + #{j} * 100 + #{k} * 50 + #{l} * 10"
          cnt += 1
        end
      end
    end
  end
end

puts "count: #{cnt}"
