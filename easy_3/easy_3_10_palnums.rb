def palindromic_number?(int)
  int.to_s == int.to_s.reverse
end

def palindromic_number2?(int)
  div_arr = []
  check_arr = []
  
  while int > 0
    div_arr = int.divmod(10)
    check_arr << div_arr.last
    int = div_arr.first
  end
  
  p check_arr
  check_arr == check_arr.reverse
end

puts palindromic_number2?(34543) == true
puts palindromic_number2?(123210) == false
puts palindromic_number2?(22) == true
puts palindromic_number2?(5) == true