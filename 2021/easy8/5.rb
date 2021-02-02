=begin

Approach
- results = []
- find all substrings
- iterate through substrings, for each substring
  - check if the substring is a palindrome?
  - if true, push into results 
- return results 

palindrome? 
return false if str.size is smaller than 1. 

reversed string is same as given string? true: false
=end

def substrings(str)
  results = []
  str.chars.each_index do |index|
    1.upto(str.size - index) do |length|
      results << str[index, length]
    end
  end
  results
end

def palindrome?(str)
  return false if str.size <= 1
  str.reverse == str ? true : false
end

def palindromes(str)
  results = []
  substrs = substrings(str)
  substrs.each do |substr|
    results << substr if palindrome?(substr)
  end
  results
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