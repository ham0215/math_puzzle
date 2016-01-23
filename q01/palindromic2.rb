class Palindromic
  def run
    i = 11
    ok = false
    loop do
      s10 = i.to_s
      s2  = i.to_s(2)
      s8  = i.to_s(8)
      break if check(i.to_s) && check(i.to_s(2)) && check(i.to_s(8))
      i += 2
    end
    i
  end

  def check(target)
    target == target.reverse()
  end
end

c = Palindromic.new
puts c.run

