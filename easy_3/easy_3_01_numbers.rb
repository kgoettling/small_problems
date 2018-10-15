numbers = ['1st', '2nd', '3rd', '4th', '5th', 'last']
i = 0 

while i < numbers.size
  puts "==> Enter the #{numbers[i]} number:"
  numbers[i] = gets.chomp.to_i
  i += 1
end

last = numbers.pop

if numbers.include?(last)
  puts "The number #{last} appears in #{numbers}."
else
  puts "The number #{last} does not appear in #{numbers}."
end