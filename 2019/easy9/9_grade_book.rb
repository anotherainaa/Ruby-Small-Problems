def get_grade(score1, score2, score3)
  average_score = (score1 + score2 + score3) / 3

  if average_score >= 90
    'A'
  elsif average_score >= 80
    'B'
  elsif average_score >= 70
    'C'
  elsif average_score >= 60
    'D'
  else
    'F'
  end
end

# Using case statement

def get_grade2(score1, score2, score3)
  average_score = (score1 + score2 + score3) / 3

  case average_score
  when 90..100 then 'A'
  when 80..100 then 'B'
  when 70..100 then 'C'
  when 60..100 then 'D'
  else              'F'
  end
end

# Further exploration

def get_grade2(score1, score2, score3)
  average_score = (score1 + score2 + score3) / 3

  case average_score
  when 90..    then 'A'
  when 80..100 then 'B'
  when 70..100 then 'C'
  when 60..100 then 'D'
  else              'F'
  end
end


p get_grade2(95, 90, 93) == "A"
p get_grade2(50, 50, 95) == "D"
p get_grade2(100, 103, 105) == "A"
