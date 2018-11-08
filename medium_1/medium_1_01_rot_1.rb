def rotate_array(arr)
  new_arr = arr.clone
  new_arr.push(new_arr.shift)
end

def rotate_array1(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

def rotate_string(str)
  str[1..-1] + str[0]
end

x = 'hello'
p rotate_string(x) == 'elloh'
p x == 'hello'

def rotate_int(int)
  rotate_string(int.to_s).to_i
end

y = 12345
p rotate_int(y) == 23451
p y == 12345