def multiply_list(arr1, arr2)
  (0..arr1.size - 1).map { |i| arr1[i] * arr2[i] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]