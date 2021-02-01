=begin
Problem

Input: string
Output: hash representing the percentage of each category, lowercase a-z, uppercase A-Z, neither [^A-Za-z] (numerical string are here)

Rules:
- String will always contain at least one character
- Upper case and lower case are unique, count them separately
- Get the percentage of each category. 
- spaces and numerical string count as neither 

Example
'AbCd +Ef' 
- ACE = 3.tof/ str.length * 100
- bdf = 3.tof/ str.length * 100
- "space" and "+" = 2.to_f / str.length * 100 

Data Structure
- Hash (key is symbol, value is Integer)

Algorithm 
High level
- initalise a hash
- count the number of each category and update hash values
- then, calculate the percentage and update hash values 

Algorithm
- Initalish a results hash with default value of 0 

# Consider creating a count helper method here 
- iterate over the string, for each character
  - count accordingly

# reupdate hash values to the percentages instead
- iterate over the hash, for each category 
  - count / str.length * 100
- return hash with updated values
=end

def letter_percentages(str)
  results = Hash.new(0)

  results[:lowercase] = str.count('a-z')
  results[:uppercase] = str.count('A-Z')
  results[:neither] = str.count('^A-Za-z')

  results.each do |category, count|
    results[category] = ((count.to_f / str.length) * 100).round(2)
  end
  results
end

# Improve this by separating the methods and also counts and percentages!

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI')