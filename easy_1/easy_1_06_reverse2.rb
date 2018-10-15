def reverse_words(str)
new_str = []

str.split.each do |word|
  if word.size >= 5
    new_str << word.reverse
  else
    new_str << word
  end
end

new_str.join(' ')
end

def reverse_words2(str)
sub_words = str.split.select { |word| word.size >= 5 }

sub_words.each { |word| str.gsub!(word, word.reverse) }

str
end


puts reverse_words2('Professional')          # => lanoisseforP
puts reverse_words2('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words2('Launch School')         # => hcnuaL loohcS