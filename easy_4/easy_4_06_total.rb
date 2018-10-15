def running_total(arr)
  total = 0
  
  arr.map { |num| total += num }
end

def running_total2(arr)
  sum_arr = []
  
  arr.each_with_index do |num, i|
    if i == 0
      sum_arr << num
    else
      sum_arr << num + sum_arr[i - 1]
    end
  end
  
  sum_arr
end

puts running_total2([2, 5, 13]) == [2, 7, 20]
puts running_total2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total2([3]) == [3]
puts running_total2([]) == []