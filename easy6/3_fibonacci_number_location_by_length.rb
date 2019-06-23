# First attempt

def find_fibonacci_index_by_length(length)
  counter = 0
  fibonacci = [1]
  current_fibonacci = 0

  loop do
    current_fibonacci = current_fibonacci + fibonacci[counter - 1]
    fibonacci << current_fibonacci
    
    counter += 1
    break  if current_fibonacci.to_s.size >= length 
  end
  counter + 1
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
