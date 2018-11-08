def rotate_rightmost_digits(int, n)
  int_str = int.to_s
  right_i = int_str.size - n
  
  if right_i.zero?
    static_str = ''
  else
    static_str = int_str[0...right_i]
  end
  
  rot_str = int_str[right_i..-1]
  (static_str + rot_str[1..-1] + rot_str[0]).to_i
end

def rotate_rightmost_digits1(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917