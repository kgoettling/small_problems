def count_occurrences(arr)
  hsh_counter = Hash.new(0)
  
  arr.each { |item| hsh_counter[item] += 1 }
 
  hsh_counter.each { |key, val| puts "#{key} => #{val}" }
end

def count_occurrences2(arr)
  counter = arr.each_with_object({}) { |i, hsh| hsh[i] = arr.count(i) }
  counter.each { |key, val| puts "#{key} => #{val}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences2(vehicles)