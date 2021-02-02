# Approach
# use a flag to identify which letter will be staggered. 

def staggered_case(str)
  need_upcase = true
  result = ''
  str.chars.each do |char|
    if need_upcase == true && char =~ /[a-z]/i
      result << char.upcase
      need_upcase = false
    elsif need_upcase == false && char =~ /[a-z]/i
      result << char.downcase
      need_upcase = true
    else
      result << char
    end
  end
  result
end


p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'