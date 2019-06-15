def crunch(string)
  result = []
  words = string.split('')
  saved_letter = words.shift
  result << saved_letter
  words.each do |word|
    if word == " "
      result << word 
    elsif word != saved_letter
      saved_letter = word
      result << saved_letter
    end
  end
  result.join
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

p crunch('aaaabbbbbbbcccccc') == 'abc'