def buy_fruit(grocery_list)
  result = []
  grocery_list.each do |list|
    fruit, quantity = list[0], list[1]
    quantity.times { result << fruit}
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
