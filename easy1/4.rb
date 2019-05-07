# def count_occurrences(items)
#   result = {}
#   items.each do |item|
#   if result[item].nil?
#     result[item] = 1
#   else
#     result[item] += 1
#   end
#   end
#   result
# end

def count_occurrences(items)
  result = {}
  items.each do |item|
    result[item].nil? ? result[item] = 1 : result[item] += 1
  end

  result.each do |k, v|
    puts "#{k} => #{v}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# Expected output

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
