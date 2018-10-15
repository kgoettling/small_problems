def word_sizes(str)
  word_counts = Hash.new(0)
  
  str.split.each { |word| word_counts[word.size] += 1 }
  
  word_counts
end

def word_sizes2(str)
  str.split.each_with_object({}) do |word, counts|
    if counts[word.size] 
      counts[word.size] += 1
    else
      counts[word.size] = 1
    end
  end
end

p word_sizes2('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes2('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes2("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes2('') == {}