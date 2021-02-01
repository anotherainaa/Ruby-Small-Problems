require 'date'
=begin
Problem
Input: Integer representing year
Output: Integer representing the number of Friday 13ths

Rules
- year are always greater than 1752 - gregorian calendar
- reutrn the number of friday the 13th in a year.

Example
2015 => 3 Fridays
1986 => 1
2019 => 2

Data Structure
- dates?????  

weeks in a year 52 - within 52 ish fridays how many are on the 13th? 
- how do I know what day is the first of the year. 

Algorithm 
Idea 1
- check all the Friday dates, count up if Friday is 13. 
- The dates for all of the Fridays in the year

Idea 2

- for each month. 1..12 of the given year
  - check what day is each 13 of the month. 
- if Friday, count + 1
 - return count

=end

def friday_13th(year)
  count = 0
  1.upto(12) do |month|
    thirteenth = Date.new(year, month, 13)
    if thirteenth.friday?
      count += 1
    end
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2