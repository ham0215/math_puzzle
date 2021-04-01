op = ['+', '-', '*', '/', '']

(1000..9999).each do |i|
  str = i.to_s
  op.each do |o1|
    op.each do |o2|
      op.each do |o3|
        cal = str[0] + o1 + str[1] + o2 + str[2] + o3 + str[3]
        next if cal.length == 4

        str2 = nil
        begin
          str2 = eval(cal) rescue nil
        rescue SyntaxError => e
        end
        next unless str2

        if str == str2.to_s.reverse
          puts cal
          return
        end
      end
    end
  end
end
