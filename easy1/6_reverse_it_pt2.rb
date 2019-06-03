# Solution 1: Iterate using Array#each with condition to
# reverse words with 5 letters above

def reverse_words(string)
  words = []
  string.split.each do |word|
    if word.length >= 5
      words << word.reverse
    else
      words << word
    end
  end
  words.join(' ')
end

# Solution 2: using Array#map

def reverse_words2(string)
  words = string.split.map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  words.join(' ')
end

# Solution 3: LS provided solution using #reverse!

def reverse_words3(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

puts reverse_words3('Professional')          # => lanoisseforP
puts reverse_words3('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words3('Launch School')         # => hcnuaL loohcS
