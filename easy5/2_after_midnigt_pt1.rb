# too much hack and slack, redo please

require 'pry'

def time_of_day(number)
  hour, minute = number.divmod(60)
  if hour > 24
    hour = hour / 24
  elsif hour < 24 && hour >= 0 
    hour
  elsif hour < -24 
    multiplier = -hour / 24 + 1
    hour = (24 * multiplier) + hour
  else
    hour = 24 + hour
  end
  "#{format('%02d', hour)}:#{format('%02d', minute)}"
end


p time_of_day(0)  == "00:00"
p time_of_day(-3)  == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800)  == "13:20"
p time_of_day(-4231) == "01:29"
p time_of_day(-60) == "23:00"
p time_of_day(60) == "01:00"