def interleave(arr1, arr2)
  new_arr = []
  index = [arr1.size, arr2.size].max - 1
  
  (0..index).each do |i|
    new_arr << arr1[i] if arr1[i]
    new_arr << arr2[i] if arr2[i]
  end
  
  new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c', 'd']) == [1, 'a', 2, 'b', 3, 'c', 'd']
p interleave([], []) == []
p interleave([1, 2, 3], []) == [1, 2, 3]