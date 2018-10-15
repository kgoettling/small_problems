def sum(int)
  int.to_s.split('').map { |num| num.to_i }.sum
end

def sum2(int)
  sum_arr = []
  
  int.to_s.split('').each { |num| sum_arr << num.to_i }
  
  sum_arr.sum
end

puts sum2(23) == 5
puts sum2(496) == 19
puts sum2(123_456_789) == 45