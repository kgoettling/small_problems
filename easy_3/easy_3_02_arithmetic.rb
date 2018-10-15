OPERATIONS = { :+ => '+', :- => '-', :* => '*', :/ => '/', :% => '%', :** => "**" }  

puts "==> Enter the 1st number:"
num1 = gets.chomp.to_i
puts "==> Enter the 2nd number:"
num2 = gets.chomp.to_i

OPERATIONS.each do |key, val|
  puts "#{num1} #{val} #{num2} = #{num1.send(key, num2)}"
end 