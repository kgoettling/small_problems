def buy_fruit(list)
  fruits = []
  list.each do |item|
    item[1].times { fruits << item[0] }
  end
  fruits
end

def buy_fruit1(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]