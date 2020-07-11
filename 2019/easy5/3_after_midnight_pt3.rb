HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR
SECONDS_PER_MINUTE = 60

def after_midnight(string)
  array = string.split(':')
  return 0 if array[0].to_i == 24
  hours = array[0].to_i * 60
  minutes = array[1].to_i
  total = hours + minutes
end

def before_midnight(string)
  array = string.split(':')
  return 0 if array[0].to_i == 24 || array[0].to_i == 0
  total = 24 * 60 - after_midnight(string)
end

# This was my second attempt during revision weeks later
# The problem solving approach did not change much.
# I only used LS solution as reference to keep the code more readable
# compared to my first attempt which is slight harder to read if coming in cold


def after_midnight2(time)
  hours, minutes = time.split(':')
  delta_minutes = hours.to_i * MINUTES_PER_HOUR + minutes.to_i
  return 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

def before_midnight2(time)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time)
  return 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

# Further exploration
# Use Date or Time class

def before_midnight3(time)
  current_time = Time.parse("24:00")
  delta_minutes = (current_time - Time.parse(time)) / 60
  delta_minutes % MINUTES_PER_DAY
end

def after_midnight3(time)
  delta_minutes = MINUTES_PER_DAY - before_midnight(time)
  delta_minutes % MINUTES_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
