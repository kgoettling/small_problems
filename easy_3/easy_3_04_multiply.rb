def multiply(a, b)
  a * b
end

puts multiply(5, 3) == 15

class Operations
  def multiply(a, b)
    a * b
  end
end

my_operation = Operations.new
p my_operation.multiply(5, 3)