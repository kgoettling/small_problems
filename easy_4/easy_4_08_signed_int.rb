STR_TO_INT = { '1' => 1, '2' => 2, '3' => 3, '4' => 4,
               '5' => 5, '6' => 6, '7' => 7, '8' => 8,
               '9' => 9, '0' => 0 }

def string_to_integer(str, sign)
  int = 0
  num_place = 1
  
  str.chars.reverse_each do |num|
    int += STR_TO_INT[num] * num_place
    num_place *= 10
  end
  
  int * sign
end

def string_to_signed_integer(str)
  sign = 0
  
  case str[0]
  when '+'
    sign = 1
    str = str[1..-1]
  when '-'
    sign = -1
    str = str[1..-1]
  else
    sign = 1
  end
  
  string_to_integer(str, sign)
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100