STR_TO_INT = { '1' => 1, '2' => 2, '3' => 3, '4' => 4,
               '5' => 5, '6' => 6, '7' => 7, '8' => 8,
               '9' => 9, '0' => 0 }

def string_to_integer(str)
  int = 0
  num_place = 1
  
  str.chars.reverse_each do |num|
    int += STR_TO_INT[num] * num_place
    num_place *= 10
  end
  
  int
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

HEX_TO_INT = { '1' => 1, '2' => 2, '3' => 3, '4' => 4,
               '5' => 5, '6' => 6, '7' => 7, '8' => 8,
               '9' => 9, '0' => 0, 'A' => 10, 'B' => 11,
               'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15 }

def hexadecimal_to_integer(hex)
  int = 0
  num_place = 1
  
  hex.chars.reverse_each do |hex_num|
    int += HEX_TO_INT[hex_num.upcase] * num_place
    num_place *= 16
  end
  
  int
end

puts hexadecimal_to_integer('4D9f') == 19871