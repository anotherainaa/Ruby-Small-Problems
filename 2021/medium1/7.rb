=begin

Approach or Algorithm
- Transform only words that are integers! 

- Create a hash that returns the integer string representation of that number, for example "five" = 5
- if fetching from hash return nil then do word needs to be as is   

=end

NUMBERS = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9',
}

def word_to_digit(words)
  punctuation = %w(, . ! ?)
  result = words.split.map do |word|
    if NUMBERS[word.downcase]
      NUMBERS[word.downcase]
    elsif punctuation.include?(word.downcase[-1])
      punc = word[-1] 
      NUMBERS[word.downcase[0..-2]] ? NUMBERS[word.downcase[0..-2]] + punc : word
    else
      word
    end
  end

  p result.join(" ")
end

p word_to_digit('Please call me at five five five one two three Four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
