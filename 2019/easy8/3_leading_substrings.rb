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

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
