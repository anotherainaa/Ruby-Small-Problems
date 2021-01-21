=begin
Further exploration
=end


# def sequence(int)
#   results = []
#   for i in 1..int
#     results << i
#   end

#   results
# end

def sequence(int)
  (1..int).to_a
end
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]