def word_sizes1(str)
  word_counts = Hash.new(0)
  
  str.split.each do |word|
    chk_wrd = word.delete('^A-z')
    word_counts[chk_wrd.size] += 1
  end
  
  word_counts
end

def word_sizes(str)
  str.split.each_with_object({}) do |word, counts|
    chk_wrd = word.delete('^A-z')
    if counts[chk_wrd.size]
      counts[chk_wrd.size] += 1
    else
      counts[chk_wrd.size] = 1
    end
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}