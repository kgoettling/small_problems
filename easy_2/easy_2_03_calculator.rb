class Bill
  attr_reader :price

  def initialize
    print 'What is the bill? '
    @price = gets.chomp.to_f.round(2)
  end
  
  def calc_tip
    print 'What is the tip percentage? '
    pct = gets.chomp.to_f
    pct /= 100
    tip = pct * price
    total = tip + price
    puts "\nThe tip is $#{format("%.2f",tip)}."
    puts "The total is $#{format("%.2f",total)}."
  end
end

my_bill = Bill.new
my_bill.calc_tip