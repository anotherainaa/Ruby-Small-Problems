=begin
Approach
- starting from length 1..array.size, for each length
  - get all the chracters starting at string index 0 to length
  - insert into results array 

return results 
=end


def leading_substrings(str)
  results = []
  (1..str.size).each do |index|
    results << str[0, index]
  end 
  results
end

def leading_substrings(str)
  results = []
  (0...str.size).each do |index|
    results << str[0..index]
  end 
  results
end

p leading_substrings('abc') # == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']