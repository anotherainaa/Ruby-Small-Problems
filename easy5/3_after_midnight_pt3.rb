# too much hack and slack, redo please

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

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0