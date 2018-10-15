def stringy(int, start_num=0)
stringy = ''
num = start_num

while int > 0
  stringy << num.to_s
  num == 1 ? num = 0 : num = 1
  int -= 1
end

stringy
end

def stringy2(int)
  stringy = ''
  num = 1
  
  int.times do
    stringy << num.to_s
    num == 1 ? num = 0 : num = 1
    int -= 1
  end
  
  stringy
end

puts stringy2(6) == '101010'
puts stringy2(9) == '101010101'
puts stringy2(4) == '1010'
puts stringy2(7) == '1010101'