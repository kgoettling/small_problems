def crunch(str)
  last_chr = ''
  
  str.chars.map do |chr|
    last_chr == chr ? '' : last_chr = chr
  end.join
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''