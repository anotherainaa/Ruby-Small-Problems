SECONDS_PER_DAY = 60
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_IN_A_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR
require 'pry'

# This way my fist attempt at this problem.
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

# This is the revision after a long while
# Notes: I originally thought it was necessary to subtract minutes in a day
# from delta minutes when the delta minutes is a negative integer.
# However, modulo operation already corrects it correctly
# This is only applicable when using the remainder method.
# Note that you may have to read the docs on modulo definition in other languages

def time_of_day(delta_minutes)
  if delta_minutes < 0
    days, delta_minutes = delta_minutes.abs.divmod(MINUTES_IN_A_DAY)
    delta_minutes = MINUTES_IN_A_DAY - delta_minutes
    hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  else
    days, delta_minutes = delta_minutes.divmod(MINUTES_IN_A_DAY)
    hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  end

  "#{format('%02d:%02d', hours, minutes)}"
end



# Further exploration using time

def time_of_day2(delta_minutes)
  current_time = Time.now
  calculated_time = current_time + (delta_minutes * SECONDS_PER_DAY)
  calculated_time.strftime('%A %H:%M')
end

p time_of_day(60)

p time_of_day(0)  == "00:00"
p time_of_day(-3)  == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800)  == "13:20"
p time_of_day(-4231) == "01:29"
p time_of_day(-60) == "23:00"
p time_of_day(60) == "01:00"
