def crunch(string)
  result = []
  words = string.split('')

  saved_letter = words.shift
  result << saved_letter

  words.each do |word|
    if word == " "
      result << word
    elsif word != saved_letter
      saved_letter = word
      result << saved_letter
    end
  end
  result.join
end

=begin
The second time around, I tried to break down the algorith the way LS provided
the solution.

After reading the further exploration part, these are revision that I'd like
to try the next revision around :
- Using #each_with_object
- refactoring my original solution which should probably be like this:
Insert the character if it is not the same with the last inserted character
- Find regex solution to this
- Any other method of solving this problem?


=end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

p crunch('aaaabbbbbbbcccccc') == 'abc'
