def leap_year?(year)
  if year % 400 == 0
    return true
  elsif year % 100 == 0
    return false
  elsif year % 4 == 0
    return true
  end
  
  false
end

CHECK_MODS = { 400 => true, 100 => false, 4 => true }

def leap_year2?(year)
  CHECK_MODS.keys.each do |mod|
    return TEST_MODS[mod] if year % mod == 0
  end
  
  false
end



puts leap_year2?(2016) == true
puts leap_year2?(2015) == false
puts leap_year2?(2100) == false
puts leap_year2?(2400) == true
puts leap_year2?(240000) == true
puts leap_year2?(240001) == false
puts leap_year2?(2000) == true
puts leap_year2?(1900) == false
puts leap_year2?(1752) == true
puts leap_year2?(1700) == false
puts leap_year2?(1) == false
puts leap_year2?(100) == false
puts leap_year2?(400) == true