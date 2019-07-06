def substrings_at_start(string)
  substrings = []
  counter = 0

  loop do
    break if counter == string.size
    current_word = ''
    (counter + 1).times do |n|
      current_word += string[n]
    end
    substrings << current_word

    counter += 1
  end
  substrings
end

def substrings(string)
  substrings = []
  counter = 0

  loop do
    break if counter == string.size

    current_string = string[counter..-1]
    substrings += substrings_at_start(current_string)

    counter += 1
  end
  substrings
end

def palindromes(string)
  all_substrings = substrings(string)
  all_substrings.select do |word|
    word.reverse == word if word.size > 1
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
