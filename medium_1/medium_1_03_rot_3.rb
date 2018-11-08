def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join
end

def max_rotation(int)
  n = int.to_s.size
  rot_str = int.to_s
  new_str = ''
  
  while n > 0
    rot_str = rotate_rightmost_digits(rot_str, n)
    new_str << rot_str[-n]
    n -= 1
    rot_str = rot_str[-n..-1]
  end
  
  new_str.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845