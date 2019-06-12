# My first solution

def leap_year2?(year)
  if year % 4 == 0 && year % 100 == 0 && year % 400 == 0
    true
  elsif year % 4 == 0 && year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

# LS Solution
# Note that it wasn't necessary to AND all the conditions because the order represents the conditions already

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

# Further exploration
# Turn the other way around

def leap_year4?(year)
  if year % 4 == 0
    if year % 100 == 0 
      if year % 400 == 0
        true
      else 
        false
      end
    else
      true
    end
  else
    false
  end
end


p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true