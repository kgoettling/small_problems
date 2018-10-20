def capitalize(str)
  first_char = true
  
  str.chars.map do |chr|
    if first_char && chr =~ /[A-Za-z]/
      first_char = false
      chr.upcase
    else
      chr.downcase
    end
  end.join('')
end

def word_cap(str)
  str.split.map { |word| capitalize(word) }.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "Quoted" Word'