def cleanup(string)
  # string.gsub(/[^a-z]+/, ' ')
  string.gsub(/[^a-z]/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("---hello?") == ' hello '