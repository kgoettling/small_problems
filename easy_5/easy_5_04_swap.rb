def swap(str)
  str.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'