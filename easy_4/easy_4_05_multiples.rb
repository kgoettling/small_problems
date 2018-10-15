def multisum(int)
  (1..int).select { |num| mult_3_5?(num) }.sum
end

def mult_3_5?(num)
  num % 3 == 0 || num % 5 == 0
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168