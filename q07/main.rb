require 'date'

date = Date.new(1964, 10, 10)
cnt = 0

while date <= Date.new(2020, 7, 24) do
  ymd = date.strftime("%Y%m%d")
  reverse_ymd = ymd.to_i.to_s(2).reverse.to_i(2).to_s

  if ymd == reverse_ymd
    puts ymd
  end

  date += 1
end
