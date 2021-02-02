=begin
Problem
- Input Integer or Float, representing the degree 
- Output, formatted to 60 degree, 60 minute 60 seconds with puntuation

Rules
- A degree: 60 minutes
- A minute: 60 seconds 
- Input always valid. 
- Use two digit number with leading zeros when formatting minutes and seconds 321°03'07"

Example:
30 =>30°00'00"
76.73 => 76°43'48"
254.6 => 254°36'00"

Data Structure
Integers and strings? 

Algorithm 
- take the given integer
- do until you get the seconds
- get the remaining of degree
  - minutes = remaining * 60
  - get the remaining of minutes
  - seconds = remaining * 60

- convert everything into the correct format. 
- add a zero to the minutes and seconds 
  - if minute or second is less than 0 , add 0 in front when returning as string


=end

DEGREE = "\xC2\xB0"

def dms(integer)
  degrees = integer.floor
  minutes = ((integer - integer.floor) * 60).round(2)
  seconds = ((minutes - minutes.floor) * 60).round

  d = degrees.to_s + DEGREE

  if minutes < 10
    m = "0" + minutes.floor.to_s + "\'" 
  else
    m = minutes.floor.to_s + "\'" 
  end

  if seconds < 10
    s = "0" + seconds.floor.to_s + "\"" 
  else
    s = seconds.to_s + "\""
  end

  "#{d}#{m}#{s}"
end

# Note: Try the further exploration 
 
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
