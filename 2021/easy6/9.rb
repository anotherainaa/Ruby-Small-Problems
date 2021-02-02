# Algorithm 
# using the given, integer, go through the array, and see if anything of equal value is in it
# if we iterate through array and do not find anything, return false

def include?(array, serach_value)
  array.each do |element|
    return true if element == serach_value
  end
  return false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false