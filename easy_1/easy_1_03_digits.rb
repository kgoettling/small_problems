def digit_list(int)
  int.to_s.split('').map { |num| num.to_i }
end

def digit_list2(int)
  i = 10
  remainder = 0
  digits = []
  until i > int * 10
    remainder = int % i
    digits.unshift(remainder / (i / 10))
    
    int -= remainder
    i *= 10
  end
  
  digits
end


puts digit_list2(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list2(7) == [7]                     # => true
puts digit_list2(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list2(444) == [4, 4, 4]             # => true