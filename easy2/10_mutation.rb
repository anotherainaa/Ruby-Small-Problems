# What will the following code print, and why? 

# array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# array2 = []
# array1.each { |value| array2 << value }
# array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# p array2

# => ["Moe", "Larry", "CURLY", "SHEMP", "Harpo", "CHICO", "Groucho", "Zeppo"]

# while the two arrays are pointing to two different objects, 
# when the value is pushed into array2 #<< method is used. 
# #<< method pushes the reference to the original value which means the elements 
# inside array 1 and array2 are referencing the same object 
# Therefore any changes that is applied to array2 is also applied to array1

# In other to ensure that array2 does not impact array1 and vice versa, #clone can be used

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value.clone }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
p array2

# Other interesting solutions
# using #map on array1 when upcase

array1 = array1.map do |value| 
  value.start_with?('C', 'S') ? value.upcase : value
end

# The answer lies in the fact that the first each loop simply copies a bunch of references from array1 to array2. When that first loop completes, both arrays not only contain the same values, they contain the same String objects. If you modify one of those Strings, that modification will show up in both Arrays.