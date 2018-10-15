INTEGERS = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
             6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0' } 

def integer_to_string(int)
  return '0' if int == 0
  str = ''
  
  until int == 0
    int, digit = int.divmod(10)
    str.prepend(INTEGERS[digit])
  end
  
  str
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'