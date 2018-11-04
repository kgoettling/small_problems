def fizzbuzz(strt_num, end_num)
  (strt_num..end_num).each do |int|
    if int % 5 == 0 && int % 3 == 0
      print 'FizzBuzz'
    elsif int % 3 == 0
      print 'Fizz'
    elsif int % 5 == 0
      print 'Buzz'
    else
      print int
    end
    
    print ', ' unless int == end_num
  end
end

fizzbuzz(1, 15)