def reverse_sentence(str)
  rev_words = []
  str.split.reverse_each { |word| rev_words << word }
  rev_words.join(' ')
end

def reverse_sentence2(str)
  rev_words = []
  words = str.split
  i = 1
  until i > words.size
    rev_words << words[-i]
    i += 1
  end
  rev_words.join(' ')
end

puts reverse_sentence2('') == ''
puts reverse_sentence2('Hello World') == 'World Hello'
puts reverse_sentence2('Reverse these words') == 'words these Reverse'