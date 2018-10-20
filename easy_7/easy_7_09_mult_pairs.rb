def multiply_all_pairs(arr1, arr2)
  arr1.map { |n1| arr2.map { |n2| n1 * n2 } }.flatten.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]