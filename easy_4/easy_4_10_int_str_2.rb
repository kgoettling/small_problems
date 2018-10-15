INTEGERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'] 

def integer_to_string(int)
  return '0' if int == 0
  str = ''
  
  until int == 0
    int, digit = int.divmod(10)
    str.prepend(INTEGERS[digit])
  end
  
  str
end

def signed_integer_to_string(int)
  int > 0 ? sign = '+' : sign = '-'
  sign = '' if int == 0
  
  integer_to_string(int.abs).prepend(sign)
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'