def reversed_number1(int)
  int.to_s.reverse.to_i
end

def reversed_number(int)
  int_arr = []
  rem_int = 0
  rev_int = 0
  
  until int == 0
    int, rem_int = int.divmod(10)
    int_arr.unshift(rem_int)
  end
  
  int_arr.each_with_index do |el, i|
    rev_int += el * 10**i
  end
  
  rev_int
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1