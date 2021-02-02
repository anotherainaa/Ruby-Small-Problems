# Approach
# for each char
# first upcase
# next downcase
# rinse and repeat

def staggered_case(str)
  result = ''
  str.chars.each_with_index do |char, index|
    if index.even?
      result << char.upcase
    else
      result << char.downcase
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'