def century(number)
  century_string = ''
  century_number, remainder = number.divmod(100)

  century_number += 1 if remainder > 0

  if (century_number % 100).between?(11, 13)
    century_string << century_number.to_s + 'th'
  elsif century_number % 10 == 1
    century_string << century_number.to_s + 'st'
  elsif century_number % 10 == 2
    century_string << century_number.to_s + 'nd'
  elsif century_number % 10 == 3
    century_string << century_number.to_s + 'rd'
  else
    century_string << century_number.to_s + 'th'
  end
end

# Try to simplify the above by using helper method century_suffix that adds the suffix

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
