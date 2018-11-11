DIGIT_WORDS = { 'one' => 1, 'two' => 2, 'three' => 3,
                'four' => 4, 'five' => 5, 'six' => 6,
                'seven' => 7, 'eight' => 8, 'nine' => 9,
                'zero' => 0 }

def word_to_digit(str)
  str.split.map do |word|
    chk_word = word.gsub(/[^[:alnum:]]/, '')
    punc = word.gsub(/[[:alnum:]]/, '')
    if DIGIT_WORDS.keys.include?(chk_word) 
       DIGIT_WORDS[chk_word].to_s + punc
    else
      word
    end
  end.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'