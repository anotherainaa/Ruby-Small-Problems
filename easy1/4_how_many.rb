# Solution 1: using .each

def count_occurrences1(items)
  result = {}
  items.each do |item|
    item = item.downcase
    if result[item]
      result[item] += 1
    else
      result[item] = 1
    end
  end
  result.each do |k, v|
    puts "#{k} => #{v}"
  end
end

# Solution 2: Same solution in ternary operator

def count_occurrences2(items)
  result = {}
  items.each do |item|
    item = item.downcase
    result[item] ? result[item] += 1 : result[item] = 1
  end

  result.each do |k, v|
    puts "#{k} => #{v}"
  end
end

# Solution 3: LS solution using Array#count

def count_occurrences3(items)
  occurences = {}

  items.each do |item|
    occurences[item] = items.count(item)
  end

  occurences.each do |k, v|
    puts "#{k} => #{v}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences3(vehicles)

# Expected output

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
