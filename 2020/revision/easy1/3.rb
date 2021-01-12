=begin

# Problem
- write a method that takes an intefer and returns a list of the digits in the number 

Examples
- puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
- puts digit_list(7) == [7]                     # => true
- puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
- puts digit_list(444) == [4, 4, 4]             # => true

Algorithm
- convert the integer into string
- use split to split the string by ""
- transform the array of string numbers into numbers using #to_i and return the resulting collection

=end


# def digit_list(number)
#   number.to_s.split("").map do |number|
#     number.to_i
#   end
# end

def digit_list(number)
  digits = []
  until number == 0 do 
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
  end

  digits
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

