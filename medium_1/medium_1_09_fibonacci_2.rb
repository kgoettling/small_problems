def fibonacci(n)
  counter = 1
  fib1 = 0
  fib2 = 1
  fib = 0
  
  until counter > n
    fib = fib1 + fib2
    fib1, fib2 = fib, fib1
    counter += 1
  end
  
  fib
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501