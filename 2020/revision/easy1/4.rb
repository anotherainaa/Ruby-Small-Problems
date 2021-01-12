vehicles = [
  'car', 'car', 'truck', 'car', 'suv', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# def count_occurrences(vehicles)
#   count = Hash.new(0)
#   vehicles.each do |vehicle|
#     count[vehicle] += 1
#   end

#   count.each do |key, value|
#     puts "#{key} => #{value}"
#   end
# end

# def count_occurrences(collection)
#   count = collection.each_with_object(Hash.new(0)) do |element, hash|
#     hash[element] += 1
#   end

#   count.each do |key, value|
#     puts "#{key} => #{value}"
#   end
# end

# def count_occurrences(collection)
#   occurences = collection.map(&:downcase).uniq.each_with_object({}) do |element, hash|
#     hash[element] = collection.map(&:downcase).count(element)
#   end

#   occurences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

def count_occurrences(collection)
  occurences = collection.map(&:downcase).each_with_object(Hash.new(0)) do |element, hash|
    hash[element] += 1
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurrences(vehicles)


