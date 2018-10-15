1.upto(99) do |num|
  puts num if num.even?
end

my_num = 2
49.times do
  puts my_num
  my_num += 2
end

num1 = 2
while num1 < 100
  puts num1
  num1 += 2
end

for num2 in (1..99) do
  puts num2 if num2 % 2 == 0
end

puts (1..99).select(&:even?)