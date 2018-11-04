def double_consonants(str)
  str.chars.map do |chr|
    if chr =~ /[A-Za-z&&[^aeiou]]/
      chr * 2
    else
      chr
    end
  end.join
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""