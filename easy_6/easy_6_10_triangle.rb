def triangle(n)
  (1..n).each do |stars|
    puts ' ' * (n - stars) + '*' * stars
  end
end


triangle(5)
triangle(9)