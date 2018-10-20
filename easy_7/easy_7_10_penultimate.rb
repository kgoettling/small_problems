def penultimate(str)
  str.split[-2]
end

def middle_word(str, mid_split='right')
  word_arr = str.split
  mid_i = (word_arr.size / 2.0).floor
  mid_i = (word_arr.size / 2.01).floor if mid_split == 'left'
 
  word_arr.empty? ? '' : word_arr[mid_i]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'

puts middle_word('This is a test only a test') == 'test'
puts middle_word('word') == 'word'
puts middle_word('my word', 'left') == 'my'
puts middle_word('my word') == 'word'
puts middle_word('   ') == ''
puts middle_word('') == ''