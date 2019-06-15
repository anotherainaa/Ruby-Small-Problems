ALPHABET_NUMBER = %w(zero one two three four five six seven eight 
nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(array)
  array.map {|number| ALPHABET_NUMBER[number]}.sort.map {|number| ALPHABET_NUMBER.index(number)}
end

# LS Solution

def alphabetic_number_sort2(array)
  array.sort_by {|number| ALPHABET_NUMBER[number]}
end

# A simpler solution for .sort

def alphabetic_number_sort3(array)
  array.sort do |num1, num2|
    ALPHABET_NUMBER[num1] <=> ALPHABET_NUMBER[num2]
  end
end

p alphabetic_number_sort3((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]