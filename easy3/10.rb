# def palindrome?(words)
#   words.reverse == words
# end

# def palindromic_number?(number)
#   palindrome?(number.to_s)
# end


# p palindromic_number?(34543) == true
# p palindromic_number?(123210) == false
# p palindromic_number?(22) == true
# p palindromic_number?(5) == true


## Note that below only works on 2.4 and above.

# def palindromic_number?(num)
#   num.digits == num.digits.reverse
# end


p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
