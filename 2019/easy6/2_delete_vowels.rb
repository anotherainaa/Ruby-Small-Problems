# this solution modifies the original array

def remove_vowels(strings)
  counter = 0
  vowels = %w(A E I O U a e i o u)
  loop do
    break if counter == strings.size

    vowels.each do |vowel|
      strings[counter].delete!(vowel)
    end

    counter += 1
  end
  strings
end

a = %w(abcdefghijklmnopqrstuvwxyz)
p a.object_id

p b = remove_vowels(a)
p b.object_id
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']