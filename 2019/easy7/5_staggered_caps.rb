def staggered_case(string)
  counter = 0
  new_string = ''
  loop do
    break if counter == string.size
    
    current_string  = string[counter]

    new_string << current_string.upcase if counter.even?
    new_string << current_string.downcase if counter.odd?

    counter += 1
  end
  new_string
end

def staggered_case2(string)
  new_string = ''
  string.chars.each_with_index do |letter, index|
    if index.even?
      new_string << letter.upcase
    else
      new_string << letter.downcase
    end
  end
  new_string
end

 p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS')  == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

