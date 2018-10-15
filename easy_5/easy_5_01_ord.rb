def ascii_value(str)
  str.chars.reduce(0) { |sum, chr| sum + chr.ord }
end

def ascii_value2(str)
  sum = 0
  
  str.chars.each do |chr|
    sum += chr.ord
  end
  
  sum
end

puts ascii_value2('Four score') == 984
puts ascii_value2('Launch School') == 1251
puts ascii_value2('a') == 97
puts ascii_value2('') == 0