def repeat(str, int)
  3.times { puts str }
end

def repeat2(str, int)
  puts "#{str}\n" * int
end

repeat('Hello', 3)
repeat2('Hello', 3)