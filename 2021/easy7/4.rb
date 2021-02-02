# Approach
# str.chars, for each character,
# if character is upcase, downcase
# if character is down case, upcase

def swapcase(str)
  results = ''
  str.chars do |char|
    if char.upcase == char
      results << char.downcase
    else
      results << char.upcase
    end
  end
  results
end

def swapcase(str)
  results = ''
  str.chars do |char|
    if char =~ /[A-Z]/
      results << char.downcase
    elsif char =~ /[a-z]/
      results << char.upcase
    else
      results << char
    end
  end
  results
end

p swapcase('CamelCase') #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'