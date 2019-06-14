require 'pry'

def swap(string)
  words = string.split(' ').map do |word|
    first = word[0]
    word[0] = word[-1]
    word[-1] = first
    word
  end
  words.join(' ')
end

p swap('Oh what a wonderful day it is')  == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'