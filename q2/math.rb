class Calc
  def run
    count = 0
    mark = ['+', '-', '*', '/', '']
    (1000..9999).each do |i|
      s = i.to_s
      s1 = s[0]
      s2 = s[1]
      s3 = s[2]
      s4 = s[3]
      rev = s.reverse
      (0..4).each do |i1|
        next if i1 == 4 && s1 == '0'
        next if i1 == 3 && s2 == '0'
        (0..4).each do |i2|
          next if i2 == 4 && s2 == '0'
          next if i2 == 3 && s3 == '0'
          (0..4).each do |i3|
            next if i1 == 4 && i2 == 4 && i3 == 4
            next if i3 == 4 && s3 == '0'
            next if i3 == 3 && s4 == '0'
            result = eval(s1 + mark[i1] + s2 + mark[i2] + s3 + mark[i3] + s4)
            if result.to_s == rev 
              count += 1
              puts s1 + mark[i1] + s2 + mark[i2] + s3 + mark[i3] + s4
              puts 'result:' + result.to_s
              puts 'rev:' + rev
            end
          end
        end
      end
    end
    count
  end
end

c = Calc.new
count = c.run
puts 'count' + count.to_s
