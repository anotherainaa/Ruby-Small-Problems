# def digit_list(integer)
#   str_of_int = integer.to_s
#   array_of_int_in_str = str_of_int.split("")
#   new_array = []

#   array_of_int_in_str.each do |char|
#     new_array << char.to_i
#   end
#   new_array
# end

#refactor

def digit_list(integer)
  # array_of_int_in_str = integer.to_s.split("")
  integer.to_s.split("").map {|char| char.to_i }
  # new_array
end


p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)



puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true


