def word_cap(words)
  words.split.map { |word| word.capitalize }.join(' ')
end

def word_cap2(words)
  words.split.map(&:capitalize).join(' ')
end

# Further exploration

def word_cap3(words)
  result = []
  counter = 0
  words_array = words.split

  loop do
    break if counter == words_array.size
    
    current_word = words_array[counter]
    result << current_word[0].upcase + current_word[1..-1].downcase

    counter += 1
  end
  result.join(' ')
end

def word_cap4(words)
  words.downcase.split.map { |word| word[0].upcase + word[1..-1] }
  .join(' ')
end

p word_cap4('four score and seven') == 'Four Score And Seven'
p word_cap4('the javaScript language') == 'The Javascript Language'
p word_cap4('this is a "quoted" word') == 'This Is A "quoted" Word'