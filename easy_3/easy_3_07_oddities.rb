# def oddities(arr)
  # new_arr = []
  
  # arr.each_with_index do |val, i| 
    # new_arr << val if i.even?
  # end
  
  # new_arr
# end

def oddities(arr)
  arr.select.with_index { |_, i| i.even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []