def reverse!(arr)
  (0..arr.size - 1).reverse_each do |i|
    arr.push(arr[i])
    arr.delete_at(i)
  end
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!(list) # => []
p list == []