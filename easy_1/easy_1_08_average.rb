def average(arr)
  arr.sum / arr.count
end

def average2(arr)
  arr.reduce(:+) / arr.size
end

puts average2([1, 5, 87, 45, 8, 8]) == 25
puts average2([9, 47, 23, 95, 16, 52]) == 40