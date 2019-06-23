DEGREE = "\xC2\xB0"

def dms(number)
  degree = number.floor
  minute = (number - degree) * 60
  second = ((minute - minute.floor) * 60).round
  
  if second >= 60 
    second = second - 60
    minute += 1
  end

  degree.to_s + DEGREE + format('%02d', minute).to_s + "'" + format('%02d', second).to_s + '"'
end


puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6)  == %(254°36'00")

p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")