VALID_OPERATIONS = { 's' => :+, 'p' => :* }
STR_OPERATIONS = { 's' => 'sum', 'p' => 'product' }

puts '>> Please enter an integer greater than 0:'
num = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product:"
operand = gets.chomp

loop do 
  break if VALID_OPERATIONS.keys.include?(operand)
  puts ">> That is not a valid operation."
  puts ">> Enter 's' to compute the sum, 'p' to compute the product:"
  operand = gets.chomp
end

str_op = STR_OPERATIONS[operand]
answer = (1..num).reduce(&VALID_OPERATIONS[operand])

puts "The #{str_op} of the integers between 1 and #{num} is #{answer}."