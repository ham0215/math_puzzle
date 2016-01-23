class Palindromic
  def run
    i = 10
    ok = false
    loop do
      s10 = i.to_s
      s2  = i.to_s(2)
      s8  = i.to_s(8)
      break if check(i.to_s) && check(i.to_s(2)) && check(i.to_s(8))
      i += 1
    end
    i
  end

  def check(target)
    a = 0
    b = target.length - 1
    loop do
      return false unless target[a] == target[b]
      a += 1
      b -= 1
      return true if a >= b
    end
  end
end

c = Palindromic.new
puts c.run

