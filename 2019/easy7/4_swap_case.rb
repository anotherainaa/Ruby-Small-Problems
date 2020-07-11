UPCASE = ("A".."Z").to_a

def swapcase(words)
  words.chars.map do |letter|
    if UPCASE.include?(letter)
      letter.downcase
    else
      letter.upcase
    end 
  end
  .join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'