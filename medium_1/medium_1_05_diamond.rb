def diamond(n)
  1.upto(n) do |stars| 
    print_line(stars, n) if stars.odd?
  end
  
  (n-1).downto(1) do |stars| 
    print_line(stars, n) if stars.odd?
  end
end

def print_line(stars, n)
  pad = (n - stars) / 2
  print "#{' ' * pad}#{'*' * stars}#{' ' * pad}\n"
end

diamond(1)
diamond(5)
diamond(9)