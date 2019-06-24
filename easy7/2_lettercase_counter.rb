require 'pry'

UPPERCASE = ("A".."Z").to_a
LOWERCASE = ("a".."z").to_a


def letter_case_count(strings)
  count = {
    lowercase: 0,
    uppercase: 0,
    neither: 0 
  }
  strings.chars.each do |string|
    if UPPERCASE.include?(string)
      count[:uppercase] += 1
    elsif LOWERCASE.include?(string)
      count[:lowercase] += 1
    else                                 
      count[:neither] += 1
    end
  end
  p count
end

# Try using method count next time.

p letter_case_count('abCdef 123')  == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }