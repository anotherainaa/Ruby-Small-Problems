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



p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
