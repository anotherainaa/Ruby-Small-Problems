
=begin

- iterate through string, for each index 
  - iterate through length of 1..array.size - index, for each length
    - insert into results sliced string starting at index 0 with current length
- return results. 

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

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]