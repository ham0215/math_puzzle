require 'date'

class Q
  def run
    cnt = 0

    (Date.parse('1964-10-10')..Date.parse('2020-07-24')).each do |date|
      date_s    = date.strftime('%Y%m%d')
      date_s2   = date_s.to_i.to_s(2) 
      date_s2_r = date_s2.reverse
      date_s_r  = date_s2_r.to_i(2).to_s

      if date_s == date_s_r
        cnt += 1
        puts date_s
      end
    end
    puts "count: #{cnt}"
  end
end

q = Q.new
q.run

