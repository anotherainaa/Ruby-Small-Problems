require 'pry'

def swap(string)
  words = string.split.map do |word|
    first = word[0]
    word[0] = word[-1]
    word[-1] = first
    word
  end
  words.join(' ')
end

# LS Solution
# Refactor using a helper method and parallel assignment

def swap_first_last_character(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  words.split.map do |word|
    swap_first_last_character(word)
  end
  .join(' ')
end

p swap('Oh what a wonderful day it is')  == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'