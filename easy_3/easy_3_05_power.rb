class Operations
  def multiply(a, b)
    a * b
  end
  
  def square(a)
    multiply(a, a)
  end
  
  def power(a, n)
    return 1 if n == 0
    answer = a
    (n - 1).times { answer = multiply(answer, a) }
    answer
  end
end

my_operation = Operations.new
p my_operation.multiply(5, 3)
p my_operation.square(5)
p my_operation.square(-8)
p my_operation.power(3, 0)