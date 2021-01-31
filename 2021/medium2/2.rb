=begin
Input: string
Output: Boolean, true or false
Goal: To determine whether the string passed can be spelled using the spelling blocks below. 

Rules:
- Each block can only be used once. 
- upper and lower case are not unique. 
- each block can only be used once!!!!!

- How do I want to represent the combination letter? 
- A hash? An array? 

Examples
=> Book => false because B & O is in the same block 
=> BUTCH => false 
=> BATCH => true
=> jest => true 

Data structure
??? Hash or Array and string 


- B => 
is B is within the keys? 
  => If true, check it's value and see if it's value if in the original string? 
  => B:O => does the string include O? No, ok 
is U is within the keys? 
 => Check values and then find the key to this value. 
- U => H:U => ok => does the string include H? Yes? Not ok, return false.  

Algorithm
Ideas
- Initialise a pair_letter variable = ""
- Iterate over each letter upcase as an array(.chars), for each letter 
  - check the value of passing in letter as a key to hash
    - if truthy, assign it's value to variable pair_letter
    - if falsey, assign the key to this letter to variable pair_letter
  - then use pair_letter to determine whether pair_letter is included in the string or not
  - if true, immediately return false
- if I reach end of the method without returning true, return false. 
  

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

=end

BLOCKS = {
  "B" => "O",
  "X" => "K",   
  "D" => "Q",    
  "C" => "P", 
  "N" => "A", 
  "G" => "T",   
  "R" => "E",    
  "F" => "S",  
  "J" => "W",    
  "H" => "U", 
  "V" => "I",   
  "L" => "Y",   
  "Z" => "M"
}

# def block_word?(str)
#   pair_letter = ''
#   upcased = str.upcase
#   upcased.chars.each_with_index do |letter, index|
#     pair_letter = (BLOCKS[letter] ? BLOCKS[letter] : BLOCKS.key(letter))
#     if upcased.count(letter) > 1 || upcased.count(pair_letter) >= 1
#       return false 
#     end
#   end
#   return true
# end

def block_word?(string)
  string.upcase!
  BLOCKS.none? { |k, v| string.include?(k) && string.include?(v) }
end

# p block_word?('BATCH') == true
# p block_word?('BUTCH') # == false
# p block_word?('jest') == true
# p block_word?('book') == false
# p block_word?('true') # == false
# p block_word?('a') 
# p block_word?('an') #== false
# p block_word?('hly') #== false
p block_word?('NVVPN') #== true