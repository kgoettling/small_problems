def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0 
end

def calculate_bonus2(salary, bonus)
  if bonus
    salary / 2
  else
    0
  end
end

puts calculate_bonus2(2800, true) == 1400
puts calculate_bonus2(1000, false) == 0
puts calculate_bonus2(50000, true) == 25000