=begin
Problem
- Input: array of strings
- Output: array of string without vowels

Rules
- VOWELS = aieou
- both uppercase and lowercase vowel should both be removed
- array of strings

Data Structure
Array, strings

Algorithm
- Iterate on the array of words, for each word
 - delete AEIOUaeiou
 - transform each array as per above
- return transformed array 

=end

def remove_vowels(words)
  words.map do |word|
    word.delete('AEIOUaeiou')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']